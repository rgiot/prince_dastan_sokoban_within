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

	PLY_AKM_HARDWARE_CPC = 1
	PLY_AKM_MANAGE_SOUND_EFFECTS = 1


; WARNING: the players has been modified by ZIK

	include "effects_playerconfig.asm"
	include "music_playerconfig.asm"
PLAYER
	include "PlayerAkm.asm"

EFFECTS
	include "effects.asm"
MUSIC
	include "music.asm"


SUBSONG_MENU equ 0
SUBSONG_GAME equ 1
SUBSONG_LEVEL_FINISHED equ 0

EFFECT_PUSH equ 5
EFFECT_MOVE equ 2
EFFECT_BLOCKED equ 3
EFFECT_DEST equ 1
EFFECT_WIN equ 4


play_effect_push
	ld a, EFFECT_PUSH
	jr play_any_effect

play_effect_move
	ld a, EFFECT_MOVE
	jr play_any_effect

play_effect_blocked
	ld a, EFFECT_BLOCKED
	jr play_any_effect

play_effect_dest
	ld a, EFFECT_DEST
	jr play_any_effect

play_effect_win
	ld a, EFFECT_WIN
	jr play_any_effect

play_any_effect
	push af
		ld a, (FX_ENABLED)
		or a 
		jr nz, .cont
		pop af
		ret

.cont
	pop af

	ld c, 0
	ld b, 0
	call PLY_AKM_PlaySoundEffect
	ret