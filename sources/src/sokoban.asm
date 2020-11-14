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


CHECKUP equ 0
FORCE_LEVEL equ 0  ; 0 for not force
SPACE_TO_WIN equ 0


USE_LZ48 = 0
USE_EXO = 0
USE_APU = 1


 assert USE_EXO + USE_LZ48 + USE_APU == 1

LOAD equ 0x100

DIRECTION_UP equ 0 << 6
DIRECTION_DOWN equ 1 << 6
DIRECTION_LEFT equ 2 <<6
DIRECTION_RIGHT equ 3<<6

ACTION_MOVE equ 0 << 4
ACTION_PUSH equ 1 << 4

MAIN_MENU_MAX_IDX equ 3


	org LOAD

	di
		ld sp, LOAD-2
		ld hl, 0xc9fb
		ld (0x38), hl
	ei

	
	call setup_screen
	call build_screen_char_table

	call play

		include 'model.asm'
	include 'lib.asm'
	include 'view.asm'
	include 'sprites.asm'
	include 'controler.asm'


setup_screen
	call empty_screen
 
	; Setup the overscan screen
	; R7 = 30 => 36

	call wait_vsync_rout
	ld bc, 0xbc00 + 2 : out (c), c
	ld bc, 0xbd00 + 50 : out (c), c
	ld bc, 0xbc00 + 4 : out (c), c
	ld bc, 0xbd00 + 39 - (36-30) -1  : out (c), c
	ld bc, 0xbc00 + 7 : out (c), c
	ld bc, 0xbd00 + 36 : out (c), c
	halt : halt : halt
	ld bc, 0xbc00 + 4 : out (c), c
	ld bc, 0xbd00 + 39-1 : out (c), c

	ld bc, 0xbc00 + 1 : out (c), c
	ld bc, 0xbd00 + SCREEN_WIDTH/2 : out (c), c



	ld bc, 0xbc00 + 6 : out (c), c
	ld bc, 0xbd00 + SCREEN_MAP_HEIGHT/8 : out (c), c

	ld bc, 0xbc00 + 12 : out (c), c
	ld bc, 0xbd00 + 0x2c : out (c), c

	ld bc, 0xbc00 + 13 : out (c), c
	ld bc, 0xbd00 + 0x40 : out (c), c

	; setup the screen mode
	ld bc, 0x7f8c : out (c), c
	ret

play


	if FORCE_LEVEL > 0
		ld hl, FORCE_LEVEL - 1
	else
		ld hl, 0 
	endif
	ld (CURRENT_LEVEL), hl

	if CHECKUP == 0 && FORCE_LEVEL == 0
		ld hl, MUSIC
		ld a, SUBSONG_MENU
		call PLAYER+0



		ld a, 1
.check_intro equ $-1
		or a
		jr z, .no_intro
.intro
		xor a : ld (.check_intro), a


		call manage_writter

.no_intro


		xor a : ld (MAIN_MENU_IDX), a
		call manage_main_menu
.leave_main_menu
		call PLAYER+6
	endif


	ld hl, MUSIC
	ld a, SUBSONG_GAME
	call PLAYER+0

	ld hl, EFFECTS
	call PLY_AKM_InitSoundEffects

	;call play_level

play_level

	call init_current_level

	; Draw the level in one shot
	call draw_map
	call display_hud


.loop
	call wait_vsync_rout

	call playing_state
.state_routine equ $-2


	jp .loop

;;
; Contains all the code when really playing the game
; as display is way too fast for properly playing, I update the score area one frame out of two and the moves one frame out of two
playing_state
	call lighten_screen
	
	
	if SPACE_TO_WIN
		call keyscan
		call fire_requested: jp z, current_level_finished
	endif

	if CHECKUP != 0 && FORCE_LEVEL == 0
		jp current_level_finished
	endif

	call is_finished : jp z, install_wait_state
	call update_clock
	call install_raster_under_interrupt

;	ld bc, 0x7f00 : out (c), c : ld c, 0x4b : out (c), c

	ld a, 0
.state equ $-1
	inc a
	and 0b1
	ld (.state), a
	
	cp 1 : jr z, .manage_event
.manage_scores
	jp display_scores
	
.manage_event
	jp manage_event


install_wait_state
	ld hl, wait_state
	ld (play_level.state_routine), hl

	ld a, WAIT_TIME
	ld (wait_state.counter), a

	call install_raster_under_interrupt
	halt
	halt
	ret

	; .. and go there
wait_state
	call lighten_screen
	call install_raster_under_interrupt

	halt

	halt

	halt

	ld a, WAIT_TIME
.counter equ $-1
	dec a
	ld (.counter), a

	jp z, current_level_finished
	ret


install_raster_under_interrupt
	di
		ld hl, interrupted_raster_code
		ld (0x39), hl

		ld a, 0xc3 ; opcode("jp")
		ld (0x38), a

		xor a : ld (interrupted_raster_code.count), a
	ei
	ret


