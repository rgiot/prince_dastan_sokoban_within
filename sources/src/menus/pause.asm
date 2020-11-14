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
; here the music is alkready played under interrupton
manage_end_level
	call play_effect_win

	ld a, 1 : ld (display_next_code_in_menu.enabled), a
	call pause_end_common

	;ld hl, BLACK_PALETTE : call set_palette

	ret

manage_pause
	; display the menu
	xor a  : ld (display_next_code_in_menu.enabled), a
	call pause_end_common

	; clear screen

	call draw_map
	;call wait_vsync_rout
	;ld hl, NORMAL_PALETTE : call set_palette

	jp manage_event.event_end

pause_end_common
	call install_music_under_interrupt

.save_map
	ld hl, CURRENT_LEVEL_MAP
	ld de, CURRENT_LEVEL_MAP_backup
	ld bc, MAP_HEIGHT*MAP_WIDTH
	ldir

	call draw_level_cleared_screen



.loop
	call wait_vsync_rout
	ld hl, 0xc9fb : ld (0x38), hl

	call lighten_screen

	call PLAYER + 3

	halt

	di
		LONG_WAIT_CYCLES 64*32 + 64*16 + 64 * 2 + 30 - 64
		call title_raster_bar

		LONG_WAIT_CYCLES 64*8 - 3

		ld b, 3
.ras_loop
               push bc

                       LONG_WAIT_CYCLES 64*16 -32 - 64 + (64 - (1+2+4+1+1+3+2)) - 16 + 28 - 512 - 5
                       call unselected_raster_bar
               pop bc

		djnz .ras_loop

			LONG_WAIT_CYCLES 64*16 -32 - 64 + (64 - (1+2+4+1+1+3+2)) - 16 + 28 
			call selected_raster_bar


	ei

	ld hl, SELECTED_RASTER_TABLE
	call rotate_raster_table
	call update_torches_animation.pause

	call keyscan
	call escape_requested : jr z, .escape_pressed



	call fire_requested

	if ! CHECKUP
		jr nz, .loop
	endif

	call install_music_under_interrupt
	call blacken_screen

.restore_map
	ld de, CURRENT_LEVEL_MAP
	ld hl, CURRENT_LEVEL_MAP_backup
	ld bc, MAP_HEIGHT*MAP_WIDTH
	ldir


	
	ld hl, CURRENT_LEVEL_MAP : call draw_map

	ret
.escape_pressed
	ld hl, 0xc9fb : ld (0x38), hl

	call PLAYER + 6
	jp LOAD

