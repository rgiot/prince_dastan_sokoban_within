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


; width in bytes
SPRITE_WIDTH equ 16/2
; height in lines
SPRITE_HEIGHT equ SPRITE_WIDTH*4

SCREEN_WIDTH equ 96
SCREEN_MAP_HEIGHT equ SPRITE_HEIGHT * MAP_HEIGHT

FONT_WIDTH equ 4
FONT_HEIGHT equ 16

 if 1
FONT_PEN equ 15 ; XXX mandatory
 else
FONT_PEN equ 0
 endif

PEN_15 equ 0x4a


;;
; Draw the map on screen
draw_map
	ld hl, CURRENT_LEVEL_MAP
	ld b, MAP_HEIGHT
.line_loop
		; draw the given line
		ld a, MAP_HEIGHT
		sub b
		ld d, a

		push bc
		call .draw_map_line
		pop bc
	djnz .line_loop
	ret

.draw_map_line
	ld e, 0
	ld b, MAP_WIDTH
.col_loop
		push bc, de
			ld a, (hl) : inc hl ; read the entity code in the map
			push hl
				call get_sprite_address
				call draw_entity_unmasked
			pop hl
		pop de, bc
		inc e ; select next column / keep same line
	djnz .col_loop
	ret



;;
; Returns the address of the sprite for the given code
; Input:
; - A: entity code
; Modified:
; - BC
; - A
; Output:
; - HL: adress of the sprite
get_sprite_address

	cp ENTITY_PLAYER
	jr z, .player_display_code

	cp ENTITY_PLAYER | ENTITY_DESTINATION
	jr z, .player_display_code


	; Compute the position within the table
	ld hl, ENTITY_TO_SPRITE
.cont
	ld b, 0 : ld c, a
	add hl, bc
	add hl, bc

	; Get the sprite address
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ret

;;
; player display code depends on several states
.player_display_code
	push bc, de

	; get the X/Y coordinates divided by three
	ld bc, MOD_BY_3
	ld de, (PLAYER_COORDS)

	ld h, 0 : ld l, e ; y/3
	add hl, bc
	ld e, (hl)

	ld h, 0 : ld l, d ; x/3
	add hl, bc
	ld d, (hl)

	ld a, e
	add a ; Y*2
	add a ; Y*4

	or d ; Y X
	ld hl, PLAYER_LAST_ACTION : or (hl) ; ACT Y X
	ld hl, PLAYER_DIRECTION : or (hl) ; DIR ACT Y X

	ld hl, PLAYER_SPRITES

	pop de, bc
	jr .cont
;;
; Draw an unmasked sprite line per line
; - HL: sprite address
; - D: column
; - E: line
; TODO
; - use gray code encoding
; - use zig-zag encoding
draw_entity_unmasked
	di

	push hl
		call compute_screen_addresses_of_bloc
		assert SPRITE_HEIGHT == 8*4
	pop hl

	ld (.backup_sp), sp
	ld (.set_sp), hl

	ld sp, 0
.set_sp equ $-2

	ld ix, .line2
	ld hl, (ENTITY_LINE1_ADDRESS) : jr .draw_char_height
.line2
	ld ix, .line3
	ld hl, (ENTITY_LINE2_ADDRESS) : jr .draw_char_height
.line3
	ld ix, .line4
	ld hl, (ENTITY_LINE3_ADDRESS) : jr .draw_char_height
.line4
	ld ix, .line5
	ld hl, (ENTITY_LINE4_ADDRESS) : jr .draw_char_height
.line5

	ld sp, 0
.backup_sp equ $-2
	ei

	ret

.draw_char_height
	repeat 8, count ; repeat for each line

		assert SPRITE_WIDTH % 2 == 0

		repeat SPRITE_WIDTH/2, col
			pop de

			if count % 2 == 1
				ld (hl), e
				inc l
				ld (hl), d

				if col != SPRITE_WIDTH/2
					inc hl
				endif

			else
				ld (hl), e
				dec l
				ld (hl), d
			
				if col != SPRITE_WIDTH/2
					dec hl
				endif
			endif

		rend

		if count == 1
			set 3, h
		endif

		if count == 2
			set 4, h
		endif

		if count == 3
			res 3, h
		endif

		if count == 4
			set 5, h
		endif

		if count == 5
			set 3, h
		endif

		if count == 6
			res 4, h
		endif

		if count == 7
			res 3, h
		endif
	rend
	jp (ix)

