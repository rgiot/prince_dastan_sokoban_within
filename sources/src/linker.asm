
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

	BUILDSNA 
	SNASET CPC_TYPE, 0
	BANKSET 0	


PROGRESS equ 1

LINKER_ADDRESS = 0x2000
	
	org LINKER_ADDRESS
	RUN LINKER_ADDRESS

LINKER_START

	di
	ld sp, 0x100 - 2
	ld hl, 0xc9fb
	ld (0x38), hl
	ei

	ld bc, 0x7f44
	xor a
.loop
	out (c), a
	out (c), c
	inc a
	cp 16
	jr nz, .loop

	ld hl, BOOT_START
	ld de, 0x8000
	ld bc, BOOT_SIZE
	ldir


	jp 0x8000

	; This is a two stage linker in order to not try to play with stack boundaries and so on

BOOT_START
	org 0x8000, $

	; empty screen
	ld bc, 0xbc00 + 1 : out (c), c
	inc b : dec c : out (c), c

	ld hl, GAME
	ld de, 0x100
;	call deexo
	call depack
;	ld bc, GAME_STOP-GAME_START

	jp 0x100

GAME
	incapu "game.bin"
;	incexo "game.bin"
;	incbin "game.bin"
GAME_STOP
;	include "deexo.asm"
;deexo;
	;Mizoumizeur (void)

UNCRUNCH_START
		include 'aplib_z80_todo.asm'
UNCRUNCH_STOP

GAME_SIZE = GAME_STOP - GAME

	org $
BOOT_STOP


LINKER_STOP


	print "bootstrap start", {hex}BOOT_START
	print "bootstrap stop", {hex}BOOT_STOP

	print "game start", {hex}GAME
	print "game stop", {hex}GAME_STOP


	print "uncrunch start", {hex}UNCRUNCH_START
	print "uncrunch stop", {hex}UNCRUNCH_STOP

BOOT_SIZE = BOOT_STOP-BOOT_START
	print "bootstrep size", {hex} BOOT_SIZE
	print "Game size", {hex} GAME_SIZE



	assert BOOT_SIZE < 0x8000
	assert $<0x8000


	print ">> Linked size", {hex} $-LINKER_ADDRESS

	save "sokoban.dat", LINKER_START, LINKER_STOP - LINKER_START, AMSDOS
	save "sokoban.dat", LINKER_START, LINKER_STOP - LINKER_START, DSK, 'sokoban_within.dsk'