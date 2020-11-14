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

draw_main_menu

	ld hl, unselected_raster_bar
	ld (manage_main_menu.code_raster), hl
	ld (manage_main_menu.help_raster), hl
	ld (manage_main_menu.credits_raster), hl
	ld (manage_main_menu.play_raster), hl

	call manage_main_menu.get_routine_addresse
	ld de, selected_raster_bar
	ld (hl), e : inc hl : ld (hl), d

.restart

	call blacken_screen



	call draw_background_menus

.MENU_START equ SCREEN_CHAR_ADDRESSES_TABLE +  5*SPRITE_HEIGHT/8 + 3*SPRITE_HEIGHT/2/8

	ld iy, .main_strings
	call display_bunch_of_strings
	ret

.main_strings

	dw .MENU_START - 2*SPRITE_HEIGHT/8, 20 + 1, STRING_SOKOBANIA1 : db STRING_SOKOBANIA1.size
	dw .MENU_START - 2*SPRITE_HEIGHT/8, 20 + 32, STRING_SOKOBANIA2 : db STRING_SOKOBANIA2.size
	dw .MENU_START, 20 + 20, STRING_PLAY : db STRING_PLAY.size
	dw .MENU_START+ SPRITE_HEIGHT*2/8, 20 + 20, STRING_CODE : db STRING_CODE.size
	dw .MENU_START + SPRITE_HEIGHT*4/8, 20 + 20, STRING_HELP : db STRING_HELP.size
	dw .MENU_START + SPRITE_HEIGHT*6/8, 20 + 13 + 1, STRING_CREDITS : db STRING_CREDITS.size
	dw 0


manage_main_menu


	call draw_main_menu

	halt
	ld hl, 0xc9fb : ld (0x38),hl


.loop
	call wait_vsync_rout
	call keyscan
	call lighten_screen

	ld bc, 0x7f00 + 15
	out (c), c
	ld a, PEN_15
	out (c), a

	halt

	di


	LONG_WAIT_CYCLES 64*FONT_HEIGHT*3 - 64*FONT_HEIGHT/2  + 64*2 - 64
	call title_raster_bar
.logo_raster equ $-2

.STANDARD_WAIT equ 64*FONT_HEIGHT - 64 + (64 - (1+2+4+1+1+3+2)) - 16

	LONG_WAIT_CYCLES .STANDARD_WAIT
	call selected_raster_bar
.play_raster equ $-2

	LONG_WAIT_CYCLES .STANDARD_WAIT
	call unselected_raster_bar
.code_raster equ $-2


	LONG_WAIT_CYCLES .STANDARD_WAIT
	call unselected_raster_bar
.help_raster equ $-2


	LONG_WAIT_CYCLES .STANDARD_WAIT
	call unselected_raster_bar
.credits_raster equ $-2

		call PLAYER + 3

	ei

	call update_torches_animation.main
	ld hl, SELECTED_RASTER_TABLE
	call rotate_raster_table



	ld a, 0
.delay_keys equ $-1
	inc a
	and 0b11
	ld (.delay_keys), a
	jr nz, .loop


 
	call .get_routine_addresse
	ld de, unselected_raster_bar
	ld (hl), e : inc hl : ld (hl), d


	call up_requested : call z, .move_cursor_up
	call down_requested : call z, .move_cursor_down


	call .get_routine_addresse
	ld de, selected_raster_bar
	ld (hl), e : inc hl : ld (hl), d
 

	call fire_requested
	jr z, .fire

	call h_requested : jr nz, .no_h
	ld a, 2 : ld (MAIN_MENU_IDX), a : jr .fire

.no_h
	call p_requested : jr nz, .no_p
	ld a, 0 : ld (MAIN_MENU_IDX), a : jr .fire

.no_p
	call c_requested : jr nz, .no_c
	ld a, 3 : ld (MAIN_MENU_IDX), a : jr .fire

.no_c
	call k_requested : jp nz,.loop
	ld a, 1 : ld (MAIN_MENU_IDX), a ;: jr .fire

.fire
	call blacken_screen


	ld a, (MAIN_MENU_IDX)
	or a : ret z
	cp 1: call z, manage_code_selection

	ld a, (MAIN_MENU_IDX)
	cp 2: call z, manage_help_menu

	ld a, (MAIN_MENU_IDX)
	cp 3: call z, manage_credits_menu


	call install_music_under_interrupt
	jp manage_main_menu

.move_cursor_up
	ld a, (MAIN_MENU_IDX) : dec a
	cp 0xff : ret z
	ld (MAIN_MENU_IDX), a
	ret

.move_cursor_down
	ld a, (MAIN_MENU_IDX) : inc a
	cp MAIN_MENU_MAX_IDX + 1
	ret z
	ld (MAIN_MENU_IDX), a
	ret
	
.get_routine_addresse
	ld hl, .routine_table
	ld a, (MAIN_MENU_IDX)
	ld d, 0 : ld e, a
	add hl, de
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ret

.routine_table
	dw .play_raster
	dw .code_raster
	dw .help_raster
	dw .credits_raster