;;
; Draw the sprite for the given coordinates
draw_sprite_at
	push hl
		call get_address_in_map 
		ld a, (hl) : call get_sprite_address
	pop de
;	ld de, (PLAYER_COORDS) 
	REVERSE_COORDS (void)
	call draw_entity_unmasked
	ret
;;
; Compute the screen addresses for the given bloc (one per char line)
; and store them at the appropriate memory
; Input:
; - D: bloc column
; - E: bloc line
; Modified:
; - A
; - BC
; - HL
; - DE
compute_screen_addresses_of_bloc

	; Get the char line of interest 
	ld hl, SCREEN_CHAR_ADDRESSES_TABLE
	ld b, 0
	ld a, d
	add a ; x2
	add a ; x4
	ld c, a
	assert SPRITE_HEIGHT == 8*4
	add hl, bc ; right delta
	add hl, bc ; address on two bytes

	; Get the 1st address
	ld (.backup), de
		ld c, (hl) : inc hl : ld b, (hl) : inc hl
		push hl
			ld hl, bc
			call .horizontal_shift
			ld (ENTITY_LINE1_ADDRESS), hl
		pop hl

	; Get the 2nd address
	ld de, 0
.backup	equ $ -2
	ld de, (.backup)

		ld c, (hl) : inc hl : ld b, (hl) : inc hl
		push hl
			ld hl, bc
			call .horizontal_shift
			ld (ENTITY_LINE2_ADDRESS), hl
		pop hl

	; Get the 3rd address
	ld de, (.backup)

		ld c, (hl) : inc hl : ld b, (hl) : inc hl
		push hl
			ld hl, bc
			call .horizontal_shift
			ld (ENTITY_LINE3_ADDRESS), hl
		pop hl

	; Get the 4th address
	ld de, (.backup)
		ld c, (hl) : inc hl : ld b, (hl) 
		ld hl, bc
		call .horizontal_shift
		ld (ENTITY_LINE4_ADDRESS), hl

	ret

.horizontal_shift
	; Get the right position
	ld d, 0
	ld a, e
	add a ; x2
	add a ; x4
	add a ; x8 < 256
	ld e, a
	add hl, de
	assert SPRITE_WIDTH == 8

	ret

;;
; Build the table that contains the address of the first byte of each char line
; BUG -- properly manage the switch of screen
build_screen_char_table

nb_chars_in_screen1 = (0x8800-0x8000 + 0x40*2)/SCREEN_WIDTH - 3
nb_chars = SCREEN_MAP_HEIGHT/8
nb_chars_in_screen2 = nb_chars - nb_chars_in_screen1

	ld hl, 0x8000 + 0x40*2
	ld de, SCREEN_WIDTH
	ld ix, SCREEN_CHAR_ADDRESSES_TABLE
	ld b, nb_chars_in_screen1
.loop1
	push bc
		ld (ix+0), l
		ld (ix+1), h
		inc ix
		inc ix
		add hl, de
	pop bc
	djnz, .loop1


	ld hl, 0xc000
	ld b, nb_chars_in_screen2
.loop2
	push bc
		ld (ix+0), l
		ld (ix+1), h
		inc ix
		inc ix
		add hl, de
	pop bc
	djnz, .loop2

	ret


;;
; Update
; - time
; - number of moves
; - number of pushes
display_scores
	jp display_time
.display_routine equ $-2
	ret


display_time_menu

	ld de, (SCREEN_CHAR_ADDRESSES_TABLE +  6*SPRITE_HEIGHT/8 + 2*SPRITE_HEIGHT/2/8)
	ld hl, 20
	add hl, de
	ex de, hl
	ld ix, STRING_TIME
	ld b, STRING_TIME.size
	call display_string



	ld de, (SCREEN_CHAR_ADDRESSES_TABLE +  6*SPRITE_HEIGHT/8 + 2*SPRITE_HEIGHT/2/8)
	ld hl, 55 - 2
	add hl, de
	ex de, hl



	jr display_time.real



