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
draw_end_game
	call blacken_screen

	call draw_background_menus

	ld de, 0x8000 + 96*10 + 48
	ld hl, bigt
	call draw_t


.WRITTER_START equ SCREEN_CHAR_ADDRESSES_TABLE +  6*SPRITE_HEIGHT/8 

	ld iy, .eog_strings
	call display_bunch_of_strings


	ret


.eog_strings
	dw .WRITTER_START - SPRITE_HEIGHT/8 * 1,  SPRITE_WIDTH*2 + 16, STRING_EOG1 : db STRING_EOG1.size
	dw .WRITTER_START - SPRITE_HEIGHT/8 * 1 + SPRITE_HEIGHT/8*1,  SPRITE_WIDTH*2 + 20, STRING_EOG2 : db STRING_EOG2.size
	dw .WRITTER_START - SPRITE_HEIGHT/8 * 1 + SPRITE_HEIGHT/8*2,  SPRITE_WIDTH*2  , STRING_EOG3 : db STRING_EOG3.size
	dw .WRITTER_START - SPRITE_HEIGHT/8 * 1 + SPRITE_HEIGHT/8*3,  SPRITE_WIDTH*2  , STRING_EOG4 : db STRING_EOG4.size
	dw .WRITTER_START - SPRITE_HEIGHT/8 * 1 + SPRITE_HEIGHT/8*4,  SPRITE_WIDTH*2  , STRING_EOG5 : db STRING_EOG5.size
	dw .WRITTER_START - SPRITE_HEIGHT/8 * 1 + SPRITE_HEIGHT/8*5,  SPRITE_WIDTH*2  , STRING_EOG6 : db STRING_EOG6.size
	dw .WRITTER_START - SPRITE_HEIGHT/8 * 1 + SPRITE_HEIGHT/8*6, SPRITE_WIDTH*2 , STRING_EOG7 : db STRING_EOG7.size
	dw .WRITTER_START - SPRITE_HEIGHT/8 * 1 + SPRITE_HEIGHT/8*7, SPRITE_WIDTH*2 , STRING_EOG8 : db STRING_EOG8.size
	dw .WRITTER_START - SPRITE_HEIGHT/8 * 1 + SPRITE_HEIGHT/8*8, SPRITE_WIDTH*2  , STRING_WRITTER8 : db STRING_WRITTER8.size
	dw 0


manage_end_game
	call draw_end_game

	ld hl, .raster_table
	ld (manage_help_menu.selected_table), hl

	call manage_help_menu.after_drawing
	call PLAYER + 6
	jp LOAD
.raster_table
	dw unselected_raster_bar
	dw unselected_raster_bar
	dw unselected_raster_bar
	dw unselected_raster_bar
	dw unselected_raster_bar
	dw unselected_raster_bar
	dw unselected_raster_bar
	dw unselected_raster_bar
	dw unselected_raster_bar
	dw title_raster_bar