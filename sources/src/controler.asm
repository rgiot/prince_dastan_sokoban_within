
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

MENU_PLAY equ 0
MENU_CODE equ 1



// key scan stolen here http://www.cpcwiki.eu/index.php/Programming:Keyboard_scanning
keymap  ds 10  ;map with 10*8 = 80 key status bits (bit=0 key is pressed)

keyscan di              ;1 ##%%## C P C   VERSION ##%%##
        ld hl,keymap    ;3
        ld bc,#f782     ;3
        out (c),c       ;4
        ld bc,#f40e     ;3
        ld e,b          ;1
        out (c),c       ;4
        ld bc,#f6c0     ;3
        ld d,b          ;1
        out (c),c       ;4
        xor a           ;1
        out (c),a       ;4
        ld bc,#f792     ;3
        out (c),c       ;4
        ld a,#40        ;2
        ld c,#4a        ;2 43
loop    ld b,d          ;1
        out (c),a       ;4 select line
        ld b,e          ;1
        ini             ;5 read bits and write into KEYMAP
        inc a           ;1
        cp c            ;1
        jr c,loop       ;2/3 9*16+1*15=159
        ld bc,#f782     ;3
        out (c),c       ;4
        ei              ;1 8 =210 microseconds
        ret


any_key_pressed
	xor a
	ld hl, keymap
	ld b, 10
.loop
		or (hl) 
		inc hl
	djnz .loop

	or a
	ret


left_requested
	ld a, (keymap + 9) : bit 2, a : ret z
	ld a, (keymap + 1) : bit 0, a
	ret

right_requested
	ld a, (keymap + 9) : bit 3, a : ret z
	ld a, (keymap + 0) : bit 1, a
	ret

up_requested
	ld a, (keymap + 9) : bit 0, a : ret z
	ld a, (keymap + 0) : bit 0, a
	ret

down_requested
	ld a, (keymap + 9) : bit 1, a : ret z
	ld a, (keymap + 0) : bit 2, a
	ret


fire_requested
	ld a, (keymap + 9) : bit 4, a : ret z
	ld a, (keymap + 5) : bit 7, a
	ret

restart_requested
	ld a, (keymap + 6) : bit 2, a ; R
	ret

pause_requested
p_requested
	ld a, (keymap + 3) : bit 3, a
	ret

fx_requested
	ld a, (keymap + 4): bit 6, a
	ret

escape_requested
	ld a, (keymap + 8) : bit 2, a
	ret

h_requested
	ld a, (keymap+5) : bit 4, a
	ret

c_requested
	ld a, (keymap+7) : bit 6, a
	ret

k_requested
	ld a, (keymap+4) : bit 5, a
	ret


manage_left_movement
	ld a, 3 : ld (manage_generic_movement.cmp_value), a


	ld hl, (PLAYER_COORDS)
	dec h
	ld (COORDS_ONE_STEP_FURTHER), hl

	call get_address_in_map 
	ld (MAP_ADDRESS_ONE_STEP_FURTHER), hl

	ld hl, (COORDS_ONE_STEP_FURTHER) 
	dec h
	ld (COORDS_TWO_STEPS_FURTHER), hl
	call get_address_in_map 
	ld (MAP_ADDRESS_TWO_STEPS_FURTHER), hl

	ld a, DIRECTION_LEFT
	jr manage_generic_movement

manage_right_movement
	ld a, 3 : ld (manage_generic_movement.cmp_value), a


	ld hl, (PLAYER_COORDS) 
	inc h 
	ld (COORDS_ONE_STEP_FURTHER), hl
	call get_address_in_map 
	ld (MAP_ADDRESS_ONE_STEP_FURTHER), hl

	ld hl, (COORDS_ONE_STEP_FURTHER) 
	inc h
	ld (COORDS_TWO_STEPS_FURTHER), hl
	call get_address_in_map
	ld (MAP_ADDRESS_TWO_STEPS_FURTHER), hl

	ld a, DIRECTION_RIGHT
	jr manage_generic_movement


manage_up_movement
	ld a, 4 : ld (manage_generic_movement.cmp_value), a


	ld hl, (PLAYER_COORDS)
	dec l
	ld (COORDS_ONE_STEP_FURTHER), hl
	call get_address_in_map 
	ld (MAP_ADDRESS_ONE_STEP_FURTHER), hl

	ld hl, (COORDS_ONE_STEP_FURTHER) 
	dec l
	ld (COORDS_TWO_STEPS_FURTHER), hl
	call get_address_in_map
	ld (MAP_ADDRESS_TWO_STEPS_FURTHER), hl

	ld a, DIRECTION_UP
	jr manage_generic_movement

