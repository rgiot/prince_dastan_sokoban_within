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

;;
; Krusty/Benediction
; july 2020

	include "levels_macros.asm"

MAP_WIDTH = 12
MAP_HEIGHT = 9


;;
; Add the player to the map
add_player_to_map
remove_player_of_map
	call get_player_address_in_map
	ld a, ENTITY_PLAYER
add_stuff_to_map_address
; - a stuff to add/remove
; - hl address in the map
remove_stuff_of_map_address
	xor (hl)
	ld (hl), a
	ret




;;
; Compute the address of the player inside the map
; Modified
; - a 
; - de
; Output
; - HL: address in the map
get_player_address_in_map
	ld hl, (PLAYER_Y); c = y; b = x
	; call get_address_in_map

; H = X L = Y
get_address_in_map
	; Get the relative address in the map
	ld a, l;

	if MAP_WIDTH == 12
		add a; x2
		add a; x4
		ld d, a
		add a; x8
		add d ; x12
	endif

	if MAP_WIDTH == 9

		add a; x2
		add a; x4
		add a; x8
		add l; x9
	endif
	add h ; < 256

	; conver it in absolute
	ld hl, CURRENT_LEVEL_MAP
	ld d, 0 : ld e, a
	add hl, de
	ret




;;
; Check if the level is finished. A level is finished when all DESTINATIONS have their bloc
is_finished
	or 0xff
	ld hl, CURRENT_LEVEL_MAP
	ld b, MAP_WIDTH * MAP_HEIGHT
.loop
		ld a, ENTITY_DESTINATION : and (hl)
		jr z, .not_a_destination
.a_destination
		ld a, ENTITY_BLOC : and (hl)
		jr z, .not_finished
.not_a_destination 

	inc hl
	djnz .loop

.finish
	xor a
	ret

.not_finished
	or 0xff
	ret