clear_time
	FORCE_REDRAW 0, 8
	FORCE_REDRAW 1, 8
	FORCE_REDRAW 2, 8
	ret

display_time


	call clear_time

	ld hl, display_moves : ld (display_scores.display_routine), hl


	ld de, (SCREEN_CHAR_ADDRESSES_TABLE + 2*((MAP_HEIGHT-2) * SPRITE_HEIGHT/8 + SPRITE_HEIGHT/8))  ;+ 2* (MAP_HEIGHT - SPRITE_HEIGHT/2)
.real


	ld hl, 6
	add hl, de
	ex de, hl



	ld a, (NB_MIN)
	BCD_HIGH (void)
	push de
	call display_number

	ld a, (NB_MIN)
	BCD_LOW (void)
	pop hl
	ld de, FONT_WIDTH
	add hl, de
	ex de, hl
	push de
	push de
	call display_number

	pop hl
	ld de, FONT_WIDTH -1
	add hl, de
	ex de, hl
	ld a, 36
	call display_number


	ld a, (NB_SEC)
	BCD_HIGH (void)
	pop hl
	ld de, FONT_WIDTH + 2
	add hl, de
	ex de, hl
	push de
	call display_number

	ld a, (NB_SEC)
	BCD_LOW (void)
	pop hl
	ld de, FONT_WIDTH
	add hl, de
	ex de, hl
	call display_number



	ret


display_moves_menu

	ld de, (SCREEN_CHAR_ADDRESSES_TABLE +  8*SPRITE_HEIGHT/8 + SPRITE_HEIGHT/8/2) 
	ld hl, 20
	add hl, de
	ex de, hl
	ld ix, STRING_MOVES
	ld b, STRING_MOVES.size
	call display_string


	ld de, (SCREEN_CHAR_ADDRESSES_TABLE +  8*SPRITE_HEIGHT/8 + SPRITE_HEIGHT/8/2) 
	ld hl, 60
	add hl, de
	ex de, hl
	
	jr display_moves.real


clear_moves
	FORCE_REDRAW 5, 8
	FORCE_REDRAW 6, 8
	FORCE_REDRAW 7, 8

	ret

display_moves

	call clear_moves


	ld hl, display_pushes : ld (display_scores.display_routine), hl


	ld de, (SCREEN_CHAR_ADDRESSES_TABLE + 2*((MAP_HEIGHT-2) * SPRITE_HEIGHT/8 + SPRITE_HEIGHT/8))  ;+ 2* (MAP_HEIGHT - SPRITE_HEIGHT/2)
	ld hl, 43
	add hl, de
	ex de, hl
.real


	ld ix, NB_MOVES
	jr display_4_digits


display_pushes_menu


	ld de, (SCREEN_CHAR_ADDRESSES_TABLE +  10*SPRITE_HEIGHT/8) 
	ld hl, 20
	add hl, de
	ex de, hl
	ld ix, STRING_PUSHES
	ld b, STRING_PUSHES.size
	call display_string



	ld de, (SCREEN_CHAR_ADDRESSES_TABLE +  10*SPRITE_HEIGHT/8) 
	ld hl, 60
	add hl, de
	ex de, hl
	
	jr display_pushes.real

clear_pushes
	FORCE_REDRAW 9, 8
	FORCE_REDRAW 10, 8
	FORCE_REDRAW 11, 8
	ret
display_pushes



	call clear_pushes


	ld hl, display_time : ld (display_scores.display_routine), hl


	ld de, (SCREEN_CHAR_ADDRESSES_TABLE + 2*((MAP_HEIGHT-2) * SPRITE_HEIGHT/8 + SPRITE_HEIGHT/8))  ;+ 2* (MAP_HEIGHT - SPRITE_HEIGHT/2)
	ld hl, 80 - 5
	add hl, de
	ex de, hl

.real



	ld ix, NB_PUSHES
	jr display_4_digits


display_4_digits
	ld a, (ix+1)
	BCD_HIGH (void)
	push de
	call display_number

	ld a, (ix+1)
	BCD_LOW (void)
	pop hl
	ld de, FONT_WIDTH
	add hl, de
