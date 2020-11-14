; This file is part of Sokoban Within.
;
; Sokoban Within is free software: you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation, either version 3 of the License, or
; (at your option) any later version.
;
; Sokoban Within is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU General Public License for more details.
;
; You should have received a copy of the GNU General Public License
; along with Sokoban Within.  If not, see <https://www.gnu.org/licenses/>.	
	
	ifndef LEVEL_MACROS__
LEVEL_MACROS__


ENTITY_EMPTY = 1

ENTITY_FLOOR = 0
ENTITY_DESTINATION = 2
DEST_BIT = 1
ENTITY_BLOC = 4 ; ALWAYS in addition of floor or destination
BLOC_BIT = 2

ENTITY_VOID = 3

ENTITY_WALL = 8
WALL_BIT = 3
ENTITY_PLAYER = 16



	macro MAP_CHECK_BLOC bloc
		assert {bloc} == ENTITY_EMPTY || {bloc} == ENTITY_BLOC || {bloc} == ENTITY_DESTINATION || {bloc} == ENTITY_FLOOR || {bloc} == ENTITY_WALL || {bloc} == ENTITY_PLAYER || {bloc} == BD || {bloc} == ENTITY_VOID
	mend
	
	;;
	; Safely produce the data for a line of the map
	macro MAP_LINE9 a, b, c, d, e, f, g, h, i
		MAP_CHECK_BLOC {a}
		MAP_CHECK_BLOC {b}
		MAP_CHECK_BLOC {c}
		MAP_CHECK_BLOC {d}
		MAP_CHECK_BLOC {e}
		MAP_CHECK_BLOC {f}
		MAP_CHECK_BLOC {g}
		MAP_CHECK_BLOC {h}
		MAP_CHECK_BLOC {i}

		db E_
		db E_

		db {a}
		db {b}
		db {c}
		db {d}
		db {e}
		db {f}
		db {g}
		db {h}
		db {i}


		db E_
	mend

	macro MAP_LINE12 a, b, c, d, e, f, g, h, i,j,k,l
		MAP_CHECK_BLOC {a}
		MAP_CHECK_BLOC {b}
		MAP_CHECK_BLOC {c}
		MAP_CHECK_BLOC {d}
		MAP_CHECK_BLOC {e}
		MAP_CHECK_BLOC {f}
		MAP_CHECK_BLOC {g}
		MAP_CHECK_BLOC {h}
		MAP_CHECK_BLOC {i}

		db {a}
		db {b}
		db {c}
		db {d}
		db {e}
		db {f}
		db {g}
		db {h}
		db {i}

		db {j}
		db {k}
		db {l}
	mend

W_ = ENTITY_WALL
F_ = ENTITY_FLOOR
B_ = ENTITY_BLOC
D_ = ENTITY_DESTINATION
E_ = ENTITY_EMPTY
P_ = ENTITY_PLAYER


V_ = ENTITY_VOID

BD = B_ + D_

	macro MAP_EMPTY_LINE
		MAP_LINE9 E_,E_,E_,E_,E_,E_,E_,E_,E_
	mend

endif