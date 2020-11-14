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

SPRITE_SIZE equ SPRITE_WIDTH * SPRITE_HEIGHT



; 0 values represent impossible cases
; TODO add additional bits manipulation for player direction
ENTITY_TO_SPRITE
	dw SPRITE_FLOOR  		; 0
	dw SPRITE_EMPTY 		; 1
	dw SPRITE_DESTINATION 	; 2
	dw FONT.space					; 3
	dw SPRITE_BLOC 					; 4
	dw 0  		; 5
	dw SPRITE_BLOC_DESTINATION ; 6
	dw 0 					; 7
	dw SPRITE_WALL  		; 8
	defs 7*2
	dw SPRITE_PLAYER ; 17 player + floor
	db 0
	db 0
	dw SPRITE_PLAYER ; player + destination

SPRITE_EMPTY; equ 0x200
	incbin "generated/empty.bin"

SPRITE_BLOC 
	incbin "generated/box.bin"

SPRITE_FLOOR 
		incbin "generated/floor.bin"

SPRITE_WALL 
	incbin "generated/wall.bin"
SPRITE_BLOC_DESTINATION
	incbin "generated/hibox.bin"

SPRITE_DESTINATION
		incbin "generated/target.bin"

SPRITE_PLAYER 
SPRITE_PLAYER_PUSH
SPRITE_PLAYER_PUSH_UP
		incbin "generated/player_push_up0.bin"
		incbin "generated/player_push_up1.bin"
		incbin "generated/player_push_up2.bin"
SPRITE_PLAYER_PUSH_DOWN
		incbin "generated/player_push_down0.bin"
		incbin "generated/player_push_down1.bin"
		incbin "generated/player_push_down2.bin"
SPRITE_PLAYER_PUSH_LEFT
		incbin "generated/player_push_left0.bin"
		incbin "generated/player_push_left1.bin"
		incbin "generated/player_push_left2.bin"
SPRITE_PLAYER_PUSH_RIGHT
		incbin "generated/player_push_right0.bin"
		incbin "generated/player_push_right1.bin"
		incbin "generated/player_push_right2.bin"

SPRITE_PLAYER_MOVE
SPRITE_PLAYER_MOVE_UP
		incbin "generated/player_move_up0.bin"
		incbin "generated/player_move_up1.bin"
		incbin "generated/player_move_up2.bin"
SPRITE_PLAYER_MOVE_DOWN
		incbin "generated/player_move_down0.bin"
		incbin "generated/player_move_down1.bin"
		incbin "generated/player_move_down2.bin"
SPRITE_PLAYER_MOVE_LEFT
		incbin "generated/player_move_left0.bin"
		incbin "generated/player_move_left1.bin"
		incbin "generated/player_move_left2.bin"
SPRITE_PLAYER_MOVE_RIGHT
		incbin "generated/player_move_right0.bin"
		incbin "generated/player_move_right1.bin"
		incbin "generated/player_move_right2.bin"




PLAYER_SPRITES
	repeat 256, I

I=I-1

X_DELTA = I & 0b00000011
Y_DELTA = (I & 0b00001100) >> 2
ACT = I & (3<<4)


	if X_DELTA == 3
		X_DELTA = 1
	endif


	if Y_DELTA == 3
		Y_DELTA = 1
	endif


	assert Y_DELTA < 3
	assert X_DELTA < 3

DIR = I & (3<<6)




	if ACT == ACTION_MOVE
BASE_SPRITE = SPRITE_PLAYER_MOVE
	else
BASE_SPRITE = SPRITE_PLAYER_PUSH
	endif


	if DIR == DIRECTION_DOWN || DIR == DIRECTION_UP
STEP_DELTA = Y_DELTA*SPRITE_SIZE
	else
		assert DIR == DIRECTION_LEFT || DIR == DIRECTION_RIGHT
STEP_DELTA = X_DELTA*SPRITE_SIZE

	endif


DIR_DELTA = (DIR >> 6) * SPRITE_SIZE * 3


SPRITE_ADDRESS = BASE_SPRITE + DIR_DELTA + STEP_DELTA
	dw SPRITE_ADDRESS


	; print I, X_DELTA, Y_DELTA, {bin}ACT, {bin}DIR, {hex}BASE_SPRITE , {hex} DIR_DELTA ,  {hex} STEP_DELTA


	rend





	assert 4*2*3*3 < 256


FONT

.char0 incbin "generated/0.bin"
.char1 incbin "generated/1.bin"
.char2 incbin "generated/2.bin"
.char3 incbin "generated/3.bin"
.char4 incbin "generated/4.bin"
.char5 incbin "generated/5.bin"
.char6 incbin "generated/6.bin"
.char7 incbin "generated/7.bin"
.char8 incbin "generated/8.bin"
.char9 incbin "generated/9.bin"
.chara incbin "generated/a.bin"
.charb incbin "generated/b.bin"
.charc incbin "generated/c.bin"
.chard incbin "generated/d.bin"
.chare incbin "generated/e.bin"
.charf incbin "generated/f.bin"
.charg incbin "generated/g.bin"
.charh incbin "generated/h.bin"
.chari incbin "generated/i.bin"
.charj incbin "generated/j.bin"
.chark incbin "generated/k.bin"
.charl incbin "generated/l.bin"
.charm incbin "generated/m.bin"
.charn incbin "generated/n.bin"
.charo incbin "generated/o.bin"
.charp incbin "generated/p.bin"
.charq incbin "generated/q.bin"
.charr incbin "generated/r.bin"

.chars incbin "generated/s.bin"
.chart incbin "generated/t.bin"
.charu incbin "generated/u.bin"
.charv incbin "generated/v.bin"
.charw incbin "generated/w.bin"
.charx incbin "generated/x.bin"
.chary incbin "generated/y.bin"
.charz incbin "generated/z.bin"
.dd incbin "generated/dd.bin"
.sd incbin "generated/sd.bin"
.comma incbin "generated/comma.bin"
.apostrophe incbin "generated/apostrophe.bin"
.exclamation incbin "generated/exclamation.bin"
.space defs SPRITE_SIZE


	assert FONT_WIDTH*FONT_HEIGHT == 64, "Need to update font display code"

bigt incbin "generated/bigt.bin"


TORCH1 incbin "generated/torch1.bin"
TORCH2 incbin "generated/torch2.bin"
TORCH3 incbin "generated/torch3.bin"
TORCH4 incbin "generated/torch4.bin"

TORCH1b incbin "generated/torch1b.bin"
TORCH2b incbin "generated/torch2b.bin"
TORCH3b incbin "generated/torch3b.bin"
TORCH4b incbin "generated/torch4b.bin"