install_music_under_interrupt
	di
		ld hl, interrupted_music_code
		ld (0x39), hl

		ld a, 0xc3 ; opcode("jp")
		ld (0x38), a

		xor a : ld (interrupted_music_code.count), a
	ei
	ret


interrupted_music_code
	push af

	ld a, 0
.count equ $-1
	inc a
	ld (.count), a

	cp 4 : jr z, interrupted_music_play
.eoi
	cp 6 : jr nz, .not_end
	xor a : ld (.count), a
.not_end
	pop af
	ei
	ret

interrupted_music_play
	push hl, bc, de, ix, iy
		exx
			push hl, bc, de
			call PLAYER + 3
			pop de, bc, hl
		exx
	pop iy, ix, de, bc, hl
	pop af
	ei
	ret

interrupted_raster_code
	push af

	ld a, 0
.count equ $-1
	inc a
	ld (.count), a

	cp 4 : jr z, interrupted_music_play
	cp 5
	jr nz, .eoi
.halt_of_interest

	push hl, bc

 if 0
		; disable interrupted routine to be sure it is never activated in the other states
		ld hl, 0xc9fb
		ld (0x38), hl
 endif

		LONG_WAIT_CYCLES 64 * 18 - 5
		if 0
			BREAKPOINT_WINAPE
			call font_raster_bar : ld hl, SELECTED_RASTER_TABLE :  push de:call rotate_raster_table:pop de
		else
			call ingame_raster_bar
		endif

	pop bc, hl

.eoi
	pop af


	ei
	ret




;;
; Update the clock.
update_clock

	; check it is time to make the update
	ld a, 50
.wait equ $-1
	dec a
	ld (.wait), a
	ret nz

	; reset the counter
	ld a, 50
	ld (.wait), a


	; BCD increment of a
	ld a, (NB_SEC) : inc a : daa : ld (NB_SEC), a
	cp 0x60
	ret nz

	xor a : ld (NB_SEC), a
	ld a, (NB_MIN) : inc a : daa : ld (NB_MIN), a
	
	ret

current_level_finished

	call blacken_screen



	pop hl; consumes the ret address
	call manage_end_level
	ld a, (CURRENT_LEVEL) : inc a : ld (CURRENT_LEVEL), a 
	jp play_level

init_current_level

	call install_music_under_interrupt


	ld hl, 0
	ld (NB_MOVES), hl
	ld (NB_PUSHES), hl
	ld (NB_SEC), hl

	ld hl, LEVELS_LIST
	ld de, (CURRENT_LEVEL)
	add hl, de : add hl, de
	ld e, (hl)
	inc hl
	ld d, (hl)
	ex de, hl


	ld a, h
	or l
	jp z, game_finished

	; uncrunch it
	call uncrunch_level
	ld hl, CURRENT_LEVEL_UNCRUNCH_ZONE

	; copy player position
	ld a, (hl) : ld (PLAYER_Y), a : inc hl
	ld a, (hl) : ld (PLAYER_X), a : inc hl

	; copy the map of the current level
	ld de, CURRENT_LEVEL_MAP
	ld bc, MAP_WIDTH * MAP_HEIGHT
	ldir

	; Setup the player position
	call add_player_to_map


	ld a, ACTION_MOVE : ld (PLAYER_LAST_ACTION), a
	ld a, DIRECTION_DOWN : ld (PLAYER_DIRECTION), a


	; Draw the LEVEL
	call draw_map





	ld hl, playing_state
	ld (play_level.state_routine), hl


	ret



game_finished
	call  manage_end_game
	jp LOAD ; XXX there are probably things to do there

;;
; INPUT: 
; - HL: level to uncrunch
uncrunch_level

;	if USE_LZ48
		;ld de, CURRENT_LEVEL_UNCRUNCH_ZONE
		;call LZ48_decrunch
		;ret
		;include 'lz48decrunch_v006b.asm'
	;ENDIF

	;IF USE_EXO
		;ld de, CURRENT_LEVEL_UNCRUNCH_ZONE
		;call deexo
		;ret
		;include 'deexo.asm'
;deexo Mizoumizeur (void)
	;endif

	IF USE_APU
		ld de, CURRENT_LEVEL_UNCRUNCH_ZONE
		call depack
		ret

		include 'aplib_z80_todo.asm'
		;include 'unaplib_fast.asm'
;unapu APunpack (void)

	;APunpack (void)
	endif

	include 'menus/menus.asm'
	include 'sound/sound.asm'
	include 'writter.asm'
	include 'levels.asm'
	include 'strings.asm'
	include 'data.asm'

	;assert $<0x8000

	print ">> Last address:", {hex}$
	print ">> Game size:", {hex}($-0x100)
	print ">>", {hex}0x8000-$, "bytes available <<"

	assert $ <= 0x8000
	