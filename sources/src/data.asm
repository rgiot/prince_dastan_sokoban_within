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
WAIT_TIME equ 50

MOD_BY_3
	repeat 256, I
		db I&3
	rend



FX_ENABLED db 1
PLAYER_DIRECTION db DIRECTION_UP



PLAYER_LAST_ACTION db ACTION_MOVE


ENTITY_LINE1_ADDRESS dw 0
ENTITY_LINE2_ADDRESS dw 0
ENTITY_LINE3_ADDRESS dw 0
ENTITY_LINE4_ADDRESS dw 0

	assert SPRITE_HEIGHT  == 32

PLAYER_COORDS
PLAYER_Y db 0
PLAYER_X db 0


; to not lost one byte, the main menu position is stored at the same place than the PLAYER X position
MAIN_MENU_IDX equ PLAYER_X

COORDS_ONE_STEP_FURTHER dw 0
COORDS_TWO_STEPS_FURTHER dw 0
MAP_ADDRESS_ONE_STEP_FURTHER dw 0
MAP_ADDRESS_TWO_STEPS_FURTHER dw 0

; The place to store the code is exactly the same than COORDs_ONE_STEP_FURTHER as they are not used at the same moment
INPUTED_CODE equ COORDS_ONE_STEP_FURTHER
INPUTED_CODE_POS equ COORDS_TWO_STEPS_FURTHER

NB_SEC db 0
NB_MIN db 0

NB_MOVES dw 0
NB_PUSHES dw 0

; store the id of the current level
CURRENT_LEVEL db 0
	db 0; (keep it to read it with db...)


CURRENT_BCD_LEVEL defs 4
SCREEN_CHAR_ADDRESSES_TABLE
	assert SCREEN_MAP_HEIGHT % 8 == 0
	defs 2* SCREEN_MAP_HEIGHT/8


; TODO remove that from the crunched area...
CURRENT_LEVEL_UNCRUNCH_ZONE
CURRENT_LEVEL_PLAYER_Y db 0
CURRENT_LEVEL_PLAYER_X db 0
CURRENT_LEVEL_MAP defs MAP_WIDTH * MAP_HEIGHT
CURRENT_LEVEL_MAP_backup defs MAP_WIDTH * MAP_HEIGHT
