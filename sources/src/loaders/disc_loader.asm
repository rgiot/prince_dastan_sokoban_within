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

	
	org 0x1000
	RUN 0x1000


BUILD_DSK


LOADER_START

cas_in_open equ 0xbc77
cas_in_direct equ 0xbc83
cas_in_close equ 0xbc7a
cas_noisy equ 0xbc6b

src_set_mode equ 0xBC0E
src_set_ink equ 0xbc32

mc_start_program	equ 0xbd16
kl_rom_walk		equ 0xbccb

		; http://www.cpcwiki.eu/index.php/Programming:An_example_loader

		;; store the drive number the loader was run from
		ld hl,(0xbe7d)
		ld a,(hl)                  
		ld (.drive+1),a


		ld c,0xff					;; disable all roms
		ld hl,.start					;; execution address for program
		call mc_start_program		;; start it


.start
              call kl_rom_walk                        ;; enable all roms 


.drive ld a,0
               ld hl,(0xbe7d)
               ld (hl),a                 

		include "loaders/loader.asm"


LOADER_STOP

	save "sokoban.bin", LOADER_START, LOADER_STOP - LOADER_START, DSK, 'sokoban_within.dsk'
