
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
	
	
	include "levels_macros.asm"



 include 'generated/levels_data.asm'
 
; include "dimitri_yorick.asm" ; too much boring to be included

	if 0
LEVELWALL
	LZ48

.player_y db 0
.player_x db 0
.map
	repeat MAP_HEIGHT, count
		if count % 2
			MAP_LINE12 E_,W_,F_,F_,D_,B_,F_,W_,W_,W_,W_,W_
		else
			MAP_LINE12 W_,F_,F_,D_,B_,F_,W_,W_,W_,W_,W_, E_
		endif
	rend
	LZCLOSE


	endif

		if 0
LEVEL_EMPTY
	LZAPU

.player_y db 0
.player_x db 0
.map
	repeat MAP_HEIGHT,  count

		if count != 2
			MAP_LINE12 F_,F_,F_,F_,F_,F_,F_,F_,F_,F_,F_,F_
		else
			MAP_LINE12 F_,F_,B_,F_,F_,F_,F_,F_,F_,D_,F_,F_

		endif


	rend
	LZCLOSE


	endif

	

;_M = _V
; _M = _F
LEVEL_MENU
	LZAPU

.player_y db 0
.player_x db 0
.map

	MAP_EMPTY_LINE (void)
	MAP_LINE12 E_,W_,W_,W_,W_,W_,W_,W_,W_,W_,W_,E_

	MAP_LINE12 E_,W_,F_,F_,F_,F_,F_,F_,F_,F_,W_,E_
	MAP_LINE12 E_,W_,F_,F_,F_,F_,F_,F_,F_,F_,W_,E_
	MAP_LINE12 E_,W_,F_,F_,F_,F_,F_,F_,F_,F_,W_,E_
	MAP_LINE12 E_,W_,F_,F_,F_,F_,F_,F_,F_,F_,W_,E_
	MAP_LINE12 E_,W_,F_,F_,F_,F_,F_,F_,F_,F_,W_,E_


	MAP_LINE12 E_,W_,W_,W_,W_,W_,W_,W_,W_,W_,W_,E_
	MAP_EMPTY_LINE (void)

	LZCLOSE

LEVELS_LIST
	if 0
		dw LEVEL0
		dw 0
	endif

	;dw LEVEL_EMPTY
	;repeat 231, IDX
	repeat 179, IDX
IDX2=IDX-1
		dw LEVEL{IDX2}
	rend

	dw 0