.cont3
	ex de, hl
	push de
	call display_number

	ld a, (ix + 0)
	BCD_HIGH (void)

	pop hl
	ld de, FONT_WIDTH
	add hl, de
	ex de, hl
	push de
	call display_number

	ld a, (ix + 0)
	BCD_LOW (void)

	pop hl
	ld de, FONT_WIDTH
	add hl, de
	ex de, hl
	call display_number
	ret

display_3_digits
	ld a, (ix+1)
	BCD_LOW (void)
	jr display_4_digits.cont3


;;
; Input
; - IX: address of the 16 bytes number
; - DE: address
; - INPUTED_CODE_POS is used to get the number of chars to display
display_4_hexa

	ld a, (ix+0)
	and 0b00001111
	push de
		call display_number

	pop hl
	ld de, FONT_WIDTH
	add hl, de
	ex de, hl

	ld a, (INPUTED_CODE_POS)
	cp 1
	jr nc,  .go1
.nogo1
	ld a, 38
	jr .draw1
.go1
	ld a, (ix+0)
	and 0b11110000
	rra
	rra
	rra
	rra
.draw1
	push de
		call display_number
	
	pop hl
	ld de, FONT_WIDTH
	add hl, de
	ex de, hl

	ld a, (INPUTED_CODE_POS)
	cp 2
	jr  nc, .go2
.nogo2
	ld a, 38
	jr .draw2
.go2


	ld a, (ix+1)
	and 0b00001111
.draw2
	push de
		call display_number

		pop hl
	ld de, FONT_WIDTH
	add hl, de
	ex de, hl

	ld a, (INPUTED_CODE_POS)
	cp 3
	jr nc, .go3
.nogo3
	ld a, 38
	jr .draw3
.go3
	ld a, (ix+1)
	and 0b11110000
	rra
	rra
	rra
	rra
.draw3
	call display_number

	ret


display_bunch_of_strings
.loop
		ld l, (iy+0)
		ld h, (iy+1)

		ld a, l : or h : ret z

		ld e, (hl) : inc hl : ld d, (hl)

		ld l, (iy+2)
		ld h, (iy+3)
		add hl, de
		ex de, hl

		ld l, (iy+4)
		ld h, (iy+5)
		push hl
		pop ix

		ld b, (iy+6)
		call display_string

		ld bc, 7
		add iy, bc

	jr .loop


;;
; Input
; - IX: string
; - B: string size > 0
; - DE: screen address
display_string
.loop
	push bc

		ld a, (ix+0) : inc ix
		push de
			call display_number ; same code works for any char
		pop hl

		ld de, FONT_WIDTH
		add hl, de
		ex de, hl

	pop bc
	djnz .loop
	ret

;;
; Input:
; - DE: screen address
; - A: char code
display_number
	; compute font address
	ld h, 0
	ld l, a
	add hl, hl; x2
	add hl, hl; x4
	add hl, hl; x8
	add hl, hl; x16
	add hl, hl; x32 
	add hl, hl; x64
	ld bc, FONT
	add hl, bc

	push de
		call .draw_block
	pop de
	
	ex de, hl
		ld bc, SCREEN_WIDTH
		add hl, bc
	ex de, hl

.draw_block

		repeat 8, count

			assert FONT_WIDTH%2 == 0


			repeat FONT_WIDTH, col
				ld a, (de) : or (hl) : ld (de), a
				inc hl
				if col != FONT_WIDTH
					if count %2 == 1
						inc de
					else
						dec de
					endif

				endif
			rend

			if count == 1
				set 3, d
			endif

			if count == 2
				set 4, d
			endif

			if count == 3
				res 3, d
			endif

			if count == 4
				set 5, d
			endif

			if count == 5
				set 3, d
			endif

			if count == 6
				res 4, d
			endif

			if count == 7
				res 3, d
			endif
		rend





	ret

update_torches_animation

	ld a, 0
.slow_down equ $-1
	inc a
	and 1
	ld (.slow_down), a
	or a 
	ret nz



	ld a, 0
.torch_idx equ $-1
	inc a
	and 1
	ld (.torch_idx), a
	or a
	jr z, .torch2

.torch1
	ld hl, SCREEN_CHAR_ADDRESSES_TABLE +  2*SPRITE_HEIGHT/8 + 4*SPRITE_HEIGHT/2/8
