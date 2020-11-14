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

draw_code_selection_menu


	call blacken_screen
	call draw_background_menus

	ret



;;
; Display the menu selection.
; if successful: discard top of stack and ret
; otherwise ret
manage_code_selection
		call install_music_under_interrupt



	call draw_code_selection_menu
	
	ld hl, 0x0000 
	ld (INPUTED_CODE), hl
	xor a : ld (INPUTED_CODE_POS), a

	call  wait_vsync_rout


	halt
	halt
	ld hl, 0xc9fb : ld (0x38), hl

.loop
	call  wait_vsync_rout
	call lighten_screen

	ld b,0 : djnz $



	; Display the 4 chars
	ld de, (SCREEN_CHAR_ADDRESSES_TABLE +  8*SPRITE_HEIGHT/8 + 2)
	ld hl, 38
	add hl, de
	ex de, hl
	ld ix, INPUTED_CODE
	call display_4_hexa

	;halt
	halt
	halt
	di
		WAIT_CYCLES 64*2 + 30 - 64 + 2
		call font_raster_bar

		di
			call PLAYER + 3
		ei
	ei


	; Erase previous content
	FORCE_REDRAW 4, 4
	FORCE_REDRAW 5, 4
	FORCE_REDRAW 6, 4


		ld hl, SELECTED_RASTER_TABLE
	call rotate_raster_table

	ld a, 0
.delay_keys equ $-1
	inc a
	and 0b111
	ld (.delay_keys), a
	jr nz, .loop

	call keyscan

	call fire_requested : call z, .fire_pressed
	call up_requested: call z, .up_pressed
	call down_requested: call z, .down_pressed
	call escape_requested : call z, .escape_pressed


	jp .loop


.escape_pressed
	pop hl

	ld a, 1
	or a
	ret

.fire_pressed
	ld a, (INPUTED_CODE_POS)
	inc a
	cp 4 : jr z, .code_entered
	ld (INPUTED_CODE_POS), a


	ret

.code_entered
	call select_level_if_code_exists


	xor a 
	ld (INPUTED_CODE_POS), a

	jp manage_code_selection

.up_pressed
	call code_get_current_value
	inc a
	and 0b1111
	call code_set_current_value
	ret

.down_pressed
	call code_get_current_value
	dec a
	and 0b1111
	call code_set_current_value
	ret


	
code_get_current_value
	ld hl, INPUTED_CODE
	ld a, (INPUTED_CODE_POS)

	cp 0 : jr z, .right
	cp 1 : jr z, .left

	; 2 or 3
	inc hl
	cp 2 : jr z, .right
	; 3

.left
	ld a, (hl)
	and 0b11110000
	rra
	rra
	rra
	rra
	ret

.right
	ld a, (hl)
	and 0b00001111
	ret




code_set_current_value

	ld b, a

	ld hl, INPUTED_CODE
	ld a, (INPUTED_CODE_POS)

	cp 0 : jr z, .right
	cp 1 : jr z, .left

	inc hl
	cp 2 : jr z, .right

.left
	ld a, (hl)
	and 0b00001111
	rl b
	rl b
	rl b
	rl b
	or b
	ld (hl), a
	ret

.right
	ld a, (hl)
	and 0b11110000
	or b
	ld (hl), a
	ret


	
select_level_if_code_exists
	ld hl, (INPUTED_CODE)
	ld a, h
	xor l
	ld h, a
	ld (.modified), hl

	ld hl, LEVELS_LIST
	ld bc, -1
.loop

	inc bc

	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl

	ld a, e
	or d
	jr z, .not_match

	ld a, (.modified)
	cp e
	jr z, .may_match

	jr .loop

.may_match
	ld a, (.modified + 1)
	cp d
	jr nz, .loop
.match

	ld (CURRENT_LEVEL), bc
	ld sp, LOAD-2
	call blacken_screen

	jp play.leave_main_menu

.not_match
	ret
	; fda8
.modified
	dw 0