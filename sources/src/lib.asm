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

 macro UNIMPLEMENTED
	print "Unimplemented code"
	BREAKPOINT
 mend

 macro WAIT_VSYNC
	ld b, 0xf5: in a, (c): rra : jr nc, $-3
 mend

 macro WAIT_NOVSYNC
	ld b, 0xf5: in a, (c): rra : jr c, $-3
 mend

 macro START_VSYNC
    WAIT_NOVSYNC (void)
    WAIT_VSYNC (void)
 mend

	macro REVERSE_COORDS
		ld a, e
		ld e, d
		ld d, a
	mend

	;;
	; Extract the high number of the BCD representation
	macro BCD_HIGH
		repeat 4
			srl a
		rend
		and 0b1111
	mend

	macro BCD_LOW
		and 0b1111
	mend


    MACRO   WAIT_CYCLES, cycles

    assert {cycles} <= 1024, 'Too many nops'
    assert {cycles} > 0, 'Wait time must be positive'

    ; Compute the number of loops and extra nop
@loops     equ floor(({cycles}-1)/4 )
@loopsx4   equ floor(@loops*4)
@nops      equ floor({cycles}-@loopsx4-1)


    ; Produce a loop only if required
    if @loops != 0
        ld  b, @loops
@change_waitLoop
        djnz    @change_waitLoop
    endif

    ; Produce extra nops
    defs    @nops,0

    endm


    ;;
    ; Macro unable to wait more than 1024 nops
    MACRO LONG_WAIT_CYCLES, cycles
        if {cycles} <= 1024
            WAIT_CYCLES {cycles}
        else
            WAIT_CYCLES 1024
            LONG_WAIT_CYCLES ({cycles} - 1024)
        endif
    ENDM


 macro BREAKPOINT_WINAPE
        db 0xed
        db 0xff
 endm

 	macro FORCE_REDRAW x, y
		ld a, (CURRENT_LEVEL_MAP + {y}*MAP_WIDTH + {x})
	call get_sprite_address
	ld de, {y}*256+{x}
;	ld hl, 0x100
	call draw_entity_unmasked
	mend


; https://de.comp.lang.assembler.x86.narkive.com/EjY9sEbE/z80-binary-to-ascii
; double dabble implementation for 16 bits
;;--------------------------------------------------
;; Binary to BCD conversion
;;
;; Converts a 16-bit unsigned integer into a 6-digit
;; BCD number. 1181 Tcycles
;;
;; input: HL = unsigned integer to convert
;; output: C:HL = 6-digit BCD number
;; destroys: A,F,B,C,D,E,H,L
;;--------------------------------------------------
Bin2Bcd:
    LD BC, 16*256+0 ; handle 16 bits, one bit per iteration
    LD DE, 0
cvtLoop
    ADD HL, HL
    LD A, E
    ADC A, A
    DAA
    LD E, A
    LD A, D
    ADC A, A
    DAA
    LD D, A
    LD A, C
    ADC A, A
    DAA
    LD C, A
    DJNZ cvtLoop
    EX HL, DE
    RET