.deltay1 equ $-2
	ld e, (hl) : inc hl:  ld d, (hl)
	ld hl, 16
.deltax1 equ $-2
	add hl, de
	ex de, hl

	ld a, 0
.torch1_count equ $ -1
	inc a 
	ld (.torch1_count), a
	cp 6
	jr nz, .no_loop1
	xor a
	ld (.torch1_count), a
.no_loop1

	jr .draw_torch

.torch2
	ld hl, SCREEN_CHAR_ADDRESSES_TABLE +  2*SPRITE_HEIGHT/8 + 4*SPRITE_HEIGHT/2/8
.deltay2 equ $-2
	ld e, (hl) : inc hl:  ld d, (hl)
	ld hl, 16 + 61
.deltax2 equ $-2
	add hl, de
	ex de, hl

		ld a, 2
.torch2_count equ $ -1
	inc a 
	ld (.torch2_count), a
		cp 6
	jr nz, .no_loop2
	xor a
	ld (.torch2_count), a
.no_loop2


.draw_torch



	;call random_torch

	; get torch
	ld hl, torch_table
.selected_table equ $-2
	ld c, a : ld b, 0
	add hl, bc
	add hl, bc
	ld c, (hl) : inc hl : ld b, (hl)
	ld hl, bc

	call draw_torch
	ret
.main
	ld hl, SCREEN_CHAR_ADDRESSES_TABLE +  2*SPRITE_HEIGHT/8 + 4*SPRITE_HEIGHT/2/8

	ld bc, 16 
	ld de, 16+60 
	ld ix, torch_table

	jp .setup

.pause
	ld hl, SCREEN_CHAR_ADDRESSES_TABLE +  3*SPRITE_HEIGHT/8 + 3*SPRITE_HEIGHT/2/8

	ld bc, 16  +10 +1
	ld de, 16+61 -10-1
	ld ix, torchb_table

.setup
	ld (.deltay1), hl
	ld (.deltay2), hl
	ld (.deltax1), bc
	ld (.deltax2), de
	ld (.selected_table), ix

	jp update_torches_animation

; 01, 02, 03, 04, 03, 02
torch_table
	dw TORCH1
	dw TORCH2
	dw TORCH3
	dw TORCH4
	dw TORCH3
	dw TORCH2

torchb_table
	dw TORCH1b
	dw TORCH2b
	dw TORCH3b
	dw TORCH4b
	dw TORCH3b
	dw TORCH2b

 if 0
Rand8	
	;ld	a,1		; Seed is usually 0
	;ld	b,a
	;add	a,a
	;add	a,a
	;add	a,b
	;add a, 7		; another possibility is ADD A,7
	;ld	(Rand8+1),a
	;ret

	      ld      hl,(seed_ion)
      ld      a,r
      ld      d,a
      ld      e,a
      add     hl,de
      xor     l
      add     a
      xor     h
      ld      l,a
      ld      (seed_ion),hl
      ret
seed_ion dw 0x0

random_torch
	push de
		ld a, r : ld c, a
		call Rand8
		add c
		and 4-1
		ld hl, .table
		ld d, 0 : ld e, a
		add hl, de
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ex de, hl
	pop de
	ret
.table
	dw TORCH1
	dw TORCH2
	dw TORCH3
	dw TORCH4

	 endif



;;
; Input:
; - DE: screen address
; - HL: torch sprite
draw_torch
	push de
		call .draw_block
	pop de
	
	ex de, hl
		ld bc, SCREEN_WIDTH
		add hl, bc
	ex de, hl

	push de
		call .draw_block
	pop de
	
	ex de, hl
		ld bc, SCREEN_WIDTH
		add hl, bc
	ex de, hl

.draw_block


	call .copy1
				set 3, d
	call .copy2
				set 4, d

	call .copy1

				res 3, d
	call .copy2

				set 5, d

	call .copy1

				set 3, d
	call .copy2

				res 4, d

	call .copy1

				res 3, d
	call .copy2

	ret


.copy1
			ld b, 4-1
.loop1
				ld a, (hl) : ld (de), a
				inc hl
				inc de
				djnz .loop1
				ld a, (hl) : ld (de), a
				inc hl
			ret

.copy2
			ld b, 4-1
