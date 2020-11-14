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
draw_credits_menu

	call  blacken_screen
	call draw_background_menus

.MENU_START equ SCREEN_CHAR_ADDRESSES_TABLE +  5*SPRITE_HEIGHT/8 



	ld iy, .credits_strings
	call display_bunch_of_strings




	ret

.credits_strings

	dw .MENU_START - SPRITE_HEIGHT/8 * 1,  SPRITE_WIDTH*2 + 2 + 15 + 3, STRING_CREDITS : db STRING_CREDITS.size
	dw .MENU_START + SPRITE_HEIGHT/8 * 0,SPRITE_WIDTH*2 +2 ,STRING_CREDITS_CODE1  : db STRING_CREDITS_CODE1.size
	dw .MENU_START + SPRITE_HEIGHT/8 * 1,SPRITE_WIDTH*2  + 35,STRING_CREDITS_CODE2 : db STRING_CREDITS_CODE2.size
	dw .MENU_START + SPRITE_HEIGHT/8 * 2,SPRITE_WIDTH*2 + 2,STRING_CREDITS_VISUAL1 : db STRING_CREDITS_VISUAL1.size
	dw .MENU_START + SPRITE_HEIGHT/8 * 3,SPRITE_WIDTH*2 + 23,STRING_CREDITS_VISUAL2 : db STRING_CREDITS_VISUAL2.size
	dw .MENU_START + SPRITE_HEIGHT/8 * 4,SPRITE_WIDTH*2 + 2,STRING_CREDITS_AUDIO1 : db STRING_CREDITS_AUDIO1.size
	dw .MENU_START + SPRITE_HEIGHT/8 * 5,SPRITE_WIDTH*2 + 23 ,STRING_CREDITS_AUDIO2 : db STRING_CREDITS_AUDIO2.size
	dw .MENU_START + SPRITE_HEIGHT/8 * 6,SPRITE_WIDTH*2 + 2,STRING_CREDITS_LEVELS1 : db STRING_CREDITS_LEVELS1.size
	dw .MENU_START + SPRITE_HEIGHT/8 * 7,SPRITE_WIDTH*2 + 15,STRING_CREDITS_LEVELS2 : db STRING_CREDITS_LEVELS2.size
	dw .MENU_START + SPRITE_HEIGHT/8 * 8,SPRITE_WIDTH*2 + 19,STRING_CREDITS_LEVELS3 : db STRING_CREDITS_LEVELS3.size
	dw 0

manage_credits_menu
	call install_music_under_interrupt

	call draw_credits_menu

	ld hl, .raster_table
	ld (manage_help_menu.selected_table), hl

	jp manage_help_menu.after_drawing

.raster_table
	dw  title_raster_bar
	dw selected_raster_bar
	dw unselected_raster_bar
	dw selected_raster_bar
	dw unselected_raster_bar
	dw selected_raster_bar
	dw unselected_raster_bar
	dw selected_raster_bar
	dw unselected_raster_bar
	dw unselected_raster_bar

