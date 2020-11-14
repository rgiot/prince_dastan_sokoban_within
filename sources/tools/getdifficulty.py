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
# 
# 

def treat(fname):
    solutions = []

    with open(fname) as f:

        while True:
            line = f.readline()
            if not line:
                break
            if line != "Solution\n":
                continue

            line =  f.readline()
            solutions.append(len(line))

    return solutions

if __name__ == "__main__":
    res = treat("solutions.sok")
    print(res)