.loop2
				ld a, (hl) : ld (de), a
				inc hl
				dec de
				djnz .loop2
				ld a, (hl) : ld (de), a
				inc hl
			ret



draw_t

	ld b, 4
.loop
	push bc
		push de
			call .draw_block
		pop de
		
		ex de, hl
			ld bc, SCREEN_WIDTH
			add hl, bc
		ex de, hl
	pop bc
	djnz .loop


.draw_block

		call .copy1
		set 3, d

		call .copy2
		set 4, d

		call .copy1
		res 3, d

		call .copy2
		set 5, d

		call .copy1
		set 3, d

		call .copy2
		res 4, d

		call .copy1
		res 3, d

		call .copy2
	ret

.copy1
			ld b, 36/2-1
.loop1
				ld a, (hl) : ld (de), a
				inc hl
				inc de
				djnz .loop1
				ld a, (hl) : ld (de), a
				inc hl
			ret

.copy2
			ld b, 36/2-1
.loop2
				ld a, (hl) : ld (de), a
				inc hl
				dec de
				djnz .loop2
				ld a, (hl) : ld (de), a
				inc hl
			ret


	; 11000000
	; 11001000
	; 11010000
	; 11011000
	; 11100000
	; 11101000
	; 11110000
	; 11111000


draw_level_cleared_screen
	call blacken_screen
	call draw_background_menus




	call display_level_value_in_menu

	call display_time_menu
	call display_moves_menu
	call display_pushes_menu

	call display_next_code_in_menu
	


	ret


display_next_code_in_menu



	ld a, 0
.enabled equ $-1
	or a
	ret z





	ld hl, LEVELS_LIST
	ld de, (CURRENT_LEVEL)
	inc de
	add hl, de : add hl, de

	ld e, (hl)
	inc hl
	ld d, (hl)
	ld a, e
	xor d
	ld d, a

	or e : jr z, .game_finished
	ld (.value), de
	ld ix, .value

	ld a, 4 : ld (INPUTED_CODE_POS), a


	ld de, (SCREEN_CHAR_ADDRESSES_TABLE +  12*SPRITE_HEIGHT/8) 
	ld hl, 47 + 2
	add hl, de
	ex de, hl
	call display_4_hexa


	ld de, (SCREEN_CHAR_ADDRESSES_TABLE +  12*SPRITE_HEIGHT/8) 
	ld hl, 30 - 2
	add hl, de
	ex de, hl
	ld ix, STRING_CREDITS_CODE1
	ld b, STRING_CREDITS_CODE1.size
	call display_string

	ret
.value dw 0

.game_finished
	ld de, (SCREEN_CHAR_ADDRESSES_TABLE +  12*SPRITE_HEIGHT/8) 
	ld hl, 33
	add hl, de
	ex de, hl
		ld ix, STRING_END
	ld b, STRING_END.size
	call display_string

	ret

display_level_value_in_menu

	ld de, (SCREEN_CHAR_ADDRESSES_TABLE +  4*SPRITE_HEIGHT/8 + 2*SPRITE_HEIGHT/2/8)
	ld hl, 30 + 1
	add hl, de
	ex de, hl
	ld ix, STRING_LEVEL
	ld b, STRING_LEVEL.size
	call display_string


	; Make the conversion between the level number and it s BCD representation
	ld hl, (CURRENT_LEVEL)
	inc hl
	call Bin2Bcd
	ld (CURRENT_BCD_LEVEL), hl

	; shift of 4 bits
	ld de, (SCREEN_CHAR_ADDRESSES_TABLE +  4*SPRITE_HEIGHT/8 + 2*SPRITE_HEIGHT/2/8)
	ld hl, 52 + 1
	add hl, de
	ld ix, CURRENT_BCD_LEVEL
	call display_3_digits

	ret



display_hud
	call display_time
	call display_moves
	call display_pushes
	ret

draw_background_menus
	ld hl, LEVEL_MENU
	call uncrunch_level
	ld hl, CURRENT_LEVEL_UNCRUNCH_ZONE + 2
	call draw_map
	ret
;;
; Set all colors to black and clear memory from 0x8000-0xffff
empty_screen
	call blacken_screen

	ld hl, 0x8000
	ld (hl), l
	ld de, 0x8001
	ld bc, 0x7fff
	ldir

	ret


