#!/bin/python

# This file is part of Sokoban Within.
#
# Sokoban Within is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Sokoban Within is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Sokoban Within.  If not, see <https://www.gnu.org/licenses/>.


"""Convert sokoban text files into asm source code"""

import os
import sys
import copy
from getdifficulty import treat

MAX_WIDTH = 12
MAX_HEIGHT = 9

#CRUNCHER_DIRECTIVE = "LZEXO"
#CRUNCHER_DIRECTIVE = "LZ48"
CRUNCHER_DIRECTIVE = "LZAPU"

CODE_EMPTY = 'E'
CODE_WALL = '#'
CODE_PLAYER = '@'
CODE_PLAYER_GOAL = '+'
CODE_BOX = '$'
CODE_BOX_GOAL = '*'
CODE_GOAL = '.'
CODE_FLOOR = ' '


LUT = {
	CODE_EMPTY: 'E_',
	CODE_WALL: 'W_',
	CODE_PLAYER: 'F_',
	CODE_PLAYER_GOAL: 'D_',
	CODE_BOX: 'B_',
	CODE_BOX_GOAL: 'BD',
	CODE_GOAL: 'D_',
	CODE_FLOOR: 'F_'
}

class SokobanGrid(object):
	def convert( content, name):


		height = len(content)
		width = max(len(line) for line in content)

		nb_goals = 0


		if width > 12 or height > 9:
			sys.stderr.write("Wrong size " + str(width) + "x"  + str(height) + " for " + name + "\n")
			raise Exception()

		# fix content to be sure there is the right height
		while len(content) != MAX_HEIGHT:
			if len(content)%2:
				content.insert(0, "  ")
			else:
				content.append("  ")


		lines = []
		for (posy, line) in enumerate(content):


			nb_goals += sum([c in [CODE_BOX_GOAL, CODE_PLAYER_GOAL, CODE_GOAL] for c in line])
			(posx, converted_line) = SokobanGrid.convert_line(copy.copy(line), width)

			if posx:
				player_x = posx
				player_y = posy

			lines.append(converted_line)

		z80 = "\t%s\n" % CRUNCHER_DIRECTIVE
		z80 += ".player_y db %d\n" % player_y
		z80 += ".player_x db %d\n" % player_x
		z80 += "\n".join(lines)
		z80 += "\n\tLZCLOSE\n"

		return nb_goals, z80

	@staticmethod
	def convert_line(line, width):

		# str are immutable in python ...
		line = [c for c in line]

		# Add floor at the end of the line
		while len(line) != width:
			line.append(CODE_FLOOR)

		# Add border to reach the grid size
		while len(line) != MAX_WIDTH:
			if len(line)%2:
				line.insert(0, CODE_FLOOR)
			else:
				line.append(CODE_FLOOR)


		# Replace floor by empty symbol outside of the wall
		for i in range(len(line)):
			if line[i] == CODE_WALL: break
			if line[i] == CODE_FLOOR: line[i] = CODE_EMPTY

		for i in reversed(range(len(line))):
			if line[i] == CODE_WALL: break
			if line[i] == CODE_FLOOR: line[i] = CODE_EMPTY
			

		if CODE_PLAYER in line:
			posx =  line.index(CODE_PLAYER)
		elif CODE_PLAYER_GOAL in line:
			posx = line.index(CODE_PLAYER_GOAL)
		else:
			posx = None


		line = [LUT[c] for c in line]
		z80 = "\tMAP_LINE12 "
		z80 += ",".join(line)

		return posx, z80




def convert(fnames, start):
	"""Convert the given file"""

	levels = []

	for fname in fnames:
		difficulties = treat(fname.replace(".txt", ".sol"))

		with open(fname) as f:
			current_level = []
			for line in f.readlines():
				line = line[:-1]

				if not line: continue

				if line.startswith(";"):
					name = line[1:]
					try:
						current_difficulty = difficulties[0]
						del difficulties[0]
						goals, grid = SokobanGrid.convert(current_level, name)
						levels.append((goals, current_difficulty, grid, name))
					except Exception as e:
						sys.stderr.write("Level skipped\n" + str(e))
					current_level = []
				else:
					current_level.append(line)

		assert len(difficulties) == 0
				
	levels = sorted(levels)
	for idx, (nb_goals, diff, grid, fname) in enumerate(levels):
		level_fname = "generated/level%.3d.asm" % idx
		with open(level_fname, 'w') as f:
			f.write("include \"levels_macros.asm\" \n")
			f.write(grid)

		print("LEVEL%d incbin \"%s\" ; %d movments; %d goals; %s\n" % (start + idx, level_fname.replace(".asm", ".o"), diff, nb_goals, fname))
						




if __name__ == "__main__":
	start = int(sys.argv[1])
	fnames = sys.argv[2:]

	convert(fnames, start)