manage_down_movement

	ld a, 3 : ld (manage_generic_movement.cmp_value), a

	ld hl, (PLAYER_COORDS) 
	inc l 
	ld (COORDS_ONE_STEP_FURTHER), hl
	call get_address_in_map 
	ld (MAP_ADDRESS_ONE_STEP_FURTHER), hl

	ld hl, (COORDS_ONE_STEP_FURTHER) 
	inc l
	ld (COORDS_TWO_STEPS_FURTHER), hl
	call get_address_in_map 
	ld (MAP_ADDRESS_TWO_STEPS_FURTHER), hl

	ld a, DIRECTION_DOWN
	jr manage_generic_movement

;;
; Input
; - A player direction
manage_generic_movement

	ld (PLAYER_DIRECTION), a

	; Get entity
	ld hl, (MAP_ADDRESS_ONE_STEP_FURTHER) : ld a, (hl)

	; impossible to move if it is a wall
	bit  WALL_BIT, a : ret nz 

	; if there is no bloc, we can directly move
	bit BLOC_BIT, a : jr z, .move_player

	; cannot move if there is another bloc or a wall
	ld hl, (MAP_ADDRESS_TWO_STEPS_FURTHER) : ld a, (hl)
	bit WALL_BIT, a : jp nz, play_effect_blocked
	bit BLOC_BIT, a : jp nz, play_effect_blocked


	; delay the screen refresh when the thing to update is at the top of the screen
	
	ld a, (PLAYER_Y) 
	cp 4
.cmp_value equ $ -1
	jr nc, .eod

.delay
	halt ; : halt : halt ; XXX Best value is 3 but i breaks the rasters :( So we can allow this small bug that happens barely
	
.eod


;	ld bc, 0x7f00 : out ( c), c
	;ld bc, 0x7f45 : out ( c), c

	; move the compute_screen_addresses_of_bloc
	ld hl, (MAP_ADDRESS_ONE_STEP_FURTHER)
	ld a, ENTITY_BLOC : call remove_stuff_of_map_address
	; no need to erase the bloc; it will be replaced by the player

	ld hl, (MAP_ADDRESS_TWO_STEPS_FURTHER) 
	ld a, ENTITY_BLOC : call add_stuff_to_map_address

	ld hl, (COORDS_TWO_STEPS_FURTHER) : call draw_sprite_at



	call increases_pushes


	call play_effect_push ; eventually cancelled
	ld hl, (MAP_ADDRESS_TWO_STEPS_FURTHER) : ld a, (hl)
	bit DEST_BIT, a
	call nz, play_effect_dest

	jr .move_player_after_move_increment	
.move_player
	call increases_moves
	;call play_effect_move ; deativated ATM


.move_player_after_move_increment
	call remove_player_of_map
	; clear the screen part that contains the player
	ld hl, (PLAYER_COORDS) : call draw_sprite_at


	ld hl, (MAP_ADDRESS_ONE_STEP_FURTHER)
	ld a, ENTITY_PLAYER
	call add_stuff_to_map_address
	ld hl, (COORDS_ONE_STEP_FURTHER)
	ld (PLAYER_COORDS), hl

	call draw_sprite_at


	ld a, 6 : ld (manage_event.slower), a
	ret


manage_event

; we can wait a bit and will manage the event later
	ld a, 0
.slower equ $-1
	or a
	jr z, .really_manage_events
	dec a
	ld (.slower), a
	ret

.really_manage_events
	call keyscan

	call left_requested : jp z, manage_left_movement
	call right_requested : jp z, manage_right_movement
	call up_requested : jp z, manage_up_movement
	call down_requested : jp z, manage_down_movement

	call escape_requested : jp z, .leave_game

	call restart_requested : jp z, restart_level
	call pause_requested : jp z, manage_pause
	call fx_requested: jp z, manage_fx


.event_end
	ret


.leave_game
	call PLY_AKM_Stop
	jp LOAD

manage_fx
	ld a, (FX_ENABLED)
	xor 1
	ld (FX_ENABLED), a
	
	ret

restart_level

	call blacken_screen
	;call clear_time
	;call clear_moves
	;call clear_pushes

	ld hl, (NB_MOVES) : push hl
	ld hl, (NB_PUSHES) : push hl
	ld hl, (NB_SEC) : push hl


	call init_current_level

	pop hl : ld (NB_SEC), hl
	pop hl : ld (NB_PUSHES), hl
	pop hl : ld (NB_MOVES), hl

	call display_time
	call display_moves
	call display_pushes
	
	ret

increases_moves
	ld a, ACTION_MOVE : ld (PLAYER_LAST_ACTION), a

	ld hl, NB_MOVES
	jr bcd_increment

increases_pushes
	ld a, ACTION_PUSH : ld (PLAYER_LAST_ACTION), a

	ld hl, NB_PUSHES
	jr bcd_increment
;;
; Input:
; - HL : address of the BCD number to increment
bcd_increment
	ld a, (hl)
	cp 0x99
	jr nz, .no_overflow
.overflow
	xor a : ld (hl), a
	inc hl
	scf
.no_overflow
	ccf
	inc a
	daa
	ld (hl), a
	
	ret