;;
; Input:
; - HL: palette
set_palette
	ld b, 0x7f
	xor a
.loop
		ld c, (hl) : inc hl
		out (c), a : out (c), c
		inc a
		cp 16		
		jr nz, .loop
	ret


NORMAL_PALETTE
	incbin "generated/palette.bin"


wait_vsync_rout
	WAIT_VSYNC (void)
	ret


;;
; Make the rasters needed for a given lline
selected_raster_bar
font_raster_bar

	ld hl, RASTER_TABLE

.go
	ld bc, 0x7f00 + FONT_PEN
	
	out (c), c
.start
	ld a, FONT_HEIGHT + 1
.count equ $-1

	dec a
.loop
	ex af, af'
	
	ld a, (hl)
	inc hl
	out (c), a

	defs 64 - (1+2+4+1+1+3+2)

	ex af, af'
	dec a
	jr nz, .loop

	ex af, af'
	ld a, (hl)
	out (c), a

	ret

title_raster_bar
	ld hl, TITLE_RASTER_TABLE
	jr font_raster_bar.go

unselected_raster_bar
	ld hl, UNSELECTED_RASTER_TABLE
	jr font_raster_bar.go

ingame_raster_bar
	ld hl, INGAME_RASTER_TABLE
	jr font_raster_bar.go

RASTER_TABLE
SELECTED_RASTER_TABLE
 if 1
 ;db 0x5D, 0x5D, 0x46, 0x5D, 0x46, 0x46, 0x5A, 0x46,  0x5A,  0x5A,  0x59,  0x5A,  0x59,  0x43, 0x4b, 0x4b
 ;db 0x5D, 0x5D, 0x46, 0x5D, 0x46, 0x46, 0x5A, 0x46, 0x5A, 0x5A, 0x59, 0x5A, 0x59, 0x59, 0x43, 0x59
	;db 0x5D, 0x5D, 0x46, 0x5D, 0x46, 0x46, 0x5A, 0x46, 0x5A, 0x5A, 0x59, 0x5A, 0x59, 0x59, 0x43, 0x59
;	db 0x56, 0x56, 0x57, 0x56, 0x57, 0x57, 0x51, 0x57, 0x51, 0x51, 0x59, 0x51, 0x59, 0x59, 0x43, 0x4B
; db 0x58, 0x58, 0x5E, 0x58, 0x5E, 0x5E, 0x4E, 0x5E, 0x4E, 0x4E, 0x4A, 0x4E, 0x4A, 0x4A, 0x43, 0x4B
db 0x56, 0x56, 0x57, 0x56, 0x57, 0x57, 0x51, 0x57, 0x51, 0x51, 0x59, 0x51, 0x59, 0x59, 0x43, 0x4B
 else
	defs 16, 0x54
 endif
RASTER_TABLE_END
	db PEN_15 ; real color
 ;db  0x43, 0x59, 0x59, 0x5A, 0x59, 0x5A, 0x5A, 0x46, 0x5A, 0x46, 0x46, 0x5D, 0x46
;	db  0x43, 0x59, 0x59, 0x51, 0x59, 0x51, 0x51, 0x57, 0x51, 0x57, 0x57, 0x56, 0x57
 ;db 0x43, 0x4A, 0x4A, 0x4E, 0x4A, 0x4E, 0x4E, 0x5E, 0x4E, 0x5E, 0x5E, 0x58, 0x5E
 db 0x43, 0x59, 0x59, 0x51, 0x59, 0x51, 0x51, 0x57, 0x51, 0x57, 0x57, 0x56, 0x57

	assert (RASTER_TABLE_END - RASTER_TABLE) == FONT_HEIGHT

TITLE_RASTER_TABLE
 ;db 0x58, 0x58, 0x45, 0x58, 0x45, 0x45, 0x47, 0x45, 0x47, 0x47,  0x43, 0x47, 0x43, 0x4B, 0x4b, 0x4b
