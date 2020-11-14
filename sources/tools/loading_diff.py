
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

import sys
import random

from pathlib import Path
import numpy as np

def build_diff(screen1, screen2, min_hole=4):
	"""Cmpute a table of difference between the two screens. 
	Each difference contains:
	- the start address
	- the number of differences
	- the new bytes values

	There is no knowledge of the screen structure
	"""

	assert len(screen1) == len(screen2)
	
	previous_same = True
	error_size = None
	conflict_start = None
	diffs = []

	for current_idx, (b1, b2) in enumerate(zip(screen1, screen2)):
		current_same = b1 == b2

		if previous_same and current_same:
			pass
		elif (not previous_same) and (not current_same):
			error_size += 1
		elif previous_same and (not current_same):
			conflict_start = current_idx
			error_size = 1

		else:
			assert (not previous_same) and current_same
			diffs.append([
				conflict_start,
				error_size
			])

		previous_same = current_same

	current_idx = 1
	while current_idx < len(diffs):
		current_start = diffs[current_idx][0]
		previous_stop = diffs[current_idx-1][0] + diffs[current_idx-1][1]

		hole_size = current_start - previous_stop
		if hole_size < min_hole:
			# merge previous one with current one because the hole is small
			diffs[current_idx-1][1] += hole_size + diffs[current_idx][1]
			del diffs[current_idx]
		else:
			current_idx += 1



	return [
		[_[0], _[1], screen2[_[0]:_[0]+_[1]]]
		for _ in diffs
	]



if __name__ == "__main__":
	print("; Comparison of %s and %s " % (sys.argv[1], sys.argv[2]))
	f1 = sys.argv[1]
	f2 = sys.argv[2]

	f1 = Path(f1).read_bytes()
	f2 = Path(f2).read_bytes()

	f1 = [_ for _ in f1]
	f2 = [_ for _ in f2]
	

	diff_list = build_diff(f1, f2)
	random.shuffle(diff_list)
	for elem in diff_list:
		print ("\tdw 0x%x : db %d : db %s" % (
			elem[0]+0xc000,
			elem[1],
			",".join(["0x%x"%b for b in elem[2]])
		))
	print("\tdw 0")

