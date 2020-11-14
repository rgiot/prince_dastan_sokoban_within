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

SCR_SET_BORDER equ 0xBC38 
SCR_GET_BORDER equ 0xBC3B
	



		
	; set mode
	xor a
	call src_set_mode


	; empty screen
	call wait_vsync 
	ld bc, 0xbc00 + 1
	out (c), c
	inc b
	xor a
	out (c), a

	;call SCR_GET_BORDER
	;ld (blank_palette.pal), bc
	;call blank_palette


	; uncrunch the screen
	ld hl, screen
	ld de, 0xc000
	di
	call depack
	ei



	; set the palette
	xor a
	ld hl, palette
.loop

	ld c, (hl) : ld b, c
	push af, hl
		call SRc_SET_INK
	pop hl, af

	inc hl
	inc a 
	cp 16
	jr nz, .loop

	ld bc, 0 : call SCR_SET_BORDER
	
	ld b, 25 + 50*3
.do_nothing
	push bc

	call wait_vsync 

	ld bc, 0xbc00 + 1
	out (c), c
	inc b
	ld a, 80/2
	out (c), a

	if 0
	 ld a, 1
.delay equ $-1
	inc a
	and 11
	ld (.delay), a
	;or a
	jr nz, .no_change_of_height
	endif

	ld bc, 0xbc00+6
	out (c), c
	ld a, 0
.height equ $-1
	cp 25 : jr z, .no_change_of_height
	inc a
	ld (.height), a
	inc b
	out (c), a
.no_change_of_height


	halt 
	halt 
	pop bc
	djnz, .do_nothing

	; draw the rest
	di
	ld hl, (0x38)
	push hl : push ix
	ld hl, 0xc9fb : ld (0x38), hl
	ei

	ld ix, diffs
.diff_loop

	; get screen destination
	ld e, (ix+0) : ld d, (ix+1) : inc ix: inc ix
	ld a, e : or d
	jr z, .load

	; get amount of bytes
	ld b, 0 : ld c, (ix+0) : inc ix
	add hl, de

	; get data address
	push ix : pop hl

	; copy
	add ix, bc
	halt 
	halt
	halt
	halt

	ldir
	jr .diff_loop

 

.load
	ld b, 50*3 ; wait 3 extra second for m4 owners
.do_nothing2
	push bc

		call wait_vsync 
		halt : halt
	pop bc
	djnz .do_nothing2



	di
	pop ix
	pop hl : ld (0x38),  hl
	ei
	; load the rest
	ld b, filename_stop - filename_start
	ld hl, filename_start
	ld de, 0x2000
	call cas_in_open

	ld hl, 0x2000
	call cas_in_direct
	call cas_in_close

	jp $02000


blank_palette
	xor a
.loop1

	ld bc, 0
.pal equ $-2
	push af
		call SRc_SET_INK
	pop af

	inc a 
	cp 16
	jr nz, .loop1
	ret

wait_vsync
	ld b, 0xf5
	in a, (c)
	rra
	jr nc, $-3
	ret

	;include "tools/rasm-1.2/decrunch/deexo.asm"
;deexo
	;Mizoumizeur (void)
UNCRUNCH_START
		include 'aplib_z80_todo.asm'
UNCRUNCH_STOP

	assert $< 0x2000

screen
	incapu "generated/loading_screen.scr"

palette
	db 25,17,13,4,0,5,3,1,24,2,26,15,12,6,10,22

	;incbin "generated/loading_screen.inks"
	db 0, 0
filename_start
	defb "sokoban.dat"
filename_stop

diffs
	include "generated/loading_diff.asm"

	assert $<0x4000