;db 0x58, 0x58, 0x45, 0x58, 0x45, 0x45, 0x47, 0x45, 0x47, 0x47, 0x43, 0x47, 0x43, 0x43, 0x4B, 0x43
;db 0x58, 0x58, 0x45, 0x58, 0x45, 0x45, 0x47, 0x45, 0x47, 0x47, 0x4F, 0x47, 0x4F, 0x4F, 0x43, 0x4F
; db 0x58, 0x58, 0x45, 0x58, 0x45, 0x45, 0x47, 0x45, 0x47, 0x47, 0x43, 0x47, 0x43, 0x43, 0x4B, 0x43
	db 0x5C, 0x5C, 0x45, 0x5C, 0x45, 0x45, 0x47, 0x45, 0x47, 0x47, 0x43, 0x47, 0x43, 0x43, 0x4B, 0x43


	db PEN_15 ; real color


UNSELECTED_RASTER_TABLE
 ;db 0x56,  0x56,  0x57,  0x56,  0x57,  0x57,  0x51,  0x57,  0x51,  0x51,  0x59,  0x51,  0x59,  0x4B, 0x4b, 0x4b
 ;db 0x58, 0x58, 0x5E, 0x58, 0x5E, 0x5E, 0x4E, 0x5E, 0x4E, 0x4E, 0x4A, 0x4E, 0x4A, 0x4A, 0x4B, 0x4A
 ;db 0x58, 0x58, 0x5E, 0x58, 0x5E, 0x5E, 0x4E, 0x5E, 0x4E, 0x4E, 0x47, 0x4E, 0x47, 0x47, 0x4F, 0x47
 ; db 0x58, 0x58, 0x5E, 0x58, 0x5E, 0x5E, 0x4E, 0x5E, 0x4E, 0x4E, 0x4A, 0x4E, 0x4A, 0x4A, 0x4B, 0x4A
  ;db 0x56, 0x56, 0x57, 0x56, 0x57, 0x57, 0x51, 0x57, 0x51, 0x51, 0x59, 0x51, 0x59, 0x59, 0x43, 0x4B
  db 0x58, 0x58, 0x5D, 0x58, 0x5D, 0x5D, 0x5F, 0x5D, 0x5F, 0x5F, 0x5B, 0x5F, 0x5B, 0x5B, 0x4B, 0x5B
	db PEN_15 ; real color



INGAME_RASTER_TABLE
	; db 0x58, 0x5D, 0x58, 0x5D, 0x5D, 0x4D, 0x5D, 0x4D, 0x4D, 0x4F, 0x4D, 0x4F, 0x4F, 0x4B, 0x4F, 0x4B
	;db 0x5D, 0x5D, 0x4D, 0x5D, 0x4D, 0x4D, 0x4F, 0x4D, 0x4F, 0x4F, 0x43, 0x4F, 0x43, 0x43, 0x4B, 0x43
	;db 0x5C, 0x5C, 0x45, 0x5C, 0x45, 0x45, 0x47, 0x45, 0x47, 0x47, 0x43, 0x47, 0x43, 0x43, 0x4B, 0x43 ; RED
	;db 0x5D, 0x5D, 0x46, 0x5D, 0x46, 0x46, 0x5A, 0x46, 0x5A, 0x5A, 0x4A, 0x5A, 0x4A, 0x4A, 0x4B, 0x4A
	;db 0x56, 0x56, 0x52, 0x56, 0x52, 0x52, 0x5A, 0x52, 0x5A, 0x5A, 0x4A, 0x5A, 0x4A, 0x4A, 0x4B, 0x4A
	db 0x5C, 0x5C, 0x45, 0x5C, 0x45, 0x45, 0x47, 0x4D, 0x4F, 0x4D, 0x4D, 0x58, 0x4D, 0x58, 0x58, 0x58
	db PEN_15
;;
; Input:
; - HL: table
rotate_raster_table
	ld a, 0
.delay equ $-1
	inc a
	and 1
	ld (.delay), a
	ret nz

.no_delay
	ld a, (hl)
	ld de, hl
	inc de
	ex de, hl
	ld bc, 15
	ldir

	inc hl
	ldi
	inc de

	ld bc, 12
	ldir
	ld (de), a
	ret


blacken_screen
	call  wait_vsync_rout
	ld bc, 0x7f44
	xor a
.loop
	out (c), a
	out (c), c
	inc a
	cp 16
	jr nz, .loop
	ret

lighten_screen
	ld hl, NORMAL_PALETTE
	call set_palette
	ret