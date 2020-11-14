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

draw_help_menu

	call  blacken_screen


	call draw_background_menus

.MENU_START equ SCREEN_CHAR_ADDRESSES_TABLE +  5*SPRITE_HEIGHT/8 

	ld iy, .help_strings
	call display_bunch_of_strings
	ret

.help_strings


	dw .MENU_START - SPRITE_HEIGHT/8 * 1, SPRITE_WIDTH*2 + 2 + 20 + 3, STRING_HELP : db  STRING_HELP.size
	dw .MENU_START, SPRITE_WIDTH*2 + 2 + 15, STRING_HELP_IN_GAME, : db STRING_HELP_IN_GAME.size
	dw .MENU_START + SPRITE_HEIGHT/8 * 1, SPRITE_WIDTH*2 + 2, STRING_HELP_CURSORS : db  STRING_HELP_CURSORS.size
	dw .MENU_START + SPRITE_HEIGHT/8 * 2, SPRITE_WIDTH*2 + 2, STRING_HELP_PAUSE : db  STRING_HELP_PAUSE.size
	dw .MENU_START + SPRITE_HEIGHT/8 * 3, SPRITE_WIDTH*2 + 2, STRING_HELP_RESTART : db  STRING_HELP_RESTART.size
	dw .MENU_START + SPRITE_HEIGHT/8 * 4, SPRITE_WIDTH*2 + 2, STRING_HELP_SOUND : db  STRING_HELP_SOUND.size
	dw .MENU_START + SPRITE_HEIGHT/8 * 6, SPRITE_WIDTH*2 + 2 + 15, STRING_HELP_IN_MENU : db  STRING_HELP_IN_MENU.size
	dw .MENU_START + SPRITE_HEIGHT/8 * 7, SPRITE_WIDTH*2 + 2, STRING_HELP_ESC : db  STRING_HELP_ESC.size
	dw .MENU_START + SPRITE_HEIGHT/8 * 8, SPRITE_WIDTH*2 + 2, STRING_HELP_SPACE : db  STRING_HELP_SPACE.size
	dw 0



manage_help_menu
	call install_music_under_interrupt

	call draw_help_menu
	
	ld hl, .raster_table
	ld (manage_help_menu.selected_table), hl

.after_drawing
	
	call  wait_vsync_rout
	call lighten_screen
	halt
	halt
	ld hl, 0xc9fb : ld (0x38), hl

.loop
		call wait_vsync_rout
	call keyscan

	ld a, FONT_HEIGHT
	ld (font_raster_bar.count), a

	halt

	di

	LONG_WAIT_CYCLES 64*FONT_HEIGHT*2 + 64

	ld ix, .raster_table
.selected_table equ $-2
	ld b, 10
.ras_loop
		push bc
		WAIT_CYCLES 26 - (4+4+2+2+5+7+1) + 2
		ld l, (ix+0) : ld h, (ix+1)
		inc ix : inc ix
		ld (.method), hl
		call font_raster_bar
.method equ $ -2
		pop bc
	djnz .ras_loop

	ld a, FONT_HEIGHT + 1
	ld (font_raster_bar.count), a

	di
		call PLAYER + 3
	ei

;	call update_torches_animation => too large
	ld hl, SELECTED_RASTER_TABLE
	call rotate_raster_table

	ld a, 0
.delay_keys equ $-1
	inc a
	and 0b11
	ld (.delay_keys), a
	jp nz, .loop

	call escape_requested : jr z, .end

	call fire_requested
	jp nz, .loop
.end
	call blacken_screen

	call install_music_under_interrupt
	ret

.raster_table
	dw  title_raster_bar
	dw selected_raster_bar
	dw unselected_raster_bar
	dw unselected_raster_bar
	dw unselected_raster_bar
	dw unselected_raster_bar
	dw unselected_raster_bar
	dw selected_raster_bar
	dw unselected_raster_bar
	dw unselected_raster_bar

