; Sokoban - Krusty, Song part, encoded in the AKM (minimalist) format V0.


SokobanKrusty_Start
SokobanKrusty_StartDisarkGenerateExternalLabel

SokobanKrusty_DisarkPointerRegionStart0
	dw SokobanKrusty_InstrumentIndexes	; Index table for the Instruments.
	dw SokobanKrusty_ArpeggioIndexes - 2	; Index table for the Arpeggios.
	dw SokobanKrusty_PitchIndexes - 2	; Index table for the Pitches.

; The subsongs references.
	dw SokobanKrusty_Subsong0
	dw SokobanKrusty_Subsong1
SokobanKrusty_DisarkPointerRegionEnd0

; The Instrument indexes.
SokobanKrusty_InstrumentIndexes
SokobanKrusty_DisarkPointerRegionStart1
	dw SokobanKrusty_Instrument0
	dw SokobanKrusty_Instrument1
	dw SokobanKrusty_Instrument2
	dw SokobanKrusty_Instrument3
	dw SokobanKrusty_Instrument4
	dw SokobanKrusty_Instrument5
	dw SokobanKrusty_Instrument6
	dw SokobanKrusty_Instrument7
	dw SokobanKrusty_Instrument8
	dw SokobanKrusty_Instrument9
	dw SokobanKrusty_Instrument10
	dw SokobanKrusty_Instrument11
	dw SokobanKrusty_Instrument12
	dw SokobanKrusty_Instrument13
	dw SokobanKrusty_Instrument14
	dw SokobanKrusty_Instrument15
	dw SokobanKrusty_Instrument16
	dw SokobanKrusty_Instrument17
	dw SokobanKrusty_Instrument18
	dw SokobanKrusty_Instrument19
	dw SokobanKrusty_Instrument20
	dw SokobanKrusty_Instrument21
SokobanKrusty_DisarkPointerRegionEnd1

; The Instrument.
SokobanKrusty_DisarkByteRegionStart2
SokobanKrusty_Instrument0
	db 255	; Speed.

SokobanKrusty_Instrument0Loop	db 0	; Volume: 0.

	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart3
	dw SokobanKrusty_Instrument0Loop	; Loops.
SokobanKrusty_DisarkPointerRegionEnd3

SokobanKrusty_Instrument1
	db 0	; Speed.

	db 189	; Volume: 15.
	db 233	; Arpeggio: -12.
	db 1	; Noise: 1.

	db 57	; Volume: 14.

	db 181	; Volume: 13.
	db 24	; Arpeggio: 12.

	db 49	; Volume: 12.

	db 45	; Volume: 11.

	db 41	; Volume: 10.

	db 37	; Volume: 9.

	db 33	; Volume: 8.

	db 29	; Volume: 7.

	db 25	; Volume: 6.

	db 21	; Volume: 5.

	db 17	; Volume: 4.

	db 13	; Volume: 3.

	db 9	; Volume: 2.

	db 5	; Volume: 1.

	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart4
	dw SokobanKrusty_Instrument0Loop	; Loop to silence.
SokobanKrusty_DisarkPointerRegionEnd4

SokobanKrusty_Instrument2
	db 5	; Speed.

	db 57	; Volume: 14.

	db 61	; Volume: 15.

	db 125	; Volume: 15.
	dw -1	; Pitch: -1.

	db 57	; Volume: 14.

	db 117	; Volume: 13.
	dw 1	; Pitch: 1.

	db 53	; Volume: 13.

	db 113	; Volume: 12.
	dw -1	; Pitch: -1.

	db 45	; Volume: 11.

	db 105	; Volume: 10.
	dw 1	; Pitch: 1.

	db 37	; Volume: 9.

	db 97	; Volume: 8.
	dw -1	; Pitch: -1.

SokobanKrusty_Instrument2Loop	db 29	; Volume: 7.

	db 93	; Volume: 7.
	dw 1	; Pitch: 1.

	db 29	; Volume: 7.

	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart5
	dw SokobanKrusty_Instrument2Loop	; Loops.
SokobanKrusty_DisarkPointerRegionEnd5

SokobanKrusty_Instrument3
	db 0	; Speed.

	db 189	; Volume: 15.
	db 24	; Arpeggio: 12.

	db 57	; Volume: 14.

	db 53	; Volume: 13.

SokobanKrusty_Instrument3Loop	db 173	; Volume: 11.
	db 24	; Arpeggio: 12.

	db 173	; Volume: 11.
	db 24	; Arpeggio: 12.

	db 45	; Volume: 11.

	db 45	; Volume: 11.

	db 45	; Volume: 11.

	db 45	; Volume: 11.

	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart6
	dw SokobanKrusty_Instrument3Loop	; Loops.
SokobanKrusty_DisarkPointerRegionEnd6

SokobanKrusty_Instrument4
	db 0	; Speed.

	db 248	; Volume: 15.
	db 1	; Noise.

	db 121	; Volume: 14.
	dw -10	; Pitch: -10.

	db 249	; Volume: 14.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.
	dw -10	; Pitch: -10.

	db 241	; Volume: 12.
	db 1	; Arpeggio: 0.
	db 3	; Noise: 3.
	dw -30	; Pitch: -30.

	db 229	; Volume: 9.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.
	dw -30	; Pitch: -30.

	db 224	; Volume: 12.
	db 1	; Noise.

	db 224	; Volume: 12.
	db 1	; Noise.

	db 224	; Volume: 12.
	db 1	; Noise.

	db 216	; Volume: 11.
	db 2	; Noise.

	db 208	; Volume: 10.
	db 2	; Noise.

	db 208	; Volume: 10.
	db 2	; Noise.

	db 208	; Volume: 10.
	db 1	; Noise.

	db 200	; Volume: 9.
	db 1	; Noise.

	db 192	; Volume: 8.
	db 1	; Noise.

	db 192	; Volume: 8.
	db 2	; Noise.

	db 184	; Volume: 7.
	db 2	; Noise.

	db 184	; Volume: 7.
	db 2	; Noise.

	db 176	; Volume: 6.
	db 1	; Noise.

	db 168	; Volume: 5.
	db 1	; Noise.

	db 160	; Volume: 4.
	db 2	; Noise.

	db 160	; Volume: 4.
	db 4	; Noise.

	db 160	; Volume: 4.
	db 2	; Noise.

	db 160	; Volume: 4.
	db 1	; Noise.

	db 152	; Volume: 3.
	db 1	; Noise.

	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart7
	dw SokobanKrusty_Instrument0Loop	; Loop to silence.
SokobanKrusty_DisarkPointerRegionEnd7

SokobanKrusty_Instrument5
	db 1	; Speed.

	db 42
SokobanKrusty_Instrument5Loop	db 53	; Volume: 13.

	db 53	; Volume: 13.

	db 117	; Volume: 13.
	dw -1	; Pitch: -1.

	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart8
	dw SokobanKrusty_Instrument5Loop	; Loops.
SokobanKrusty_DisarkPointerRegionEnd8

SokobanKrusty_Instrument6
	db 0	; Speed.

	db 49	; Volume: 12.

SokobanKrusty_Instrument6Loop	db 33	; Volume: 8.

	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart9
	dw SokobanKrusty_Instrument6Loop	; Loops.
SokobanKrusty_DisarkPointerRegionEnd9

SokobanKrusty_Instrument7
	db 0	; Speed.

	db 61	; Volume: 15.

	db 57	; Volume: 14.

	db 53	; Volume: 13.

	db 49	; Volume: 12.

	db 45	; Volume: 11.

	db 41	; Volume: 10.

	db 37	; Volume: 9.

	db 33	; Volume: 8.

	db 29	; Volume: 7.

	db 25	; Volume: 6.

	db 21	; Volume: 5.

	db 17	; Volume: 4.

	db 13	; Volume: 3.

	db 9	; Volume: 2.

	db 5	; Volume: 1.

	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart10
	dw SokobanKrusty_Instrument0Loop	; Loop to silence.
SokobanKrusty_DisarkPointerRegionEnd10

SokobanKrusty_Instrument8
	db 0	; Speed.

	db 177	; Volume: 12.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

SokobanKrusty_Instrument8Loop	db 37	; Volume: 9.

	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart11
	dw SokobanKrusty_Instrument8Loop	; Loops.
SokobanKrusty_DisarkPointerRegionEnd11

SokobanKrusty_Instrument9
	db 0	; Speed.

SokobanKrusty_Instrument9Loop	db 45	; Volume: 11.

	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart12
	dw SokobanKrusty_Instrument9Loop	; Loops.
SokobanKrusty_DisarkPointerRegionEnd12

SokobanKrusty_Instrument10
	db 0	; Speed.

SokobanKrusty_Instrument10Loop	db 33	; Volume: 8.

	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart13
	dw SokobanKrusty_Instrument10Loop	; Loops.
SokobanKrusty_DisarkPointerRegionEnd13

SokobanKrusty_Instrument11
	db 0	; Speed.

	db 189	; Volume: 15.
	db 233	; Arpeggio: -12.
	db 1	; Noise: 1.

	db 185	; Volume: 14.
	db 1	; Arpeggio: 0.
	db 2	; Noise: 2.

	db 181	; Volume: 13.
	db 25	; Arpeggio: 12.
	db 3	; Noise: 3.

	db 177	; Volume: 12.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 45	; Volume: 11.

	db 169	; Volume: 10.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 165	; Volume: 9.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 161	; Volume: 8.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 157	; Volume: 7.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 153	; Volume: 6.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 149	; Volume: 5.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 145	; Volume: 4.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 141	; Volume: 3.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 137	; Volume: 2.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 133	; Volume: 1.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart14
	dw SokobanKrusty_Instrument0Loop	; Loop to silence.
SokobanKrusty_DisarkPointerRegionEnd14

SokobanKrusty_Instrument12
	db 3	; Speed.

SokobanKrusty_Instrument12Loop	db 169	; Volume: 10.
	db 232	; Arpeggio: -12.

	db 169	; Volume: 10.
	db 10	; Arpeggio: 5.

	db 41	; Volume: 10.

	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart15
	dw SokobanKrusty_Instrument12Loop	; Loops.
SokobanKrusty_DisarkPointerRegionEnd15

SokobanKrusty_Instrument13
	db 1	; Speed.

	db 189	; Volume: 15.
	db 24	; Arpeggio: 12.

	db 185	; Volume: 14.
	db 24	; Arpeggio: 12.

	db 101	; Volume: 9.
	dw -1	; Pitch: -1.

	db 41	; Volume: 10.

	db 249	; Volume: 14.
	db 24	; Arpeggio: 12.
	dw -1	; Pitch: -1.

	db 181	; Volume: 13.
	db 24	; Arpeggio: 12.

	db 97	; Volume: 8.
	dw -1	; Pitch: -1.

	db 37	; Volume: 9.

	db 181	; Volume: 13.
	db 24	; Arpeggio: 12.

	db 177	; Volume: 12.
	db 24	; Arpeggio: 12.

	db 33	; Volume: 8.

	db 37	; Volume: 9.

	db 177	; Volume: 12.
	db 24	; Arpeggio: 12.

	db 173	; Volume: 11.
	db 24	; Arpeggio: 12.

	db 37	; Volume: 9.

	db 41	; Volume: 10.

SokobanKrusty_Instrument13Loop	db 173	; Volume: 11.
	db 24	; Arpeggio: 12.

	db 169	; Volume: 10.
	db 24	; Arpeggio: 12.

	db 37	; Volume: 9.

	db 41	; Volume: 10.

	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart16
	dw SokobanKrusty_Instrument13Loop	; Loops.
SokobanKrusty_DisarkPointerRegionEnd16

SokobanKrusty_Instrument14
	db 0	; Speed.

	db 105	; Volume: 10.
	dw -1	; Pitch: -1.

	db 105	; Volume: 10.
	dw -2	; Pitch: -2.

	db 105	; Volume: 10.
	dw -2	; Pitch: -2.

	db 105	; Volume: 10.
	dw -3	; Pitch: -3.

	db 105	; Volume: 10.
	dw -4	; Pitch: -4.

	db 105	; Volume: 10.
	dw -4	; Pitch: -4.

	db 105	; Volume: 10.
	dw -4	; Pitch: -4.

	db 105	; Volume: 10.
	dw -5	; Pitch: -5.

	db 105	; Volume: 10.
	dw -8	; Pitch: -8.

	db 105	; Volume: 10.
	dw -13	; Pitch: -13.

	db 105	; Volume: 10.
	dw -17	; Pitch: -17.

	db 105	; Volume: 10.
	dw -18	; Pitch: -18.

	db 105	; Volume: 10.
	dw -18	; Pitch: -18.

	db 105	; Volume: 10.
	dw -18	; Pitch: -18.

	db 105	; Volume: 10.
	dw -18	; Pitch: -18.

	db 105	; Volume: 10.
	dw -18	; Pitch: -18.

	db 105	; Volume: 10.
	dw -17	; Pitch: -17.

	db 105	; Volume: 10.
	dw -16	; Pitch: -16.

	db 105	; Volume: 10.
	dw -15	; Pitch: -15.

	db 105	; Volume: 10.
	dw -15	; Pitch: -15.

	db 105	; Volume: 10.
	dw -14	; Pitch: -14.

	db 105	; Volume: 10.
	dw -13	; Pitch: -13.

	db 105	; Volume: 10.
	dw -12	; Pitch: -12.

	db 105	; Volume: 10.
	dw -10	; Pitch: -10.

	db 105	; Volume: 10.
	dw -7	; Pitch: -7.

	db 105	; Volume: 10.
	dw -4	; Pitch: -4.

	db 105	; Volume: 10.
	dw -4	; Pitch: -4.

	db 105	; Volume: 10.
	dw -4	; Pitch: -4.

	db 105	; Volume: 10.
	dw -4	; Pitch: -4.

	db 105	; Volume: 10.
	dw -8	; Pitch: -8.

	db 105	; Volume: 10.
	dw -14	; Pitch: -14.

	db 105	; Volume: 10.
	dw -15	; Pitch: -15.

	db 105	; Volume: 10.
	dw -18	; Pitch: -18.

	db 105	; Volume: 10.
	dw -18	; Pitch: -18.

	db 105	; Volume: 10.
	dw -18	; Pitch: -18.

	db 105	; Volume: 10.
	dw -18	; Pitch: -18.

	db 105	; Volume: 10.
	dw -18	; Pitch: -18.

	db 105	; Volume: 10.
	dw -17	; Pitch: -17.

	db 105	; Volume: 10.
	dw -16	; Pitch: -16.

	db 105	; Volume: 10.
	dw -15	; Pitch: -15.

	db 105	; Volume: 10.
	dw -14	; Pitch: -14.

	db 105	; Volume: 10.
	dw -13	; Pitch: -13.

	db 105	; Volume: 10.
	dw -12	; Pitch: -12.

	db 105	; Volume: 10.
	dw -10	; Pitch: -10.

	db 105	; Volume: 10.
	dw -7	; Pitch: -7.

	db 105	; Volume: 10.
	dw -4	; Pitch: -4.

	db 105	; Volume: 10.
	dw -4	; Pitch: -4.

	db 105	; Volume: 10.
	dw -4	; Pitch: -4.

	db 105	; Volume: 10.
	dw -4	; Pitch: -4.

	db 105	; Volume: 10.
	dw -4	; Pitch: -4.

	db 105	; Volume: 10.
	dw -3	; Pitch: -3.

	db 105	; Volume: 10.
	dw -1	; Pitch: -1.

SokobanKrusty_Instrument14Loop	db 41	; Volume: 10.

	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart17
	dw SokobanKrusty_Instrument14Loop	; Loops.
SokobanKrusty_DisarkPointerRegionEnd17

SokobanKrusty_Instrument15
	db 0	; Speed.

SokobanKrusty_Instrument15Loop	db 53	; Volume: 13.

	db 57	; Volume: 14.

	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart18
	dw SokobanKrusty_Instrument15Loop	; Loops.
SokobanKrusty_DisarkPointerRegionEnd18

SokobanKrusty_Instrument16
	db 0	; Speed.

SokobanKrusty_Instrument16Loop	db 53	; Volume: 13.

	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart19
	dw SokobanKrusty_Instrument16Loop	; Loops.
SokobanKrusty_DisarkPointerRegionEnd19

SokobanKrusty_Instrument17
	db 1	; Speed.

SokobanKrusty_Instrument17Loop	db 53	; Volume: 13.

	db 53	; Volume: 13.

	db 117	; Volume: 13.
	dw -1	; Pitch: -1.

	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart20
	dw SokobanKrusty_Instrument17Loop	; Loops.
SokobanKrusty_DisarkPointerRegionEnd20

SokobanKrusty_Instrument18
	db 1	; Speed.

SokobanKrusty_Instrument18Loop	db 53	; Volume: 13.

	db 106
	db 106
	db 106
	db 106
	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart21
	dw SokobanKrusty_Instrument18Loop	; Loops.
SokobanKrusty_DisarkPointerRegionEnd21

SokobanKrusty_Instrument19
	db 0	; Speed.

	db 240	; Volume: 14.
	db 1	; Noise.

	db 224	; Volume: 12.
	db 1	; Noise.

	db 192	; Volume: 8.
	db 1	; Noise.

	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart22
	dw SokobanKrusty_Instrument0Loop	; Loop to silence.
SokobanKrusty_DisarkPointerRegionEnd22

SokobanKrusty_Instrument20
	db 0	; Speed.

	db 185	; Volume: 14.
	db 24	; Arpeggio: 12.

	db 117	; Volume: 13.
	dw -2	; Pitch: -2.

	db 233	; Volume: 10.
	db 24	; Arpeggio: 12.
	dw -1	; Pitch: -1.

	db 101	; Volume: 9.
	dw 1	; Pitch: 1.

	db 101	; Volume: 9.
	dw 1	; Pitch: 1.

	db 181	; Volume: 13.
	db 24	; Arpeggio: 12.

	db 113	; Volume: 12.
	dw -1	; Pitch: -1.

	db 33	; Volume: 8.

	db 101	; Volume: 9.
	dw 1	; Pitch: 1.

	db 101	; Volume: 9.
	dw 1	; Pitch: 1.

SokobanKrusty_Instrument20Loop	db 161	; Volume: 8.
	db 24	; Arpeggio: 12.

	db 33	; Volume: 8.

	db 33	; Volume: 8.

	db 33	; Volume: 8.

	db 97	; Volume: 8.
	dw -1	; Pitch: -1.

	db 97	; Volume: 8.
	dw -1	; Pitch: -1.

	db 97	; Volume: 8.
	dw -2	; Pitch: -2.

	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart23
	dw SokobanKrusty_Instrument20Loop	; Loops.
SokobanKrusty_DisarkPointerRegionEnd23

SokobanKrusty_Instrument21
	db 3	; Speed.

	db 49	; Volume: 12.

	db 121	; Volume: 14.
	dw -1	; Pitch: -1.

	db 61	; Volume: 15.

	db 61	; Volume: 15.

	db 121	; Volume: 14.
	dw 1	; Pitch: 1.

	db 53	; Volume: 13.

	db 113	; Volume: 12.
	dw -1	; Pitch: -1.

	db 45	; Volume: 11.

	db 109	; Volume: 11.
	dw 1	; Pitch: 1.

	db 41	; Volume: 10.

	db 101	; Volume: 9.
	dw -1	; Pitch: -1.

	db 33	; Volume: 8.

SokobanKrusty_Instrument21Loop	db 97	; Volume: 8.
	dw 1	; Pitch: 1.

	db 33	; Volume: 8.

	db 33	; Volume: 8.

	db 4	; End the instrument.
SokobanKrusty_DisarkPointerRegionStart24
	dw SokobanKrusty_Instrument21Loop	; Loops.
SokobanKrusty_DisarkPointerRegionEnd24

SokobanKrusty_DisarkByteRegionEnd2
SokobanKrusty_ArpeggioIndexes
SokobanKrusty_DisarkPointerRegionStart25
	dw SokobanKrusty_Arpeggio1
	dw SokobanKrusty_Arpeggio2
	dw SokobanKrusty_Arpeggio3
	dw SokobanKrusty_Arpeggio4
	dw SokobanKrusty_Arpeggio5
	dw SokobanKrusty_Arpeggio6
	dw SokobanKrusty_Arpeggio7
	dw SokobanKrusty_Arpeggio8
	dw SokobanKrusty_Arpeggio9
	dw SokobanKrusty_Arpeggio10
	dw SokobanKrusty_Arpeggio11
	dw SokobanKrusty_Arpeggio12
	dw SokobanKrusty_Arpeggio13
	dw SokobanKrusty_Arpeggio14
	dw SokobanKrusty_Arpeggio15
	dw SokobanKrusty_Arpeggio16
	dw SokobanKrusty_Arpeggio17
	dw SokobanKrusty_Arpeggio18
	dw SokobanKrusty_Arpeggio19
	dw SokobanKrusty_Arpeggio20
	dw SokobanKrusty_Arpeggio21
	dw SokobanKrusty_Arpeggio22
	dw SokobanKrusty_Arpeggio23
	dw SokobanKrusty_Arpeggio24
	dw SokobanKrusty_Arpeggio25
	dw SokobanKrusty_Arpeggio26
	dw SokobanKrusty_Arpeggio27
	dw SokobanKrusty_Arpeggio28
	dw SokobanKrusty_Arpeggio29
	dw SokobanKrusty_Arpeggio30
	dw SokobanKrusty_Arpeggio31
	dw SokobanKrusty_Arpeggio32
	dw SokobanKrusty_Arpeggio33
	dw SokobanKrusty_Arpeggio34
	dw SokobanKrusty_Arpeggio35
	dw SokobanKrusty_Arpeggio36
	dw SokobanKrusty_Arpeggio37
	dw SokobanKrusty_Arpeggio38
	dw SokobanKrusty_Arpeggio39
	dw SokobanKrusty_Arpeggio40
	dw SokobanKrusty_Arpeggio41
	dw SokobanKrusty_Arpeggio42
	dw SokobanKrusty_Arpeggio43
	dw SokobanKrusty_Arpeggio44
SokobanKrusty_DisarkPointerRegionEnd25

SokobanKrusty_DisarkByteRegionStart26
SokobanKrusty_Arpeggio1
	db 0	; Speed

	db 0	; Value: 0
	db 14	; Value: 7
	db 24	; Value: 12
	db 0	; Value: 0
	db 0	; Value: 0
	db 0	; Value: 0
	db 0	; Value: 0
	db 14	; Value: 7
	db 14	; Value: 7
	db 14	; Value: 7
	db 24	; Value: 12
	db 24	; Value: 12
	db 24	; Value: 12
	db 4 * 2 + 1	; Loops to index 4.
SokobanKrusty_Arpeggio2
	db 0	; Speed

	db 0	; Value: 0
	db 14	; Value: 7
	db 24	; Value: 12
	db 0	; Value: 0
	db 0	; Value: 0
	db 0	; Value: 0
	db 14	; Value: 7
	db 14	; Value: 7
	db 24	; Value: 12
	db 24	; Value: 12
	db 4 * 2 + 1	; Loops to index 4.
SokobanKrusty_Arpeggio3
	db 0	; Speed

	db 0	; Value: 0
	db 0	; Value: 0
	db 0	; Value: 0
	db 14	; Value: 7
	db 14	; Value: 7
	db 14	; Value: 7
	db 24	; Value: 12
	db 24	; Value: 12
	db 24	; Value: 12
	db 0	; Value: 0
	db 0	; Value: 0
	db 0	; Value: 0
	db 14	; Value: 7
	db 14	; Value: 7
	db 14	; Value: 7
	db 24	; Value: 12
	db 24	; Value: 12
	db 24	; Value: 12
	db 0	; Value: 0
	db 0	; Value: 0
	db 0	; Value: 0
	db 14	; Value: 7
	db 14	; Value: 7
	db 14	; Value: 7
	db 24	; Value: 12
	db 24	; Value: 12
	db 24	; Value: 12
	db 0	; Value: 0
	db 0	; Value: 0
	db 0	; Value: 0
	db 14	; Value: 7
	db 14	; Value: 7
	db 24	; Value: 12
	db 24	; Value: 12
	db 24	; Value: 12
	db 27 * 2 + 1	; Loops to index 27.
SokobanKrusty_Arpeggio4
	db 4	; Speed

	db 0	; Value: 0
	db 24	; Value: 12
	db 34	; Value: 17
	db 48	; Value: 24
	db 10	; Value: 5
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio5
	db 0	; Speed

	db 0	; Value: 0
	db 0	; Value: 0
	db 24	; Value: 12
	db 24	; Value: 12
	db 24	; Value: 12
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio6
	db 3	; Speed

	db 24	; Value: 12
	db 0	; Value: 0
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio7
	db 1	; Speed

	db 24	; Value: 12
	db 0	; Value: 0
	db 24	; Value: 12
	db 0	; Value: 0
	db 24	; Value: 12
	db 0	; Value: 0
	db 24	; Value: 12
	db 0	; Value: 0
	db 5 * 2 + 1	; Loops to index 5.
SokobanKrusty_Arpeggio8
	db 1	; Speed

	db 24	; Value: 12
	db 0	; Value: 0
	db 1 * 2 + 1	; Loops to index 1.
SokobanKrusty_Arpeggio9
	db 0	; Speed

	db 0	; Value: 0
	db 0	; Value: 0
	db -24	; Value: -12
	db -24	; Value: -12
	db -24	; Value: -12
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio10
	db 0	; Speed

	db 0	; Value: 0
	db 8	; Value: 4
	db 0	; Value: 0
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio11
	db 0	; Speed

	db 0	; Value: 0
	db 16	; Value: 8
	db 0	; Value: 0
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio12
	db 0	; Speed

	db 0	; Value: 0
	db 10	; Value: 5
	db 0	; Value: 0
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio13
	db 0	; Speed

	db 0	; Value: 0
	db 14	; Value: 7
	db 0	; Value: 0
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio14
	db 0	; Speed

	db 0	; Value: 0
	db 24	; Value: 12
	db 14	; Value: 7
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio15
	db 0	; Speed

	db 0	; Value: 0
	db 18	; Value: 9
	db 8	; Value: 4
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio16
	db 0	; Speed

	db 0	; Value: 0
	db 18	; Value: 9
	db 0	; Value: 0
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio17
	db 0	; Speed

	db 0	; Value: 0
	db 0	; Value: 0
	db 14	; Value: 7
	db 24	; Value: 12
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio18
	db 0	; Speed

	db 0	; Value: 0
	db 0	; Value: 0
	db 0	; Value: 0
	db 10	; Value: 5
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio19
	db 0	; Speed

	db 0	; Value: 0
	db 0	; Value: 0
	db 24	; Value: 12
	db 4	; Value: 2
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio20
	db 0	; Speed

	db 0	; Value: 0
	db 0	; Value: 0
	db 0	; Value: 0
	db 8	; Value: 4
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio21
	db 0	; Speed

	db 0	; Value: 0
	db 0	; Value: 0
	db 24	; Value: 12
	db 6	; Value: 3
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio22
	db 0	; Speed

	db 0	; Value: 0
	db 0	; Value: 0
	db 0	; Value: 0
	db 14	; Value: 7
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio23
	db 0	; Speed

	db 0	; Value: 0
	db 0	; Value: 0
	db 14	; Value: 7
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio24
	db 0	; Speed

	db 0	; Value: 0
	db 12	; Value: 6
	db 0	; Value: 0
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio25
	db 0	; Speed

	db 0	; Value: 0
	db 4	; Value: 2
	db 12	; Value: 6
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio26
	db 0	; Speed

	db 0	; Value: 0
	db 14	; Value: 7
	db 16	; Value: 8
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio27
	db 0	; Speed

	db 0	; Value: 0
	db 14	; Value: 7
	db 24	; Value: 12
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio28
	db 0	; Speed

	db 0	; Value: 0
	db 10	; Value: 5
	db 14	; Value: 7
	db 16	; Value: 8
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio29
	db 0	; Speed

	db 0	; Value: 0
	db 6	; Value: 3
	db 14	; Value: 7
	db 24	; Value: 12
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio30
	db 0	; Speed

	db 0	; Value: 0
	db 10	; Value: 5
	db 14	; Value: 7
	db 20	; Value: 10
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio31
	db 0	; Speed

	db 0	; Value: 0
	db 10	; Value: 5
	db 16	; Value: 8
	db 4	; Value: 2
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio32
	db 0	; Speed

	db 0	; Value: 0
	db 10	; Value: 5
	db 14	; Value: 7
	db 6	; Value: 3
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio33
	db 0	; Speed

	db 0	; Value: 0
	db 6	; Value: 3
	db 16	; Value: 8
	db 20	; Value: 10
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio34
	db 0	; Speed

	db 0	; Value: 0
	db 6	; Value: 3
	db 10	; Value: 5
	db 18	; Value: 9
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio35
	db 0	; Speed

	db 0	; Value: 0
	db 6	; Value: 3
	db 14	; Value: 7
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio36
	db 0	; Speed

	db 0	; Value: 0
	db 10	; Value: 5
	db 18	; Value: 9
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio37
	db 0	; Speed

	db 0	; Value: 0
	db 10	; Value: 5
	db 14	; Value: 7
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio38
	db 0	; Speed

	db 0	; Value: 0
	db 6	; Value: 3
	db 16	; Value: 8
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio39
	db 0	; Speed

	db 0	; Value: 0
	db 0	; Value: 0
	db 10	; Value: 5
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio40
	db 0	; Speed

	db 0	; Value: 0
	db 10	; Value: 5
	db 16	; Value: 8
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio41
	db 0	; Speed

	db 0	; Value: 0
	db 10	; Value: 5
	db 20	; Value: 10
	db 6	; Value: 3
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio42
	db 0	; Speed

	db 0	; Value: 0
	db 10	; Value: 5
	db 16	; Value: 8
	db 6	; Value: 3
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio43
	db 0	; Speed

	db 0	; Value: 0
	db 10	; Value: 5
	db 20	; Value: 10
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Arpeggio44
	db 0	; Speed

	db 0	; Value: 0
	db 2	; Value: 1
	db 10	; Value: 5
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_DisarkByteRegionEnd26

SokobanKrusty_PitchIndexes
SokobanKrusty_DisarkPointerRegionStart27
	dw SokobanKrusty_Pitch1
	dw SokobanKrusty_Pitch2
	dw SokobanKrusty_Pitch3
	dw SokobanKrusty_Pitch4
SokobanKrusty_DisarkPointerRegionEnd27

SokobanKrusty_DisarkByteRegionStart28
SokobanKrusty_Pitch1
	db 2	; Speed

	db 0	; Value: 0
	db -4	; Value: -2
	db 0	; Value: 0
	db 0	; Value: 0
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Pitch2
	db 1	; Speed

	db 0	; Value: 0
	db -2	; Value: -1
	db 0	; Value: 0
	db -2	; Value: -1
	db 0	; Value: 0
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Pitch3
	db 1	; Speed

	db 0	; Value: 0
	db 0	; Value: 0
	db -4	; Value: -2
	db 0	; Value: 0
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_Pitch4
	db 1	; Speed

	db 0	; Value: 0
	db 0	; Value: 0
	db -4	; Value: -2
	db -2	; Value: -1
	db 0 * 2 + 1	; Loops to index 0.
SokobanKrusty_DisarkByteRegionEnd28

; Sokoban - Krusty, Subsong 0.
; ----------------------------------

SokobanKrusty_Subsong0
SokobanKrusty_Subsong0DisarkPointerRegionStart0
	dw SokobanKrusty_Subsong0_NoteIndexes	; Index table for the notes.
	dw SokobanKrusty_Subsong0_TrackIndexes	; Index table for the Tracks.
SokobanKrusty_Subsong0DisarkPointerRegionEnd0

SokobanKrusty_Subsong0DisarkByteRegionStart1
	db 6	; Initial speed.

	db 9	; Most used instrument.
	db 8	; Second most used instrument.

	db 0	; Most used wait.
	db 1	; Second most used wait.

	db 74	; Default start note in tracks.
	db 3	; Default start instrument in tracks.
	db 2	; Default start wait in tracks.

	db 12	; Are there effects? 12 if yes, 13 if not. Don't ask.
SokobanKrusty_Subsong0DisarkByteRegionEnd1

; The Linker.
SokobanKrusty_Subsong0DisarkByteRegionStart2
; Pattern 0
	db 171	; State byte.
	db 14	; New speed (>0).
	db 15	; New height.
	db ((SokobanKrusty_Subsong0_Track9 - ($ + 2)) & #ff00) / 256	; New track (9) for channel 1, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong0_Track9 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong0_Track10 - ($ + 2)) & #ff00) / 256	; New track (10) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong0_Track10 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong0_Track11 - ($ + 2)) & #ff00) / 256	; New track (11) for channel 3, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong0_Track11 - ($ + 1)) & 255)

; Pattern 1
SokobanKrusty_Subsong0_Loop
	db 171	; State byte.
	db 7	; New speed (>0).
	db 63	; New height.
	db 128	; New track (0) for channel 1, as a reference (index 0).
	db ((SokobanKrusty_Subsong0_Track1 - ($ + 2)) & #ff00) / 256	; New track (1) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong0_Track1 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong0_Track8 - ($ + 2)) & #ff00) / 256	; New track (8) for channel 3, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong0_Track8 - ($ + 1)) & 255)

; Pattern 2
	db 162	; State byte.
	db 31	; New height.
	db ((SokobanKrusty_Subsong0_Track2 - ($ + 2)) & #ff00) / 256	; New track (2) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong0_Track2 - ($ + 1)) & 255)
	db 129	; New track (3) for channel 3, as a reference (index 1).

; Pattern 3
	db 32	; State byte.
	db ((SokobanKrusty_Subsong0_Track12 - ($ + 2)) & #ff00) / 256	; New track (12) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong0_Track12 - ($ + 1)) & 255)

; Pattern 4
	db 160	; State byte.
	db ((SokobanKrusty_Subsong0_Track13 - ($ + 2)) & #ff00) / 256	; New track (13) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong0_Track13 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong0_Track14 - ($ + 2)) & #ff00) / 256	; New track (14) for channel 3, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong0_Track14 - ($ + 1)) & 255)

; Pattern 5
	db 160	; State byte.
	db ((SokobanKrusty_Subsong0_Track5 - ($ + 2)) & #ff00) / 256	; New track (5) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong0_Track5 - ($ + 1)) & 255)
	db 129	; New track (3) for channel 3, as a reference (index 1).

; Pattern 6
	db 32	; State byte.
	db ((SokobanKrusty_Subsong0_Track4 - ($ + 2)) & #ff00) / 256	; New track (4) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong0_Track4 - ($ + 1)) & 255)

; Pattern 7
	db 164	; State byte.
	db 5	; New transposition on channel 1.
	db ((SokobanKrusty_Subsong0_Track7 - ($ + 2)) & #ff00) / 256	; New track (7) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong0_Track7 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong0_Track6 - ($ + 2)) & #ff00) / 256	; New track (6) for channel 3, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong0_Track6 - ($ + 1)) & 255)

; Pattern 8
	db 166	; State byte.
	db 63	; New height.
	db 0	; New transposition on channel 1.
	db ((SokobanKrusty_Subsong0_Track15 - ($ + 2)) & #ff00) / 256	; New track (15) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong0_Track15 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong0_Track8 - ($ + 2)) & #ff00) / 256	; New track (8) for channel 3, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong0_Track8 - ($ + 1)) & 255)

; Pattern 9
	db 160	; State byte.
	db ((SokobanKrusty_Subsong0_Track16 - ($ + 2)) & #ff00) / 256	; New track (16) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong0_Track16 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong0_Track17 - ($ + 2)) & #ff00) / 256	; New track (17) for channel 3, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong0_Track17 - ($ + 1)) & 255)

; Pattern 10
	db 0	; State byte.

	db 1	; End of the Song.
	db 0	; Speed to 0, meaning "end of song".
SokobanKrusty_Subsong0DisarkByteRegionEnd2
SokobanKrusty_Subsong0DisarkPointerRegionStart3
	dw SokobanKrusty_Subsong0_Loop

SokobanKrusty_Subsong0DisarkPointerRegionEnd3
; The indexes of the tracks.
SokobanKrusty_Subsong0_TrackIndexes
SokobanKrusty_Subsong0DisarkPointerRegionStart4
	dw SokobanKrusty_Subsong0_Track0	; Track 0, index 0.
	dw SokobanKrusty_Subsong0_Track3	; Track 3, index 1.
SokobanKrusty_Subsong0DisarkPointerRegionEnd4

SokobanKrusty_Subsong0DisarkByteRegionStart5
SokobanKrusty_Subsong0_Track0
	db 114	; New instrument (1). Note reference (2). Primary wait (0).
	db 1	;   Escape instrument value.
	db 133	; Note reference (5). Secondary wait (1).
	db 69	; Note reference (5). Primary wait (0).
	db 130	; Note reference (2). Secondary wait (1).
	db 69	; Note reference (5). Primary wait (0).
	db 66	; Note reference (2). Primary wait (0).
	db 53	; New instrument (4). Note reference (5). 
	db 4	;   Escape instrument value.
	db 117	; New instrument (1). Note reference (5). Primary wait (0).
	db 1	;   Escape instrument value.
	db 130	; Note reference (2). Secondary wait (1).
	db 130	; Note reference (2). Secondary wait (1).
	db 66	; Note reference (2). Primary wait (0).
	db 133	; Note reference (5). Secondary wait (1).
	db 69	; Note reference (5). Primary wait (0).
	db 130	; Note reference (2). Secondary wait (1).
	db 69	; Note reference (5). Primary wait (0).
	db 66	; Note reference (2). Primary wait (0).
	db 53	; New instrument (4). Note reference (5). 
	db 4	;   Escape instrument value.
	db 114	; New instrument (1). Note reference (2). Primary wait (0).
	db 1	;   Escape instrument value.
	db 69	; Note reference (5). Primary wait (0).
	db 69	; Note reference (5). Primary wait (0).
	db 130	; Note reference (2). Secondary wait (1).
	db 78	; New escaped note: 31. Primary wait (0).
	db 31	;   Escape note value.
	db 79	; Same escaped note: 31. Primary wait (0).
	db 66	; Note reference (2). Primary wait (0).
	db 143	; Same escaped note: 31. Secondary wait (1).
	db 142	; New escaped note: 43. Secondary wait (1).
	db 43	;   Escape note value.
	db 79	; Same escaped note: 43. Primary wait (0).
	db 190	; New instrument (11). New escaped note: 31. Secondary wait (1).
	db 31	;   Escape note value.
	db 11	;   Escape instrument value.
	db 127	; New instrument (1). Same escaped note: 31. Primary wait (0).
	db 1	;   Escape instrument value.
	db 78	; New escaped note: 19. Primary wait (0).
	db 19	;   Escape note value.
	db 14	; New escaped note: 31. 
	db 31	;   Escape note value.
	db 79	; Same escaped note: 31. Primary wait (0).
	db 66	; Note reference (2). Primary wait (0).
	db 69	; Note reference (5). Primary wait (0).
	db 69	; Note reference (5). Primary wait (0).
	db 2	; Note reference (2). 
	db 130	; Note reference (2). Secondary wait (1).
	db 117	; New instrument (11). Note reference (5). Primary wait (0).
	db 11	;   Escape instrument value.
	db 178	; New instrument (1). Note reference (2). Secondary wait (1).
	db 1	;   Escape instrument value.
	db 66	; Note reference (2). Primary wait (0).
	db 133	; Note reference (5). Secondary wait (1).
	db 194	; Note reference (2). New wait (127).
	db 127	;   Escape wait value.

SokobanKrusty_Subsong0_Track1
	db 12	; Note with effects flag.
	db 241	; New instrument (2). Note reference (1). New wait (12).
	db 2	;   Escape instrument value.
	db 12	;   Escape wait value.
	db 0	;    Reset effect, with inverted volume: 0.
	db 71	; Note reference (7). Primary wait (0).
	db 78	; New escaped note: 66. Primary wait (0).
	db 66	;   Escape note value.
	db 71	; Note reference (7). Primary wait (0).
	db 193	; Note reference (1). New wait (11).
	db 11	;   Escape wait value.
	db 196	; Note reference (4). New wait (3).
	db 3	;   Escape wait value.
	db 203	; Note reference (11). New wait (11).
	db 11	;   Escape wait value.
	db 198	; Note reference (6). New wait (3).
	db 3	;   Escape wait value.
	db 192	; Note reference (0). New wait (127).
	db 127	;   Escape wait value.

SokobanKrusty_Subsong0_Track2
	db 12	; Note with effects flag.
	db 128	; Note reference (0). Secondary wait (1).
	db 0	;    Reset effect, with inverted volume: 0.
	db 192	; Note reference (0). New wait (3).
	db 3	;   Escape wait value.
	db 132	; Note reference (4). Secondary wait (1).
	db 73	; Note reference (9). Primary wait (0).
	db 68	; Note reference (4). Primary wait (0).
	db 64	; Note reference (0). Primary wait (0).
	db 75	; Note reference (11). Primary wait (0).
	db 192	; Note reference (0). New wait (2).
	db 2	;   Escape wait value.
	db 68	; Note reference (4). Primary wait (0).
	db 137	; Note reference (9). Secondary wait (1).
	db 142	; New escaped note: 51. Secondary wait (1).
	db 51	;   Escape note value.
	db 143	; Same escaped note: 51. Secondary wait (1).
	db 73	; Note reference (9). Primary wait (0).
	db 68	; Note reference (4). Primary wait (0).
	db 137	; Note reference (9). Secondary wait (1).
	db 68	; Note reference (4). Primary wait (0).
	db 73	; Note reference (9). Primary wait (0).
	db 79	; Same escaped note: 51. Primary wait (0).
	db 73	; Note reference (9). Primary wait (0).
	db 195	; Note reference (3). New wait (127).
	db 127	;   Escape wait value.

SokobanKrusty_Subsong0_Track3
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (8). Note reference (3). Primary wait (0).
	db 19	;    Volume effect, with inverted volume: 1.
	db 22	;    Arpeggio table effect 1.
	db 96	; Secondary instrument (8). Note reference (0). Primary wait (0).
	db 97	; Secondary instrument (8). Note reference (1). Primary wait (0).
	db 96	; Secondary instrument (8). Note reference (0). Primary wait (0).
	db 99	; Secondary instrument (8). Note reference (3). Primary wait (0).
	db 96	; Secondary instrument (8). Note reference (0). Primary wait (0).
	db 97	; Secondary instrument (8). Note reference (1). Primary wait (0).
	db 96	; Secondary instrument (8). Note reference (0). Primary wait (0).
	db 97	; Secondary instrument (8). Note reference (1). Primary wait (0).
	db 96	; Secondary instrument (8). Note reference (0). Primary wait (0).
	db 99	; Secondary instrument (8). Note reference (3). Primary wait (0).
	db 96	; Secondary instrument (8). Note reference (0). Primary wait (0).
	db 97	; Secondary instrument (8). Note reference (1). Primary wait (0).
	db 96	; Secondary instrument (8). Note reference (0). Primary wait (0).
	db 99	; Secondary instrument (8). Note reference (3). Primary wait (0).
	db 97	; Secondary instrument (8). Note reference (1). Primary wait (0).
	db 96	; Secondary instrument (8). Note reference (0). Primary wait (0).
	db 99	; Secondary instrument (8). Note reference (3). Primary wait (0).
	db 110	; Secondary instrument (8). New escaped note: 51. Primary wait (0).
	db 51	;   Escape note value.
	db 100	; Secondary instrument (8). Note reference (4). Primary wait (0).
	db 107	; Secondary instrument (8). Note reference (11). Primary wait (0).
	db 103	; Secondary instrument (8). Note reference (7). Primary wait (0).
	db 161	; Secondary instrument (8). Note reference (1). Secondary wait (1).
	db 110	; Secondary instrument (8). New escaped note: 49. Primary wait (0).
	db 49	;   Escape note value.
	db 96	; Secondary instrument (8). Note reference (0). Primary wait (0).
	db 103	; Secondary instrument (8). Note reference (7). Primary wait (0).
	db 160	; Secondary instrument (8). Note reference (0). Secondary wait (1).
	db 103	; Secondary instrument (8). Note reference (7). Primary wait (0).
	db 97	; Secondary instrument (8). Note reference (1). Primary wait (0).
	db 224	; Secondary instrument (8). Note reference (0). New wait (127).
	db 127	;   Escape wait value.

SokobanKrusty_Subsong0_Track4
	db 12	; Note with effects flag.
	db 73	; Note reference (9). Primary wait (0).
	db 32	;    Reset effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 68	; Note reference (4). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 64	; Note reference (0). Primary wait (0).
	db 75	; Note reference (11). Primary wait (0).
	db 64	; Note reference (0). Primary wait (0).
	db 70	; Note reference (6). Primary wait (0).
	db 75	; Note reference (11). Primary wait (0).
	db 68	; Note reference (4). Primary wait (0).
	db 0	; Note reference (0). 
	db 67	; Note reference (3). Primary wait (0).
	db 78	; New escaped note: 51. Primary wait (0).
	db 51	;   Escape note value.
	db 68	; Note reference (4). Primary wait (0).
	db 73	; Note reference (9). Primary wait (0).
	db 79	; Same escaped note: 51. Primary wait (0).
	db 195	; Note reference (3). New wait (4).
	db 4	;   Escape wait value.
	db 221	; Effect only. New wait (2).
	db 2	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 93	; Effect only. Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 93	; Effect only. Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 93	; Effect only. Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 157	; Effect only. Secondary wait (1).
	db 82	;    Volume effect, with inverted volume: 5.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 98	;    Volume effect, with inverted volume: 6.

SokobanKrusty_Subsong0_Track5
	db 12	; Note with effects flag.
	db 127	; New instrument (5). Same escaped note: 74. Primary wait (0).
	db 5	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 78	; New escaped note: 75. Primary wait (0).
	db 75	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 142	; New escaped note: 78. Secondary wait (1).
	db 78	;   Escape note value.
	db 78	; New escaped note: 74. Primary wait (0).
	db 74	;   Escape note value.
	db 78	; New escaped note: 75. Primary wait (0).
	db 75	;   Escape note value.
	db 78	; New escaped note: 79. Primary wait (0).
	db 79	;   Escape note value.
	db 14	; New escaped note: 78. 
	db 78	;   Escape note value.
	db 78	; New escaped note: 79. Primary wait (0).
	db 79	;   Escape note value.
	db 78	; New escaped note: 81. Primary wait (0).
	db 81	;   Escape note value.
	db 78	; New escaped note: 82. Primary wait (0).
	db 82	;   Escape note value.
	db 78	; New escaped note: 86. Primary wait (0).
	db 86	;   Escape note value.
	db 78	; New escaped note: 85. Primary wait (0).
	db 85	;   Escape note value.
	db 78	; New escaped note: 82. Primary wait (0).
	db 82	;   Escape note value.
	db 78	; New escaped note: 85. Primary wait (0).
	db 85	;   Escape note value.
	db 78	; New escaped note: 82. Primary wait (0).
	db 82	;   Escape note value.
	db 142	; New escaped note: 81. Secondary wait (1).
	db 81	;   Escape note value.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 157	; Effect only. Secondary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 29	; Effect only. 
	db 50	;    Volume effect, with inverted volume: 3.
	db 93	; Effect only. Primary wait (0).
	db 35	;    Volume effect, with inverted volume: 2.
	db 244	;    Pitch up: 32.
	db 32	;    Pitch, LSB.
	db 128	;    Pitch, MSB.
	db 12	; Note with effects flag.
	db 78	; New escaped note: 82. Primary wait (0).
	db 82	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 78	; New escaped note: 81. Primary wait (0).
	db 81	;   Escape note value.
	db 78	; New escaped note: 79. Primary wait (0).
	db 79	;   Escape note value.
	db 78	; New escaped note: 78. Primary wait (0).
	db 78	;   Escape note value.
	db 206	; New escaped note: 75. New wait (127).
	db 75	;   Escape note value.
	db 127	;   Escape wait value.

SokobanKrusty_Subsong0_Track6
	db 12	; Note with effects flag.
	db 254	; New instrument (17). New escaped note: 43. New wait (127).
	db 43	;   Escape note value.
	db 17	;   Escape instrument value.
	db 127	;   Escape wait value.
	db 99	;    Volume effect, with inverted volume: 6.
	db 41	;    Pitch table effect 2.
	db 70	;    Arpeggio table effect 4.

SokobanKrusty_Subsong0_Track7
	db 12	; Note with effects flag.
	db 127	; New instrument (6). Same escaped note: 74. Primary wait (0).
	db 6	;   Escape instrument value.
	db 243	;    Volume effect, with inverted volume: 15.
	db 41	;    Pitch table effect 2.
	db 22	;    Arpeggio table effect 1.
	db 129	; Note reference (1). Secondary wait (1).
	db 12	; Note with effects flag.
	db 138	; Note reference (10). Secondary wait (1).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 78	; New escaped note: 72. Primary wait (0).
	db 72	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 78	; New escaped note: 74. Primary wait (0).
	db 74	;   Escape note value.
	db 65	; Note reference (1). Primary wait (0).
	db 78	; New escaped note: 72. Primary wait (0).
	db 72	;   Escape note value.
	db 142	; New escaped note: 74. Secondary wait (1).
	db 74	;   Escape note value.
	db 129	; Note reference (1). Secondary wait (1).
	db 138	; Note reference (10). Secondary wait (1).
	db 78	; New escaped note: 69. Primary wait (0).
	db 69	;   Escape note value.
	db 78	; New escaped note: 72. Primary wait (0).
	db 72	;   Escape note value.
	db 142	; New escaped note: 74. Secondary wait (1).
	db 74	;   Escape note value.
	db 129	; Note reference (1). Secondary wait (1).
	db 78	; New escaped note: 72. Primary wait (0).
	db 72	;   Escape note value.
	db 138	; Note reference (10). Secondary wait (1).
	db 78	; New escaped note: 69. Primary wait (0).
	db 69	;   Escape note value.
	db 78	; New escaped note: 74. Primary wait (0).
	db 74	;   Escape note value.
	db 78	; New escaped note: 72. Primary wait (0).
	db 72	;   Escape note value.
	db 74	; Note reference (10). Primary wait (0).
	db 142	; New escaped note: 69. Secondary wait (1).
	db 69	;   Escape note value.
	db 193	; Note reference (1). New wait (127).
	db 127	;   Escape wait value.

SokobanKrusty_Subsong0_Track8
	db 12	; Note with effects flag.
	db 241	; New instrument (6). Note reference (1). New wait (31).
	db 6	;   Escape instrument value.
	db 31	;   Escape wait value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 9	;    Pitch table effect 0.
	db 54	;    Arpeggio table effect 3.
	db 202	; Note reference (10). New wait (2).
	db 2	;   Escape wait value.
	db 180	; New instrument (10). Note reference (4). Secondary wait (1).
	db 10	;   Escape instrument value.
	db 74	; Note reference (10). Primary wait (0).
	db 196	; Note reference (4). New wait (3).
	db 3	;   Escape wait value.
	db 202	; Note reference (10). New wait (5).
	db 5	;   Escape wait value.
	db 241	; New instrument (6). Note reference (1). New wait (10).
	db 6	;   Escape instrument value.
	db 10	;   Escape wait value.
	db 126	; New instrument (10). New escaped note: 61. Primary wait (0).
	db 61	;   Escape note value.
	db 10	;   Escape instrument value.
	db 70	; Note reference (6). Primary wait (0).
	db 78	; New escaped note: 59. Primary wait (0).
	db 59	;   Escape note value.
	db 75	; Note reference (11). Primary wait (0).
	db 192	; Note reference (0). New wait (127).
	db 127	;   Escape wait value.

SokobanKrusty_Subsong0_Track9
	db 12	; Note with effects flag.
	db 114	; New instrument (1). Note reference (2). Primary wait (0).
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 2	; Note reference (2). 
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 66	; Note reference (2). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 2	; Note reference (2). 
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 66	; Note reference (2). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 2	; Note reference (2). 
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 66	; Note reference (2). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 194	; Note reference (2). New wait (127).
	db 127	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.

SokobanKrusty_Subsong0_Track10
	db 12	; Note with effects flag.
	db 243	; New instrument (5). Note reference (3). New wait (13).
	db 5	;   Escape instrument value.
	db 13	;   Escape wait value.
	db 99	;    Volume effect, with inverted volume: 6.
	db 41	;    Pitch table effect 2.
	db 70	;    Arpeggio table effect 4.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 130	;    Volume effect, with inverted volume: 8.

SokobanKrusty_Subsong0_Track11
	db 12	; Note with effects flag.
	db 241	; New instrument (10). Note reference (1). New wait (127).
	db 10	;   Escape instrument value.
	db 127	;   Escape wait value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 54	;    Arpeggio table effect 3.

SokobanKrusty_Subsong0_Track12
	db 141	; Secondary wait (1).
	db 12	; Note with effects flag.
	db 30	; Primary instrument (9). New escaped note: 66. 
	db 66	;   Escape note value.
	db 0	;    Reset effect, with inverted volume: 0.
	db 26	; Primary instrument (9). Note reference (10). 
	db 30	; Primary instrument (9). New escaped note: 69. 
	db 69	;   Escape note value.
	db 255	; New instrument (14). Same escaped note: 69. New wait (8).
	db 14	;   Escape instrument value.
	db 8	;   Escape wait value.
	db 223	; Primary instrument (9). Same escaped note: 69. New wait (4).
	db 4	;   Escape wait value.
	db 29	; Effect only. 
	db 24	;    Pitch table effect 1.
	db 93	; Effect only. Primary wait (0).
	db 35	;    Volume effect, with inverted volume: 2.
	db 244	;    Pitch down: 256.
	db 0	;    Pitch, LSB.
	db 1	;    Pitch, MSB.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 67	;    Volume effect, with inverted volume: 4.
	db 244	;    Pitch down: 896.
	db 128	;    Pitch, LSB.
	db 3	;    Pitch, MSB.

SokobanKrusty_Subsong0_Track13
	db 12	; Note with effects flag.
	db 128	; Note reference (0). Secondary wait (1).
	db 0	;    Reset effect, with inverted volume: 0.
	db 192	; Note reference (0). New wait (3).
	db 3	;   Escape wait value.
	db 132	; Note reference (4). Secondary wait (1).
	db 73	; Note reference (9). Primary wait (0).
	db 68	; Note reference (4). Primary wait (0).
	db 64	; Note reference (0). Primary wait (0).
	db 75	; Note reference (11). Primary wait (0).
	db 192	; Note reference (0). New wait (2).
	db 2	;   Escape wait value.
	db 70	; Note reference (6). Primary wait (0).
	db 139	; Note reference (11). Secondary wait (1).
	db 78	; New escaped note: 61. Primary wait (0).
	db 61	;   Escape note value.
	db 65	; Note reference (1). Primary wait (0).
	db 143	; Same escaped note: 61. Secondary wait (1).
	db 0	; Note reference (0). 
	db 73	; Note reference (9). Primary wait (0).
	db 68	; Note reference (4). Primary wait (0).
	db 73	; Note reference (9). Primary wait (0).
	db 78	; New escaped note: 51. Primary wait (0).
	db 51	;   Escape note value.
	db 73	; Note reference (9). Primary wait (0).
	db 195	; Note reference (3). New wait (127).
	db 127	;   Escape wait value.

SokobanKrusty_Subsong0_Track14
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (8). Note reference (3). Primary wait (0).
	db 19	;    Volume effect, with inverted volume: 1.
	db 22	;    Arpeggio table effect 1.
	db 96	; Secondary instrument (8). Note reference (0). Primary wait (0).
	db 97	; Secondary instrument (8). Note reference (1). Primary wait (0).
	db 96	; Secondary instrument (8). Note reference (0). Primary wait (0).
	db 99	; Secondary instrument (8). Note reference (3). Primary wait (0).
	db 96	; Secondary instrument (8). Note reference (0). Primary wait (0).
	db 97	; Secondary instrument (8). Note reference (1). Primary wait (0).
	db 96	; Secondary instrument (8). Note reference (0). Primary wait (0).
	db 97	; Secondary instrument (8). Note reference (1). Primary wait (0).
	db 96	; Secondary instrument (8). Note reference (0). Primary wait (0).
	db 99	; Secondary instrument (8). Note reference (3). Primary wait (0).
	db 96	; Secondary instrument (8). Note reference (0). Primary wait (0).
	db 97	; Secondary instrument (8). Note reference (1). Primary wait (0).
	db 96	; Secondary instrument (8). Note reference (0). Primary wait (0).
	db 99	; Secondary instrument (8). Note reference (3). Primary wait (0).
	db 97	; Secondary instrument (8). Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (8). Note reference (0). Primary wait (0).
	db 242	;    Volume effect, with inverted volume: 15.
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (8). Note reference (3). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 110	; Secondary instrument (8). New escaped note: 51. Primary wait (0).
	db 51	;   Escape note value.
	db 100	; Secondary instrument (8). Note reference (4). Primary wait (0).
	db 107	; Secondary instrument (8). Note reference (11). Primary wait (0).
	db 103	; Secondary instrument (8). Note reference (7). Primary wait (0).
	db 161	; Secondary instrument (8). Note reference (1). Secondary wait (1).
	db 110	; Secondary instrument (8). New escaped note: 49. Primary wait (0).
	db 49	;   Escape note value.
	db 96	; Secondary instrument (8). Note reference (0). Primary wait (0).
	db 103	; Secondary instrument (8). Note reference (7). Primary wait (0).
	db 160	; Secondary instrument (8). Note reference (0). Secondary wait (1).
	db 103	; Secondary instrument (8). Note reference (7). Primary wait (0).
	db 97	; Secondary instrument (8). Note reference (1). Primary wait (0).
	db 224	; Secondary instrument (8). Note reference (0). New wait (127).
	db 127	;   Escape wait value.

SokobanKrusty_Subsong0_Track15
	db 12	; Note with effects flag.
	db 241	; New instrument (2). Note reference (1). New wait (4).
	db 2	;   Escape instrument value.
	db 4	;   Escape wait value.
	db 1	;    Reset effect, with inverted volume: 0.
	db 166	;    Arpeggio table effect 10.
	db 93	; Effect only. Primary wait (0).
	db 182	;    Arpeggio table effect 11.
	db 93	; Effect only. Primary wait (0).
	db 198	;    Arpeggio table effect 12.
	db 93	; Effect only. Primary wait (0).
	db 214	;    Arpeggio table effect 13.
	db 29	; Effect only. 
	db 166	;    Arpeggio table effect 10.
	db 71	; Note reference (7). Primary wait (0).
	db 78	; New escaped note: 66. Primary wait (0).
	db 66	;   Escape note value.
	db 71	; Note reference (7). Primary wait (0).
	db 193	; Note reference (1). New wait (11).
	db 11	;   Escape wait value.
	db 12	; Note with effects flag.
	db 196	; Note reference (4). New wait (3).
	db 3	;   Escape wait value.
	db 19	;    Volume effect, with inverted volume: 1.
	db 230	;    Arpeggio table effect 14.
	db 12	; Note with effects flag.
	db 203	; Note reference (11). New wait (11).
	db 11	;   Escape wait value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 246	;    Effect escape value, because >14.
	db 15	;    Arpeggio table effect 15.
	db 12	; Note with effects flag.
	db 198	; Note reference (6). New wait (3).
	db 3	;   Escape wait value.
	db 214	;    Arpeggio table effect 13.
	db 12	; Note with effects flag.
	db 192	; Note reference (0). New wait (127).
	db 127	;   Escape wait value.
	db 246	;    Effect escape value, because >14.
	db 16	;    Arpeggio table effect 16.

SokobanKrusty_Subsong0_Track16
	db 12	; Note with effects flag.
	db 113	; New instrument (15). Note reference (1). Primary wait (0).
	db 15	;   Escape instrument value.
	db 0	;    Reset effect, with inverted volume: 0.
	db 71	; Note reference (7). Primary wait (0).
	db 78	; New escaped note: 66. Primary wait (0).
	db 66	;   Escape note value.
	db 93	; Effect only. Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 113	; New instrument (16). Note reference (1). Primary wait (0).
	db 16	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 71	; Note reference (7). Primary wait (0).
	db 12	; Note with effects flag.
	db 63	; New instrument (15). Same escaped note: 66. 
	db 15	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 113	; New instrument (16). Note reference (1). Primary wait (0).
	db 16	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 71	; Note reference (7). Primary wait (0).
	db 126	; New instrument (15). New escaped note: 69. Primary wait (0).
	db 69	;   Escape note value.
	db 15	;   Escape instrument value.
	db 127	; New instrument (16). Same escaped note: 69. Primary wait (0).
	db 16	;   Escape instrument value.
	db 74	; Note reference (10). Primary wait (0).
	db 71	; Note reference (7). Primary wait (0).
	db 78	; New escaped note: 66. Primary wait (0).
	db 66	;   Escape note value.
	db 12	; Note with effects flag.
	db 177	; New instrument (15). Note reference (1). Secondary wait (1).
	db 15	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 93	; Effect only. Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 157	; Effect only. Secondary wait (1).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 182	; New instrument (16). Note reference (6). Secondary wait (1).
	db 16	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 70	; Note reference (6). Primary wait (0).
	db 12	; Note with effects flag.
	db 129	; Note reference (1). Secondary wait (1).
	db 40	;    Pitch table effect 2.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 70	; Note reference (6). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 8	;    Pitch table effect 0.
	db 65	; Note reference (1). Primary wait (0).
	db 70	; Note reference (6). Primary wait (0).
	db 128	; Note reference (0). Secondary wait (1).
	db 93	; Effect only. Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 68	; Note reference (4). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 24	;    Pitch table effect 1.
	db 78	; New escaped note: 56. Primary wait (0).
	db 56	;   Escape note value.
	db 70	; Note reference (6). Primary wait (0).
	db 78	; New escaped note: 59. Primary wait (0).
	db 59	;   Escape note value.
	db 71	; Note reference (7). Primary wait (0).
	db 12	; Note with effects flag.
	db 1	; Note reference (1). 
	db 40	;    Pitch table effect 2.
	db 78	; New escaped note: 65. Primary wait (0).
	db 65	;   Escape note value.
	db 135	; Note reference (7). Secondary wait (1).
	db 78	; New escaped note: 68. Primary wait (0).
	db 68	;   Escape note value.
	db 74	; Note reference (10). Primary wait (0).
	db 78	; New escaped note: 72. Primary wait (0).
	db 72	;   Escape note value.
	db 126	; New instrument (15). New escaped note: 71. Primary wait (0).
	db 71	;   Escape note value.
	db 15	;   Escape instrument value.
	db 93	; Effect only. Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 157	; Effect only. Secondary wait (1).
	db 50	;    Volume effect, with inverted volume: 3.
	db 157	; Effect only. Secondary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 49	; New instrument (16). Note reference (1). 
	db 16	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 70	; Note reference (6). Primary wait (0).
	db 120	; New instrument (0). Note reference (8). Primary wait (0).
	db 0	;   Escape instrument value.
	db 118	; New instrument (16). Note reference (6). Primary wait (0).
	db 16	;   Escape instrument value.
	db 120	; New instrument (0). Note reference (8). Primary wait (0).
	db 0	;   Escape instrument value.
	db 118	; New instrument (16). Note reference (6). Primary wait (0).
	db 16	;   Escape instrument value.
	db 129	; Note reference (1). Secondary wait (1).
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 50	;    Volume effect, with inverted volume: 3.

SokobanKrusty_Subsong0_Track17
	db 12	; Note with effects flag.
	db 101	; Secondary instrument (8). Note reference (5). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 9	;    Pitch table effect 0.
	db 6	;    Arpeggio table effect 0.
	db 110	; Secondary instrument (8). New escaped note: 45. Primary wait (0).
	db 45	;   Escape note value.
	db 99	; Secondary instrument (8). Note reference (3). Primary wait (0).
	db 111	; Secondary instrument (8). Same escaped note: 45. Primary wait (0).
	db 12	; Note with effects flag.
	db 241	; New instrument (2). Note reference (1). New wait (4).
	db 2	;   Escape instrument value.
	db 4	;   Escape wait value.
	db 83	;    Volume effect, with inverted volume: 5.
	db 41	;    Pitch table effect 2.
	db 22	;    Arpeggio table effect 1.
	db 12	; Note with effects flag.
	db 101	; Secondary instrument (8). Note reference (5). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 9	;    Pitch table effect 0.
	db 6	;    Arpeggio table effect 0.
	db 111	; Secondary instrument (8). Same escaped note: 45. Primary wait (0).
	db 99	; Secondary instrument (8). Note reference (3). Primary wait (0).
	db 99	; Secondary instrument (8). Note reference (3). Primary wait (0).
	db 175	; Secondary instrument (8). Same escaped note: 45. Secondary wait (1).
	db 163	; Secondary instrument (8). Note reference (3). Secondary wait (1).
	db 111	; Secondary instrument (8). Same escaped note: 45. Primary wait (0).
	db 110	; Secondary instrument (8). New escaped note: 46. Primary wait (0).
	db 46	;   Escape note value.
	db 110	; Secondary instrument (8). New escaped note: 43. Primary wait (0).
	db 43	;   Escape note value.
	db 12	; Note with effects flag.
	db 195	; Note reference (3). New wait (2).
	db 2	;   Escape wait value.
	db 83	;    Volume effect, with inverted volume: 5.
	db 41	;    Pitch table effect 2.
	db 22	;    Arpeggio table effect 1.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (0).
	db 35	;    Volume effect, with inverted volume: 2.
	db 25	;    Pitch table effect 1.
	db 6	;    Arpeggio table effect 0.
	db 80	; Primary instrument (9). Note reference (0). Primary wait (0).
	db 91	; Primary instrument (9). Note reference (11). Primary wait (0).
	db 81	; Primary instrument (9). Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 80	; Primary instrument (9). Note reference (0). Primary wait (0).
	db 90	; Primary instrument (9). Note reference (10). Primary wait (0).
	db 81	; Primary instrument (9). Note reference (1). Primary wait (0).
	db 93	; Effect only. Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 196	; Note reference (4). New wait (7).
	db 7	;   Escape wait value.
	db 67	;    Volume effect, with inverted volume: 4.
	db 41	;    Pitch table effect 2.
	db 22	;    Arpeggio table effect 1.
	db 12	; Note with effects flag.
	db 100	; Secondary instrument (8). Note reference (4). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 9	;    Pitch table effect 0.
	db 6	;    Arpeggio table effect 0.
	db 120	; New instrument (0). Note reference (8). Primary wait (0).
	db 0	;   Escape instrument value.
	db 86	; Primary instrument (9). Note reference (6). Primary wait (0).
	db 102	; Secondary instrument (8). Note reference (6). Primary wait (0).
	db 72	; Note reference (8). Primary wait (0).
	db 12	; Note with effects flag.
	db 86	; Primary instrument (9). Note reference (6). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 72	; Note reference (8). Primary wait (0).
	db 12	; Note with effects flag.
	db 110	; Secondary instrument (8). New escaped note: 53. Primary wait (0).
	db 53	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 72	; Note reference (8). Primary wait (0).
	db 99	; Secondary instrument (8). Note reference (3). Primary wait (0).
	db 99	; Secondary instrument (8). Note reference (3). Primary wait (0).
	db 72	; Note reference (8). Primary wait (0).
	db 104	; Secondary instrument (8). Note reference (8). Primary wait (0).
	db 104	; Secondary instrument (8). Note reference (8). Primary wait (0).
	db 72	; Note reference (8). Primary wait (0).
	db 227	; Secondary instrument (8). Note reference (3). New wait (2).
	db 2	;   Escape wait value.
	db 72	; Note reference (8). Primary wait (0).
	db 99	; Secondary instrument (8). Note reference (3). Primary wait (0).
	db 104	; Secondary instrument (8). Note reference (8). Primary wait (0).
	db 110	; Secondary instrument (8). New escaped note: 45. Primary wait (0).
	db 45	;   Escape note value.
	db 72	; Note reference (8). Primary wait (0).
	db 239	; Secondary instrument (8). Same escaped note: 45. New wait (127).
	db 127	;   Escape wait value.

SokobanKrusty_Subsong0DisarkByteRegionEnd5
; The note indexes.
SokobanKrusty_Subsong0_NoteIndexes
SokobanKrusty_Subsong0DisarkByteRegionStart6
	db 57	; Note for index 0.
	db 62	; Note for index 1.
	db 26	; Note for index 2.
	db 50	; Note for index 3.
	db 55	; Note for index 4.
	db 38	; Note for index 5.
	db 60	; Note for index 6.
	db 63	; Note for index 7.
	db 48	; Note for index 8.
	db 54	; Note for index 9.
	db 67	; Note for index 10.
	db 58	; Note for index 11.
SokobanKrusty_Subsong0DisarkByteRegionEnd6

; Sokoban - Krusty, Subsong 1.
; ----------------------------------

SokobanKrusty_Subsong1
SokobanKrusty_Subsong1DisarkPointerRegionStart0
	dw SokobanKrusty_Subsong1_NoteIndexes	; Index table for the notes.
	dw SokobanKrusty_Subsong1_TrackIndexes	; Index table for the Tracks.
SokobanKrusty_Subsong1DisarkPointerRegionEnd0

SokobanKrusty_Subsong1DisarkByteRegionStart1
	db 6	; Initial speed.

	db 9	; Most used instrument.
	db 8	; Second most used instrument.

	db 0	; Most used wait.
	db 1	; Second most used wait.

	db 43	; Default start note in tracks.
	db 18	; Default start instrument in tracks.
	db 1	; Default start wait in tracks.

	db 12	; Are there effects? 12 if yes, 13 if not. Don't ask.
SokobanKrusty_Subsong1DisarkByteRegionEnd1

; The Linker.
SokobanKrusty_Subsong1DisarkByteRegionStart2
; Pattern 0
SokobanKrusty_Subsong1_Loop
	db 171	; State byte.
	db 5	; New speed (>0).
	db 63	; New height.
	db ((SokobanKrusty_Subsong1_Track9 - ($ + 2)) & #ff00) / 256	; New track (9) for channel 1, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track9 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong1_Track0 - ($ + 2)) & #ff00) / 256	; New track (0) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track0 - ($ + 1)) & 255)
	db 128	; New track (1) for channel 3, as a reference (index 0).

; Pattern 1
	db 40	; State byte.
	db ((SokobanKrusty_Subsong1_Track8 - ($ + 2)) & #ff00) / 256	; New track (8) for channel 1, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track8 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong1_Track6 - ($ + 2)) & #ff00) / 256	; New track (6) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track6 - ($ + 1)) & 255)

; Pattern 2
	db 40	; State byte.
	db ((SokobanKrusty_Subsong1_Track2 - ($ + 2)) & #ff00) / 256	; New track (2) for channel 1, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track2 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong1_Track3 - ($ + 2)) & #ff00) / 256	; New track (3) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track3 - ($ + 1)) & 255)

; Pattern 3
	db 40	; State byte.
	db ((SokobanKrusty_Subsong1_Track10 - ($ + 2)) & #ff00) / 256	; New track (10) for channel 1, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track10 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong1_Track5 - ($ + 2)) & #ff00) / 256	; New track (5) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track5 - ($ + 1)) & 255)

; Pattern 4
	db 168	; State byte.
	db ((SokobanKrusty_Subsong1_Track12 - ($ + 2)) & #ff00) / 256	; New track (12) for channel 1, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track12 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong1_Track16 - ($ + 2)) & #ff00) / 256	; New track (16) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track16 - ($ + 1)) & 255)
	db 129	; New track (14) for channel 3, as a reference (index 1).

; Pattern 5
	db 168	; State byte.
	db ((SokobanKrusty_Subsong1_Track15 - ($ + 2)) & #ff00) / 256	; New track (15) for channel 1, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track15 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong1_Track18 - ($ + 2)) & #ff00) / 256	; New track (18) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track18 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong1_Track11 - ($ + 2)) & #ff00) / 256	; New track (11) for channel 3, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track11 - ($ + 1)) & 255)

; Pattern 6
	db 168	; State byte.
	db ((SokobanKrusty_Subsong1_Track4 - ($ + 2)) & #ff00) / 256	; New track (4) for channel 1, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track4 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong1_Track20 - ($ + 2)) & #ff00) / 256	; New track (20) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track20 - ($ + 1)) & 255)
	db 128	; New track (1) for channel 3, as a reference (index 0).

; Pattern 7
	db 40	; State byte.
	db ((SokobanKrusty_Subsong1_Track7 - ($ + 2)) & #ff00) / 256	; New track (7) for channel 1, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track7 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong1_Track25 - ($ + 2)) & #ff00) / 256	; New track (25) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track25 - ($ + 1)) & 255)

; Pattern 8
	db 40	; State byte.
	db ((SokobanKrusty_Subsong1_Track13 - ($ + 2)) & #ff00) / 256	; New track (13) for channel 1, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track13 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong1_Track22 - ($ + 2)) & #ff00) / 256	; New track (22) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track22 - ($ + 1)) & 255)

; Pattern 9
	db 40	; State byte.
	db ((SokobanKrusty_Subsong1_Track26 - ($ + 2)) & #ff00) / 256	; New track (26) for channel 1, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track26 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong1_Track27 - ($ + 2)) & #ff00) / 256	; New track (27) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track27 - ($ + 1)) & 255)

; Pattern 10
	db 168	; State byte.
	db ((SokobanKrusty_Subsong1_Track19 - ($ + 2)) & #ff00) / 256	; New track (19) for channel 1, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track19 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong1_Track23 - ($ + 2)) & #ff00) / 256	; New track (23) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track23 - ($ + 1)) & 255)
	db 129	; New track (14) for channel 3, as a reference (index 1).

; Pattern 11
	db 168	; State byte.
	db ((SokobanKrusty_Subsong1_Track21 - ($ + 2)) & #ff00) / 256	; New track (21) for channel 1, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track21 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong1_Track24 - ($ + 2)) & #ff00) / 256	; New track (24) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track24 - ($ + 1)) & 255)
	db 130	; New track (17) for channel 3, as a reference (index 2).

; Pattern 12
	db 168	; State byte.
	db ((SokobanKrusty_Subsong1_Track31 - ($ + 2)) & #ff00) / 256	; New track (31) for channel 1, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track31 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong1_Track16 - ($ + 2)) & #ff00) / 256	; New track (16) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track16 - ($ + 1)) & 255)
	db 129	; New track (14) for channel 3, as a reference (index 1).

; Pattern 13
	db 168	; State byte.
	db ((SokobanKrusty_Subsong1_Track29 - ($ + 2)) & #ff00) / 256	; New track (29) for channel 1, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track29 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong1_Track28 - ($ + 2)) & #ff00) / 256	; New track (28) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track28 - ($ + 1)) & 255)
	db 130	; New track (17) for channel 3, as a reference (index 2).

; Pattern 14
	db 168	; State byte.
	db ((SokobanKrusty_Subsong1_Track30 - ($ + 2)) & #ff00) / 256	; New track (30) for channel 1, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track30 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong1_Track20 - ($ + 2)) & #ff00) / 256	; New track (20) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track20 - ($ + 1)) & 255)
	db 128	; New track (1) for channel 3, as a reference (index 0).

; Pattern 15
	db 40	; State byte.
	db ((SokobanKrusty_Subsong1_Track7 - ($ + 2)) & #ff00) / 256	; New track (7) for channel 1, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track7 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong1_Track25 - ($ + 2)) & #ff00) / 256	; New track (25) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track25 - ($ + 1)) & 255)

; Pattern 16
	db 168	; State byte.
	db ((SokobanKrusty_Subsong1_Track19 - ($ + 2)) & #ff00) / 256	; New track (19) for channel 1, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track19 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong1_Track23 - ($ + 2)) & #ff00) / 256	; New track (23) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track23 - ($ + 1)) & 255)
	db 129	; New track (14) for channel 3, as a reference (index 1).

; Pattern 17
	db 168	; State byte.
	db ((SokobanKrusty_Subsong1_Track21 - ($ + 2)) & #ff00) / 256	; New track (21) for channel 1, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track21 - ($ + 1)) & 255)
	db ((SokobanKrusty_Subsong1_Track24 - ($ + 2)) & #ff00) / 256	; New track (24) for channel 2, as an offset. Offset MSB, then LSB.
	db ((SokobanKrusty_Subsong1_Track24 - ($ + 1)) & 255)
	db 130	; New track (17) for channel 3, as a reference (index 2).

	db 1	; End of the Song.
	db 0	; Speed to 0, meaning "end of song".
SokobanKrusty_Subsong1DisarkByteRegionEnd2
SokobanKrusty_Subsong1DisarkPointerRegionStart3
	dw SokobanKrusty_Subsong1_Loop

SokobanKrusty_Subsong1DisarkPointerRegionEnd3
; The indexes of the tracks.
SokobanKrusty_Subsong1_TrackIndexes
SokobanKrusty_Subsong1DisarkPointerRegionStart4
	dw SokobanKrusty_Subsong1_Track1	; Track 1, index 0.
	dw SokobanKrusty_Subsong1_Track14	; Track 14, index 1.
	dw SokobanKrusty_Subsong1_Track17	; Track 17, index 2.
SokobanKrusty_Subsong1DisarkPointerRegionEnd4

SokobanKrusty_Subsong1DisarkByteRegionStart5
SokobanKrusty_Subsong1_Track0
	db 12	; Note with effects flag.
	db 244	; New instrument (17). Note reference (4). New wait (2).
	db 17	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 35	;    Volume effect, with inverted volume: 2.
	db 246	;    Effect escape value, because >14.
	db 17	;    Arpeggio table effect 17.
	db 138	; Note reference (10). Secondary wait (1).
	db 78	; New escaped note: 53. Primary wait (0).
	db 53	;   Escape note value.
	db 132	; Note reference (4). Secondary wait (1).
	db 12	; Note with effects flag.
	db 53	; New instrument (4). Note reference (5). 
	db 4	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 6	;    Arpeggio table effect 0.
	db 12	; Note with effects flag.
	db 126	; New instrument (17). New escaped note: 65. Primary wait (0).
	db 65	;   Escape note value.
	db 17	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 74	; Note reference (10). Primary wait (0).
	db 12	; Note with effects flag.
	db 78	; New escaped note: 68. Primary wait (0).
	db 68	;   Escape note value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 78	; New escaped note: 72. Primary wait (0).
	db 72	;   Escape note value.
	db 78	; New escaped note: 68. Primary wait (0).
	db 68	;   Escape note value.
	db 74	; Note reference (10). Primary wait (0).
	db 79	; Same escaped note: 68. Primary wait (0).
	db 78	; New escaped note: 72. Primary wait (0).
	db 72	;   Escape note value.
	db 206	; New escaped note: 74. New wait (4).
	db 74	;   Escape note value.
	db 4	;   Escape wait value.
	db 12	; Note with effects flag.
	db 245	; New instrument (4). Note reference (5). New wait (3).
	db 4	;   Escape instrument value.
	db 3	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 126	; New instrument (17). New escaped note: 75. Primary wait (0).
	db 75	;   Escape note value.
	db 17	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 142	; New escaped note: 74. Secondary wait (1).
	db 74	;   Escape note value.
	db 78	; New escaped note: 75. Primary wait (0).
	db 75	;   Escape note value.
	db 206	; New escaped note: 74. New wait (5).
	db 74	;   Escape note value.
	db 5	;   Escape wait value.
	db 157	; Effect only. Secondary wait (1).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 53	; New instrument (4). Note reference (5). 
	db 4	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 177	; New instrument (17). Note reference (1). Secondary wait (1).
	db 17	;   Escape instrument value.
	db 51	;    Volume effect, with inverted volume: 3.
	db 246	;    Effect escape value, because >14.
	db 18	;    Arpeggio table effect 18.
	db 12	; Note with effects flag.
	db 142	; New escaped note: 72. Secondary wait (1).
	db 72	;   Escape note value.
	db 35	;    Volume effect, with inverted volume: 2.
	db 246	;    Effect escape value, because >14.
	db 19	;    Arpeggio table effect 19.
	db 12	; Note with effects flag.
	db 142	; New escaped note: 68. Secondary wait (1).
	db 68	;   Escape note value.
	db 51	;    Volume effect, with inverted volume: 3.
	db 246	;    Effect escape value, because >14.
	db 20	;    Arpeggio table effect 20.
	db 12	; Note with effects flag.
	db 142	; New escaped note: 71. Secondary wait (1).
	db 71	;   Escape note value.
	db 35	;    Volume effect, with inverted volume: 2.
	db 246	;    Effect escape value, because >14.
	db 21	;    Arpeggio table effect 21.
	db 12	; Note with effects flag.
	db 138	; Note reference (10). Secondary wait (1).
	db 51	;    Volume effect, with inverted volume: 3.
	db 246	;    Effect escape value, because >14.
	db 22	;    Arpeggio table effect 22.
	db 12	; Note with effects flag.
	db 53	; New instrument (4). Note reference (5). 
	db 4	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 6	;    Arpeggio table effect 0.
	db 12	; Note with effects flag.
	db 197	; Note reference (5). New wait (127).
	db 127	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.

SokobanKrusty_Subsong1_Track1
	db 206	; New escaped note: 19. New wait (7).
	db 19	;   Escape note value.
	db 7	;   Escape wait value.
	db 206	; New escaped note: 31. New wait (3).
	db 31	;   Escape note value.
	db 3	;   Escape wait value.
	db 206	; New escaped note: 19. New wait (127).
	db 19	;   Escape note value.
	db 127	;   Escape wait value.

SokobanKrusty_Subsong1_Track2
	db 12	; Note with effects flag.
	db 254	; New instrument (7). New escaped note: 19. New wait (5).
	db 19	;   Escape note value.
	db 7	;   Escape instrument value.
	db 5	;   Escape wait value.
	db 0	;    Reset effect, with inverted volume: 0.
	db 15	; Same escaped note: 19. 
	db 15	; Same escaped note: 19. 
	db 15	; Same escaped note: 19. 
	db 15	; Same escaped note: 19. 
	db 207	; Same escaped note: 19. New wait (4).
	db 4	;   Escape wait value.
	db 79	; Same escaped note: 19. Primary wait (0).
	db 207	; Same escaped note: 19. New wait (5).
	db 5	;   Escape wait value.
	db 15	; Same escaped note: 19. 
	db 143	; Same escaped note: 19. Secondary wait (1).
	db 79	; Same escaped note: 19. Primary wait (0).
	db 207	; Same escaped note: 19. New wait (2).
	db 2	;   Escape wait value.
	db 143	; Same escaped note: 19. Secondary wait (1).
	db 79	; Same escaped note: 19. Primary wait (0).
	db 78	; New escaped note: 25. Primary wait (0).
	db 25	;   Escape note value.
	db 143	; Same escaped note: 25. Secondary wait (1).
	db 206	; New escaped note: 19. New wait (127).
	db 19	;   Escape note value.
	db 127	;   Escape wait value.

SokobanKrusty_Subsong1_Track3
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 56	;    Pitch table effect 3.
	db 94	; Primary instrument (9). New escaped note: 53. Primary wait (0).
	db 53	;   Escape note value.
	db 94	; Primary instrument (9). New escaped note: 49. Primary wait (0).
	db 49	;   Escape note value.
	db 94	; Primary instrument (9). New escaped note: 43. Primary wait (0).
	db 43	;   Escape note value.
	db 94	; Primary instrument (9). New escaped note: 49. Primary wait (0).
	db 49	;   Escape note value.
	db 94	; Primary instrument (9). New escaped note: 53. Primary wait (0).
	db 53	;   Escape note value.
	db 212	; Primary instrument (9). Note reference (4). New wait (7).
	db 7	;   Escape wait value.
	db 94	; Primary instrument (9). New escaped note: 56. Primary wait (0).
	db 56	;   Escape note value.
	db 148	; Primary instrument (9). Note reference (4). Secondary wait (1).
	db 95	; Primary instrument (9). Same escaped note: 56. Primary wait (0).
	db 212	; Primary instrument (9). Note reference (4). New wait (3).
	db 3	;   Escape wait value.
	db 29	; Effect only. 
	db 50	;    Volume effect, with inverted volume: 3.
	db 56	; New instrument (0). Note reference (8). 
	db 0	;   Escape instrument value.
	db 184	; New instrument (19). Note reference (8). Secondary wait (1).
	db 19	;   Escape instrument value.
	db 72	; Note reference (8). Primary wait (0).
	db 72	; Note reference (8). Primary wait (0).
	db 12	; Note with effects flag.
	db 254	; New instrument (4). New escaped note: 43. New wait (5).
	db 43	;   Escape note value.
	db 4	;   Escape instrument value.
	db 5	;   Escape wait value.
	db 0	;    Reset effect, with inverted volume: 0.
	db 133	; Note reference (5). Secondary wait (1).
	db 197	; Note reference (5). New wait (3).
	db 3	;   Escape wait value.
	db 120	; New instrument (19). Note reference (8). Primary wait (0).
	db 19	;   Escape instrument value.
	db 72	; Note reference (8). Primary wait (0).
	db 136	; Note reference (8). Secondary wait (1).
	db 181	; New instrument (4). Note reference (5). Secondary wait (1).
	db 4	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 120	; New instrument (19). Note reference (8). Primary wait (0).
	db 19	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 72	; Note reference (8). Primary wait (0).
	db 8	; Note reference (8). 
	db 12	; Note with effects flag.
	db 53	; New instrument (4). Note reference (5). 
	db 4	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 120	; New instrument (19). Note reference (8). Primary wait (0).
	db 19	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 200	; Note reference (8). New wait (127).
	db 127	;   Escape wait value.

SokobanKrusty_Subsong1_Track4
	db 157	; Effect only. Secondary wait (1).
	db 130	;    Volume effect, with inverted volume: 8.
	db 157	; Effect only. Secondary wait (1).
	db 146	;    Volume effect, with inverted volume: 9.
	db 157	; Effect only. Secondary wait (1).
	db 162	;    Volume effect, with inverted volume: 10.
	db 248	; New instrument (0). Note reference (8). New wait (29).
	db 0	;   Escape instrument value.
	db 29	;   Escape wait value.
	db 12	; Note with effects flag.
	db 94	; Primary instrument (9). New escaped note: 56. Primary wait (0).
	db 56	;   Escape note value.
	db 115	;    Volume effect, with inverted volume: 7.
	db 246	;    Effect escape value, because >14.
	db 23	;    Arpeggio table effect 23.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 82	;    Volume effect, with inverted volume: 5.
	db 93	; Effect only. Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 157	; Effect only. Secondary wait (1).
	db 50	;    Volume effect, with inverted volume: 3.
	db 157	; Effect only. Secondary wait (1).
	db 244	;    Pitch down: 112.
	db 112	;    Pitch, LSB.
	db 0	;    Pitch, MSB.
	db 212	; Primary instrument (9). Note reference (4). New wait (127).
	db 127	;   Escape wait value.

SokobanKrusty_Subsong1_Track5
	db 221	; Effect only. New wait (7).
	db 7	;   Escape wait value.
	db 0	;    Reset effect, with inverted volume: 0.
	db 245	; New instrument (4). Note reference (5). New wait (3).
	db 4	;   Escape instrument value.
	db 3	;   Escape wait value.
	db 12	; Note with effects flag.
	db 223	; Primary instrument (9). Same escaped note: 43. New wait (11).
	db 11	;   Escape wait value.
	db 19	;    Volume effect, with inverted volume: 1.
	db 102	;    Arpeggio table effect 6.
	db 12	; Note with effects flag.
	db 197	; Note reference (5). New wait (3).
	db 3	;   Escape wait value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 6	;    Arpeggio table effect 0.
	db 12	; Note with effects flag.
	db 212	; Primary instrument (9). Note reference (4). New wait (6).
	db 6	;   Escape wait value.
	db 19	;    Volume effect, with inverted volume: 1.
	db 102	;    Arpeggio table effect 6.
	db 93	; Effect only. Primary wait (0).
	db 6	;    Arpeggio table effect 0.
	db 12	; Note with effects flag.
	db 94	; Primary instrument (9). New escaped note: 45. Primary wait (0).
	db 45	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 80	; Primary instrument (9). Note reference (0). Primary wait (0).
	db 94	; Primary instrument (9). New escaped note: 46. Primary wait (0).
	db 46	;   Escape note value.
	db 93	; Effect only. Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 197	; Note reference (5). New wait (3).
	db 3	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 152	; Primary instrument (9). Note reference (8). Secondary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 19	; Primary instrument (9). Note reference (3). 
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 90	; Primary instrument (9). Note reference (10). Primary wait (0).
	db 12	; Note with effects flag.
	db 176	; New instrument (13). Note reference (0). Secondary wait (1).
	db 13	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 134	; Note reference (6). Secondary wait (1).
	db 12	; Note with effects flag.
	db 181	; New instrument (4). Note reference (5). Secondary wait (1).
	db 4	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 180	; New instrument (20). Note reference (4). Secondary wait (1).
	db 20	;   Escape instrument value.
	db 142	; New escaped note: 53. Secondary wait (1).
	db 53	;   Escape note value.
	db 192	; Note reference (0). New wait (127).
	db 127	;   Escape wait value.

SokobanKrusty_Subsong1_Track6
	db 12	; Note with effects flag.
	db 122	; New instrument (7). Note reference (10). Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 214	;    Arpeggio table effect 13.
	db 12	; Note with effects flag.
	db 78	; New escaped note: 74. Primary wait (0).
	db 74	;   Escape note value.
	db 198	;    Arpeggio table effect 12.
	db 12	; Note with effects flag.
	db 78	; New escaped note: 79. Primary wait (0).
	db 79	;   Escape note value.
	db 214	;    Arpeggio table effect 13.
	db 159	; Primary instrument (9). Same escaped note: 79. Secondary wait (1).
	db 221	; Effect only. New wait (2).
	db 2	;   Escape wait value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 181	; New instrument (4). Note reference (5). Secondary wait (1).
	db 4	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 6	;    Arpeggio table effect 0.
	db 12	; Note with effects flag.
	db 126	; New instrument (7). New escaped note: 68. Primary wait (0).
	db 68	;   Escape note value.
	db 7	;   Escape instrument value.
	db 246	;    Effect escape value, because >14.
	db 24	;    Arpeggio table effect 24.
	db 12	; Note with effects flag.
	db 78	; New escaped note: 72. Primary wait (0).
	db 72	;   Escape note value.
	db 246	;    Effect escape value, because >14.
	db 25	;    Arpeggio table effect 25.
	db 12	; Note with effects flag.
	db 78	; New escaped note: 80. Primary wait (0).
	db 80	;   Escape note value.
	db 166	;    Arpeggio table effect 10.
	db 159	; Primary instrument (9). Same escaped note: 80. Secondary wait (1).
	db 29	; Effect only. 
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 74	; Note reference (10). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 246	;    Effect escape value, because >14.
	db 26	;    Arpeggio table effect 26.
	db 12	; Note with effects flag.
	db 78	; New escaped note: 68. Primary wait (0).
	db 68	;   Escape note value.
	db 214	;    Arpeggio table effect 13.
	db 12	; Note with effects flag.
	db 78	; New escaped note: 72. Primary wait (0).
	db 72	;   Escape note value.
	db 182	;    Arpeggio table effect 11.
	db 159	; Primary instrument (9). Same escaped note: 72. Secondary wait (1).
	db 93	; Effect only. Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 245	; New instrument (4). Note reference (5). New wait (8).
	db 4	;   Escape instrument value.
	db 8	;   Escape wait value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 6	;    Arpeggio table effect 0.
	db 12	; Note with effects flag.
	db 122	; New instrument (7). Note reference (10). Primary wait (0).
	db 7	;   Escape instrument value.
	db 214	;    Arpeggio table effect 13.
	db 12	; Note with effects flag.
	db 78	; New escaped note: 74. Primary wait (0).
	db 74	;   Escape note value.
	db 35	;    Volume effect, with inverted volume: 2.
	db 198	;    Arpeggio table effect 12.
	db 12	; Note with effects flag.
	db 78	; New escaped note: 79. Primary wait (0).
	db 79	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 78	; New escaped note: 75. Primary wait (0).
	db 75	;   Escape note value.
	db 166	;    Arpeggio table effect 10.
	db 12	; Note with effects flag.
	db 78	; New escaped note: 74. Primary wait (0).
	db 74	;   Escape note value.
	db 198	;    Arpeggio table effect 12.
	db 78	; New escaped note: 75. Primary wait (0).
	db 75	;   Escape note value.
	db 12	; Note with effects flag.
	db 78	; New escaped note: 79. Primary wait (0).
	db 79	;   Escape note value.
	db 166	;    Arpeggio table effect 10.
	db 12	; Note with effects flag.
	db 245	; New instrument (4). Note reference (5). New wait (15).
	db 4	;   Escape instrument value.
	db 15	;   Escape wait value.
	db 6	;    Arpeggio table effect 0.
	db 133	; Note reference (5). Secondary wait (1).
	db 12	; Note with effects flag.
	db 197	; Note reference (5). New wait (3).
	db 3	;   Escape wait value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 197	; Note reference (5). New wait (127).
	db 127	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.

SokobanKrusty_Subsong1_Track7
	db 157	; Effect only. Secondary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 157	; Effect only. Secondary wait (1).
	db 82	;    Volume effect, with inverted volume: 5.
	db 157	; Effect only. Secondary wait (1).
	db 98	;    Volume effect, with inverted volume: 6.
	db 221	; Effect only. New wait (3).
	db 3	;   Escape wait value.
	db 114	;    Volume effect, with inverted volume: 7.
	db 157	; Effect only. Secondary wait (1).
	db 130	;    Volume effect, with inverted volume: 8.
	db 157	; Effect only. Secondary wait (1).
	db 146	;    Volume effect, with inverted volume: 9.
	db 248	; New instrument (0). Note reference (8). New wait (36).
	db 0	;   Escape instrument value.
	db 36	;   Escape wait value.
	db 12	; Note with effects flag.
	db 94	; Primary instrument (9). New escaped note: 65. Primary wait (0).
	db 65	;   Escape note value.
	db 67	;    Volume effect, with inverted volume: 4.
	db 246	;    Effect escape value, because >14.
	db 23	;    Arpeggio table effect 23.
	db 158	; Primary instrument (9). New escaped note: 77. Secondary wait (1).
	db 77	;   Escape note value.
	db 221	; Effect only. New wait (2).
	db 2	;   Escape wait value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 81	; Primary instrument (9). Note reference (1). Primary wait (0).
	db 67	;    Volume effect, with inverted volume: 4.
	db 246	;    Effect escape value, because >14.
	db 27	;    Arpeggio table effect 27.
	db 94	; Primary instrument (9). New escaped note: 74. Primary wait (0).
	db 74	;   Escape note value.
	db 157	; Effect only. Secondary wait (1).
	db 82	;    Volume effect, with inverted volume: 5.
	db 93	; Effect only. Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 94	; Primary instrument (9). New escaped note: 86. Primary wait (0).
	db 86	;   Escape note value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.

SokobanKrusty_Subsong1_Track8
	db 12	; Note with effects flag.
	db 127	; New instrument (1). Same escaped note: 43. Primary wait (0).
	db 1	;   Escape instrument value.
	db 0	;    Reset effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 79	; Same escaped note: 43. Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 206	; New escaped note: 31. New wait (3).
	db 31	;   Escape note value.
	db 3	;   Escape wait value.
	db 12	; Note with effects flag.
	db 78	; New escaped note: 43. Primary wait (0).
	db 43	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 79	; Same escaped note: 43. Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 142	; New escaped note: 31. Secondary wait (1).
	db 31	;   Escape note value.
	db 12	; Note with effects flag.
	db 78	; New escaped note: 44. Primary wait (0).
	db 44	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 79	; Same escaped note: 44. Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 142	; New escaped note: 32. Secondary wait (1).
	db 32	;   Escape note value.
	db 12	; Note with effects flag.
	db 136	; Note reference (8). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 3	; Note reference (3). 
	db 12	; Note with effects flag.
	db 67	; Note reference (3). Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 69	; Note reference (5). Primary wait (0).
	db 12	; Note with effects flag.
	db 142	; New escaped note: 43. Secondary wait (1).
	db 43	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 142	; New escaped note: 44. Secondary wait (1).
	db 44	;   Escape note value.
	db 136	; Note reference (8). Secondary wait (1).
	db 15	; Same escaped note: 44. 
	db 14	; New escaped note: 43. 
	db 43	;   Escape note value.
	db 12	; Note with effects flag.
	db 94	; Primary instrument (9). New escaped note: 56. Primary wait (0).
	db 56	;   Escape note value.
	db 115	;    Volume effect, with inverted volume: 7.
	db 246	;    Effect escape value, because >14.
	db 23	;    Arpeggio table effect 23.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 82	;    Volume effect, with inverted volume: 5.
	db 93	; Effect only. Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 221	; Effect only. New wait (2).
	db 2	;   Escape wait value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 93	; Effect only. Primary wait (0).
	db 244	;    Pitch down: 224.
	db 224	;    Pitch, LSB.
	db 0	;    Pitch, MSB.
	db 212	; Primary instrument (9). Note reference (4). New wait (7).
	db 7	;   Escape wait value.
	db 29	; Effect only. 
	db 66	;    Volume effect, with inverted volume: 4.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 82	;    Volume effect, with inverted volume: 5.

SokobanKrusty_Subsong1_Track9
	db 12	; Note with effects flag.
	db 255	; New instrument (1). Same escaped note: 43. New wait (5).
	db 1	;   Escape instrument value.
	db 5	;   Escape wait value.
	db 0	;    Reset effect, with inverted volume: 0.
	db 207	; Same escaped note: 43. New wait (3).
	db 3	;   Escape wait value.
	db 14	; New escaped note: 44. 
	db 44	;   Escape note value.
	db 136	; Note reference (8). Secondary wait (1).
	db 195	; Note reference (3). New wait (5).
	db 5	;   Escape wait value.
	db 142	; New escaped note: 43. Secondary wait (1).
	db 43	;   Escape note value.
	db 142	; New escaped note: 44. Secondary wait (1).
	db 44	;   Escape note value.
	db 136	; Note reference (8). Secondary wait (1).
	db 207	; Same escaped note: 44. New wait (3).
	db 3	;   Escape wait value.
	db 14	; New escaped note: 43. 
	db 43	;   Escape note value.
	db 12	; Note with effects flag.
	db 94	; Primary instrument (9). New escaped note: 53. Primary wait (0).
	db 53	;   Escape note value.
	db 147	;    Volume effect, with inverted volume: 9.
	db 41	;    Pitch table effect 2.
	db 246	;    Effect escape value, because >14.
	db 23	;    Arpeggio table effect 23.
	db 93	; Effect only. Primary wait (0).
	db 130	;    Volume effect, with inverted volume: 8.
	db 93	; Effect only. Primary wait (0).
	db 114	;    Volume effect, with inverted volume: 7.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 157	; Effect only. Secondary wait (1).
	db 82	;    Volume effect, with inverted volume: 5.
	db 93	; Effect only. Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 93	; Effect only. Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 95	; Primary instrument (9). Same escaped note: 53. Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 93	; Effect only. Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 244	;    Pitch up: 256.
	db 0	;    Pitch, LSB.
	db 129	;    Pitch, MSB.
	db 93	; Effect only. Primary wait (0).
	db 244	;    Pitch up: 336.
	db 80	;    Pitch, LSB.
	db 129	;    Pitch, MSB.
	db 148	; Primary instrument (9). Note reference (4). Secondary wait (1).
	db 93	; Effect only. Primary wait (0).
	db 244	;    Pitch up: 64.
	db 64	;    Pitch, LSB.
	db 128	;    Pitch, MSB.
	db 93	; Effect only. Primary wait (0).
	db 244	;    Pitch up: 96.
	db 96	;    Pitch, LSB.
	db 128	;    Pitch, MSB.
	db 158	; Primary instrument (9). New escaped note: 56. Secondary wait (1).
	db 56	;   Escape note value.
	db 93	; Effect only. Primary wait (0).
	db 244	;    Pitch up: 288.
	db 32	;    Pitch, LSB.
	db 129	;    Pitch, MSB.
	db 93	; Effect only. Primary wait (0).
	db 244	;    Pitch up: 576.
	db 64	;    Pitch, LSB.
	db 130	;    Pitch, MSB.
	db 150	; Primary instrument (9). Note reference (6). Secondary wait (1).
	db 93	; Effect only. Primary wait (0).
	db 19	;    Volume effect, with inverted volume: 1.
	db 244	;    Pitch down: 96.
	db 96	;    Pitch, LSB.
	db 0	;    Pitch, MSB.
	db 93	; Effect only. Primary wait (0).
	db 244	;    Pitch down: 256.
	db 0	;    Pitch, LSB.
	db 1	;    Pitch, MSB.
	db 159	; Primary instrument (9). Same escaped note: 56. Secondary wait (1).
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 34	;    Volume effect, with inverted volume: 2.

SokobanKrusty_Subsong1_Track10
	db 12	; Note with effects flag.
	db 190	; New instrument (7). New escaped note: 19. Secondary wait (1).
	db 19	;   Escape note value.
	db 7	;   Escape instrument value.
	db 0	;    Reset effect, with inverted volume: 0.
	db 142	; New escaped note: 31. Secondary wait (1).
	db 31	;   Escape note value.
	db 12	; Note with effects flag.
	db 180	; New instrument (2). Note reference (4). Secondary wait (1).
	db 2	;   Escape instrument value.
	db 19	;    Volume effect, with inverted volume: 1.
	db 246	;    Effect escape value, because >14.
	db 28	;    Arpeggio table effect 28.
	db 221	; Effect only. New wait (9).
	db 9	;   Escape wait value.
	db 246	;    Effect escape value, because >14.
	db 29	;    Arpeggio table effect 29.
	db 12	; Note with effects flag.
	db 196	; Note reference (4). New wait (7).
	db 7	;   Escape wait value.
	db 246	;    Effect escape value, because >14.
	db 30	;    Arpeggio table effect 30.
	db 12	; Note with effects flag.
	db 4	; Note reference (4). 
	db 246	;    Effect escape value, because >14.
	db 31	;    Arpeggio table effect 31.
	db 12	; Note with effects flag.
	db 196	; Note reference (4). New wait (30).
	db 30	;   Escape wait value.
	db 246	;    Effect escape value, because >14.
	db 32	;    Arpeggio table effect 32.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 34	;    Volume effect, with inverted volume: 2.

SokobanKrusty_Subsong1_Track11
	db 206	; New escaped note: 24. New wait (3).
	db 24	;   Escape note value.
	db 3	;   Escape wait value.
	db 206	; New escaped note: 12. New wait (11).
	db 12	;   Escape note value.
	db 11	;   Escape wait value.
	db 206	; New escaped note: 24. New wait (15).
	db 24	;   Escape note value.
	db 15	;   Escape wait value.
	db 206	; New escaped note: 14. New wait (23).
	db 14	;   Escape note value.
	db 23	;   Escape wait value.
	db 142	; New escaped note: 17. Secondary wait (1).
	db 17	;   Escape note value.
	db 142	; New escaped note: 29. Secondary wait (1).
	db 29	;   Escape note value.
	db 206	; New escaped note: 24. New wait (127).
	db 24	;   Escape note value.
	db 127	;   Escape wait value.

SokobanKrusty_Subsong1_Track12
	db 12	; Note with effects flag.
	db 254	; New instrument (17). New escaped note: 51. New wait (8).
	db 51	;   Escape note value.
	db 17	;   Escape instrument value.
	db 8	;   Escape wait value.
	db 35	;    Volume effect, with inverted volume: 2.
	db 118	;    Arpeggio table effect 7.
	db 221	; Effect only. New wait (2).
	db 2	;   Escape wait value.
	db 86	;    Arpeggio table effect 5.
	db 12	; Note with effects flag.
	db 142	; New escaped note: 53. Secondary wait (1).
	db 53	;   Escape note value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 196	; Note reference (4). New wait (5).
	db 5	;   Escape wait value.
	db 157	; Effect only. Secondary wait (1).
	db 35	;    Volume effect, with inverted volume: 2.
	db 118	;    Arpeggio table effect 7.
	db 12	; Note with effects flag.
	db 128	; Note reference (0). Secondary wait (1).
	db 19	;    Volume effect, with inverted volume: 1.
	db 86	;    Arpeggio table effect 5.
	db 11	; Note reference (11). 
	db 134	; Note reference (6). Secondary wait (1).
	db 12	; Note with effects flag.
	db 65	; Note reference (1). Primary wait (0).
	db 134	;    Arpeggio table effect 8.
	db 70	; Note reference (6). Primary wait (0).
	db 75	; Note reference (11). Primary wait (0).
	db 79	; Same escaped note: 53. Primary wait (0).
	db 78	; New escaped note: 51. Primary wait (0).
	db 51	;   Escape note value.
	db 67	; Note reference (3). Primary wait (0).
	db 78	; New escaped note: 46. Primary wait (0).
	db 46	;   Escape note value.
	db 78	; New escaped note: 53. Primary wait (0).
	db 53	;   Escape note value.
	db 12	; Note with effects flag.
	db 132	; Note reference (4). Secondary wait (1).
	db 118	;    Arpeggio table effect 7.
	db 143	; Same escaped note: 53. Secondary wait (1).
	db 157	; Effect only. Secondary wait (1).
	db 86	;    Arpeggio table effect 5.
	db 12	; Note with effects flag.
	db 190	; New instrument (3). New escaped note: 51. Secondary wait (1).
	db 51	;   Escape note value.
	db 3	;   Escape instrument value.
	db 7	;    Arpeggio table effect 0.
	db 42	;    Force instrument speed effect 2.
	db 12	; Note with effects flag.
	db 131	; Note reference (3). Secondary wait (1).
	db 26	;    Force instrument speed effect 1.
	db 12	; Note with effects flag.
	db 78	; New escaped note: 53. Primary wait (0).
	db 53	;   Escape note value.
	db 51	;    Volume effect, with inverted volume: 3.
	db 26	;    Force instrument speed effect 1.
	db 12	; Note with effects flag.
	db 248	; New instrument (17). Note reference (8). New wait (2).
	db 17	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 86	;    Arpeggio table effect 5.
	db 12	; Note with effects flag.
	db 190	; New instrument (3). New escaped note: 51. Secondary wait (1).
	db 51	;   Escape note value.
	db 3	;   Escape instrument value.
	db 19	;    Volume effect, with inverted volume: 1.
	db 6	;    Arpeggio table effect 0.
	db 12	; Note with effects flag.
	db 122	; New instrument (17). Note reference (10). Primary wait (0).
	db 17	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 191	; New instrument (3). Same escaped note: 51. Secondary wait (1).
	db 3	;   Escape instrument value.
	db 132	; Note reference (4). Secondary wait (1).
	db 122	; New instrument (17). Note reference (10). Primary wait (0).
	db 17	;   Escape instrument value.
	db 78	; New escaped note: 65. Primary wait (0).
	db 65	;   Escape note value.
	db 199	; Note reference (7). New wait (127).
	db 127	;   Escape wait value.

SokobanKrusty_Subsong1_Track13
	db 12	; Note with effects flag.
	db 94	; Primary instrument (9). New escaped note: 79. Primary wait (0).
	db 79	;   Escape note value.
	db 16	;    Reset effect, with inverted volume: 1.
	db 94	; Primary instrument (9). New escaped note: 77. Primary wait (0).
	db 77	;   Escape note value.
	db 94	; Primary instrument (9). New escaped note: 75. Primary wait (0).
	db 75	;   Escape note value.
	db 94	; Primary instrument (9). New escaped note: 72. Primary wait (0).
	db 72	;   Escape note value.
	db 90	; Primary instrument (9). Note reference (10). Primary wait (0).
	db 87	; Primary instrument (9). Note reference (7). Primary wait (0).
	db 86	; Primary instrument (9). Note reference (6). Primary wait (0).
	db 94	; Primary instrument (9). New escaped note: 56. Primary wait (0).
	db 56	;   Escape note value.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (0).
	db 94	; Primary instrument (9). New escaped note: 61. Primary wait (0).
	db 61	;   Escape note value.
	db 86	; Primary instrument (9). Note reference (6). Primary wait (0).
	db 94	; Primary instrument (9). New escaped note: 66. Primary wait (0).
	db 66	;   Escape note value.
	db 94	; Primary instrument (9). New escaped note: 65. Primary wait (0).
	db 65	;   Escape note value.
	db 94	; Primary instrument (9). New escaped note: 71. Primary wait (0).
	db 71	;   Escape note value.
	db 94	; Primary instrument (9). New escaped note: 69. Primary wait (0).
	db 69	;   Escape note value.
	db 94	; Primary instrument (9). New escaped note: 73. Primary wait (0).
	db 73	;   Escape note value.
	db 94	; Primary instrument (9). New escaped note: 70. Primary wait (0).
	db 70	;   Escape note value.
	db 94	; Primary instrument (9). New escaped note: 68. Primary wait (0).
	db 68	;   Escape note value.
	db 94	; Primary instrument (9). New escaped note: 64. Primary wait (0).
	db 64	;   Escape note value.
	db 87	; Primary instrument (9). Note reference (7). Primary wait (0).
	db 94	; Primary instrument (9). New escaped note: 61. Primary wait (0).
	db 61	;   Escape note value.
	db 94	; Primary instrument (9). New escaped note: 56. Primary wait (0).
	db 56	;   Escape note value.
	db 80	; Primary instrument (9). Note reference (0). Primary wait (0).
	db 91	; Primary instrument (9). Note reference (11). Primary wait (0).
	db 94	; Primary instrument (9). New escaped note: 53. Primary wait (0).
	db 53	;   Escape note value.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (0).
	db 221	; Effect only. New wait (12).
	db 12	;   Escape wait value.
	db 72	;    Pitch table effect 4.
	db 93	; Effect only. Primary wait (0).
	db 40	;    Pitch table effect 2.
	db 93	; Effect only. Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 93	; Effect only. Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 93	; Effect only. Primary wait (0).
	db 82	;    Volume effect, with inverted volume: 5.
	db 248	; New instrument (0). Note reference (8). New wait (16).
	db 0	;   Escape instrument value.
	db 16	;   Escape wait value.
	db 12	; Note with effects flag.
	db 113	; New instrument (17). Note reference (1). Primary wait (0).
	db 17	;   Escape instrument value.
	db 67	;    Volume effect, with inverted volume: 4.
	db 8	;    Pitch table effect 0.
	db 12	; Note with effects flag.
	db 209	; Primary instrument (9). Note reference (1). New wait (127).
	db 127	;   Escape wait value.
	db 38	;    Arpeggio table effect 2.

SokobanKrusty_Subsong1_Track14
	db 206	; New escaped note: 24. New wait (13).
	db 24	;   Escape note value.
	db 13	;   Escape wait value.
	db 206	; New escaped note: 15. New wait (17).
	db 15	;   Escape note value.
	db 17	;   Escape wait value.
	db 206	; New escaped note: 22. New wait (15).
	db 22	;   Escape note value.
	db 15	;   Escape wait value.
	db 206	; New escaped note: 21. New wait (127).
	db 21	;   Escape note value.
	db 127	;   Escape wait value.

SokobanKrusty_Subsong1_Track15
	db 221	; Effect only. New wait (3).
	db 3	;   Escape wait value.
	db 118	;    Arpeggio table effect 7.
	db 29	; Effect only. 
	db 19	;    Volume effect, with inverted volume: 1.
	db 86	;    Arpeggio table effect 5.
	db 29	; Effect only. 
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 179	; New instrument (17). Note reference (3). Secondary wait (1).
	db 17	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 150	;    Arpeggio table effect 9.
	db 142	; New escaped note: 53. Secondary wait (1).
	db 53	;   Escape note value.
	db 12	; Note with effects flag.
	db 126	; New instrument (3). New escaped note: 39. Primary wait (0).
	db 39	;   Escape note value.
	db 3	;   Escape instrument value.
	db 6	;    Arpeggio table effect 0.
	db 142	; New escaped note: 51. Secondary wait (1).
	db 51	;   Escape note value.
	db 78	; New escaped note: 43. Primary wait (0).
	db 43	;   Escape note value.
	db 132	; Note reference (4). Secondary wait (1).
	db 12	; Note with effects flag.
	db 118	; New instrument (17). Note reference (6). Primary wait (0).
	db 17	;   Escape instrument value.
	db 35	;    Volume effect, with inverted volume: 2.
	db 150	;    Arpeggio table effect 9.
	db 65	; Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 71	; Note reference (7). Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 74	; Note reference (10). Primary wait (0).
	db 12	; Note with effects flag.
	db 71	; Note reference (7). Primary wait (0).
	db 86	;    Arpeggio table effect 5.
	db 65	; Note reference (1). Primary wait (0).
	db 70	; Note reference (6). Primary wait (0).
	db 75	; Note reference (11). Primary wait (0).
	db 68	; Note reference (4). Primary wait (0).
	db 78	; New escaped note: 53. Primary wait (0).
	db 53	;   Escape note value.
	db 115	; New instrument (2). Note reference (3). Primary wait (0).
	db 2	;   Escape instrument value.
	db 78	; New escaped note: 51. Primary wait (0).
	db 51	;   Escape note value.
	db 115	; New instrument (17). Note reference (3). Primary wait (0).
	db 17	;   Escape instrument value.
	db 14	; New escaped note: 45. 
	db 45	;   Escape note value.
	db 72	; Note reference (8). Primary wait (0).
	db 142	; New escaped note: 46. Secondary wait (1).
	db 46	;   Escape note value.
	db 142	; New escaped note: 45. Secondary wait (1).
	db 45	;   Escape note value.
	db 157	; Effect only. Secondary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 93	; Effect only. Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 221	; Effect only. New wait (6).
	db 6	;   Escape wait value.
	db 82	;    Volume effect, with inverted volume: 5.
	db 221	; Effect only. New wait (2).
	db 2	;   Escape wait value.
	db 98	;    Volume effect, with inverted volume: 6.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 114	;    Volume effect, with inverted volume: 7.

SokobanKrusty_Subsong1_Track16
	db 12	; Note with effects flag.
	db 118	; New instrument (20). Note reference (6). Primary wait (0).
	db 20	;   Escape instrument value.
	db 19	;    Volume effect, with inverted volume: 1.
	db 6	;    Arpeggio table effect 0.
	db 68	; Note reference (4). Primary wait (0).
	db 72	; Note reference (8). Primary wait (0).
	db 70	; Note reference (6). Primary wait (0).
	db 68	; Note reference (4). Primary wait (0).
	db 75	; Note reference (11). Primary wait (0).
	db 12	; Note with effects flag.
	db 184	; New instrument (19). Note reference (8). Secondary wait (1).
	db 19	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 245	; New instrument (4). Note reference (5). New wait (3).
	db 4	;   Escape instrument value.
	db 3	;   Escape wait value.
	db 12	; Note with effects flag.
	db 116	; New instrument (20). Note reference (4). Primary wait (0).
	db 20	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 75	; Note reference (11). Primary wait (0).
	db 78	; New escaped note: 53. Primary wait (0).
	db 53	;   Escape note value.
	db 68	; Note reference (4). Primary wait (0).
	db 75	; Note reference (11). Primary wait (0).
	db 142	; New escaped note: 51. Secondary wait (1).
	db 51	;   Escape note value.
	db 68	; Note reference (4). Primary wait (0).
	db 12	; Note with effects flag.
	db 56	; New instrument (19). Note reference (8). 
	db 19	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 53	; New instrument (4). Note reference (5). 
	db 4	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 123	; New instrument (20). Note reference (11). Primary wait (0).
	db 20	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 79	; Same escaped note: 51. Primary wait (0).
	db 68	; Note reference (4). Primary wait (0).
	db 75	; Note reference (11). Primary wait (0).
	db 67	; Note reference (3). Primary wait (0).
	db 75	; Note reference (11). Primary wait (0).
	db 67	; Note reference (3). Primary wait (0).
	db 78	; New escaped note: 53. Primary wait (0).
	db 53	;   Escape note value.
	db 12	; Note with effects flag.
	db 56	; New instrument (19). Note reference (8). 
	db 19	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 53	; New instrument (4). Note reference (5). 
	db 4	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 123	; New instrument (20). Note reference (11). Primary wait (0).
	db 20	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 67	; Note reference (3). Primary wait (0).
	db 12	; Note with effects flag.
	db 184	; New instrument (19). Note reference (8). Secondary wait (1).
	db 19	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 240	; New instrument (20). Note reference (0). New wait (2).
	db 20	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 72	; Note reference (8). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 120	; New instrument (19). Note reference (8). Primary wait (0).
	db 19	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 8	; Note reference (8). 
	db 2	;    Volume effect, with inverted volume: 0.
	db 181	; New instrument (4). Note reference (5). Secondary wait (1).
	db 4	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 120	; New instrument (19). Note reference (8). Primary wait (0).
	db 19	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 8	; Note reference (8). 
	db 2	;    Volume effect, with inverted volume: 0.
	db 245	; New instrument (4). Note reference (5). New wait (127).
	db 4	;   Escape instrument value.
	db 127	;   Escape wait value.

SokobanKrusty_Subsong1_Track17
	db 206	; New escaped note: 19. New wait (15).
	db 19	;   Escape note value.
	db 15	;   Escape wait value.
	db 14	; New escaped note: 24. 
	db 24	;   Escape note value.
	db 206	; New escaped note: 14. New wait (23).
	db 14	;   Escape note value.
	db 23	;   Escape wait value.
	db 142	; New escaped note: 17. Secondary wait (1).
	db 17	;   Escape note value.
	db 142	; New escaped note: 29. Secondary wait (1).
	db 29	;   Escape note value.
	db 206	; New escaped note: 24. New wait (127).
	db 24	;   Escape note value.
	db 127	;   Escape wait value.

SokobanKrusty_Subsong1_Track18
	db 157	; Effect only. Secondary wait (1).
	db 0	;    Reset effect, with inverted volume: 0.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (0).
	db 90	; Primary instrument (9). Note reference (10). Primary wait (0).
	db 86	; Primary instrument (9). Note reference (6). Primary wait (0).
	db 94	; Primary instrument (9). New escaped note: 72. Primary wait (0).
	db 72	;   Escape note value.
	db 87	; Primary instrument (9). Note reference (7). Primary wait (0).
	db 94	; Primary instrument (9). New escaped note: 75. Primary wait (0).
	db 75	;   Escape note value.
	db 181	; New instrument (4). Note reference (5). Secondary wait (1).
	db 4	;   Escape instrument value.
	db 90	; Primary instrument (9). Note reference (10). Primary wait (0).
	db 93	; Effect only. Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 94	; Primary instrument (9). New escaped note: 65. Primary wait (0).
	db 65	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 94	; Primary instrument (9). New escaped note: 53. Primary wait (0).
	db 53	;   Escape note value.
	db 87	; Primary instrument (9). Note reference (7). Primary wait (0).
	db 94	; Primary instrument (9). New escaped note: 51. Primary wait (0).
	db 51	;   Escape note value.
	db 81	; Primary instrument (9). Note reference (1). Primary wait (0).
	db 83	; Primary instrument (9). Note reference (3). Primary wait (0).
	db 86	; Primary instrument (9). Note reference (6). Primary wait (0).
	db 88	; Primary instrument (9). Note reference (8). Primary wait (0).
	db 91	; Primary instrument (9). Note reference (11). Primary wait (0).
	db 93	; Effect only. Primary wait (0).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 144	; Primary instrument (9). Note reference (0). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 197	; Note reference (5). New wait (3).
	db 3	;   Escape wait value.
	db 12	; Note with effects flag.
	db 240	; New instrument (21). Note reference (0). New wait (2).
	db 21	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 19	;    Volume effect, with inverted volume: 1.
	db 247	;    Effect escape value, because >14.
	db 33	;    Arpeggio table effect 33.
	db 28	;    Force arpeggio speed effect 1.
	db 12	; Note with effects flag.
	db 192	; Note reference (0). New wait (8).
	db 8	;   Escape wait value.
	db 247	;    Effect escape value, because >14.
	db 34	;    Arpeggio table effect 34.
	db 28	;    Force arpeggio speed effect 1.
	db 12	; Note with effects flag.
	db 181	; New instrument (4). Note reference (5). Secondary wait (1).
	db 4	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 6	;    Arpeggio table effect 0.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (0).
	db 90	; Primary instrument (9). Note reference (10). Primary wait (0).
	db 86	; Primary instrument (9). Note reference (6). Primary wait (0).
	db 94	; Primary instrument (9). New escaped note: 72. Primary wait (0).
	db 72	;   Escape note value.
	db 87	; Primary instrument (9). Note reference (7). Primary wait (0).
	db 94	; Primary instrument (9). New escaped note: 75. Primary wait (0).
	db 75	;   Escape note value.
	db 184	; New instrument (0). Note reference (8). Secondary wait (1).
	db 0	;   Escape instrument value.
	db 158	; Primary instrument (9). New escaped note: 74. Secondary wait (1).
	db 74	;   Escape note value.
	db 93	; Effect only. Primary wait (0).
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 120	; New instrument (19). Note reference (8). Primary wait (0).
	db 19	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 94	; Primary instrument (9). New escaped note: 69. Primary wait (0).
	db 69	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 72	; Note reference (8). Primary wait (0).
	db 254	; New instrument (4). New escaped note: 39. New wait (3).
	db 39	;   Escape note value.
	db 4	;   Escape instrument value.
	db 3	;   Escape wait value.
	db 12	; Note with effects flag.
	db 197	; Note reference (5). New wait (127).
	db 127	;   Escape wait value.
	db 34	;    Volume effect, with inverted volume: 2.

SokobanKrusty_Subsong1_Track19
	db 12	; Note with effects flag.
	db 248	; New instrument (21). Note reference (8). New wait (13).
	db 21	;   Escape instrument value.
	db 13	;   Escape wait value.
	db 35	;    Volume effect, with inverted volume: 2.
	db 246	;    Effect escape value, because >14.
	db 35	;    Arpeggio table effect 35.
	db 12	; Note with effects flag.
	db 254	; New instrument (2). New escaped note: 46. New wait (17).
	db 46	;   Escape note value.
	db 2	;   Escape instrument value.
	db 17	;   Escape wait value.
	db 246	;    Effect escape value, because >14.
	db 36	;    Arpeggio table effect 36.
	db 12	; Note with effects flag.
	db 255	; New instrument (21). Same escaped note: 46. New wait (9).
	db 21	;   Escape instrument value.
	db 9	;   Escape wait value.
	db 246	;    Effect escape value, because >14.
	db 37	;    Arpeggio table effect 37.
	db 12	; Note with effects flag.
	db 243	; New instrument (2). Note reference (3). New wait (5).
	db 2	;   Escape instrument value.
	db 5	;   Escape wait value.
	db 246	;    Effect escape value, because >14.
	db 38	;    Arpeggio table effect 38.
	db 254	; New instrument (21). New escaped note: 45. New wait (127).
	db 45	;   Escape note value.
	db 21	;   Escape instrument value.
	db 127	;   Escape wait value.

SokobanKrusty_Subsong1_Track20
	db 221	; Effect only. New wait (7).
	db 7	;   Escape wait value.
	db 0	;    Reset effect, with inverted volume: 0.
	db 245	; New instrument (4). Note reference (5). New wait (9).
	db 4	;   Escape instrument value.
	db 9	;   Escape wait value.
	db 133	; Note reference (5). Secondary wait (1).
	db 12	; Note with effects flag.
	db 184	; New instrument (19). Note reference (8). Secondary wait (1).
	db 19	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 72	; Note reference (8). Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 72	; Note reference (8). Primary wait (0).
	db 12	; Note with effects flag.
	db 254	; New instrument (4). New escaped note: 41. New wait (3).
	db 41	;   Escape note value.
	db 4	;   Escape instrument value.
	db 3	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 94	; Primary instrument (9). New escaped note: 53. Primary wait (0).
	db 53	;   Escape note value.
	db 115	;    Volume effect, with inverted volume: 7.
	db 246	;    Effect escape value, because >14.
	db 23	;    Arpeggio table effect 23.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 82	;    Volume effect, with inverted volume: 5.
	db 93	; Effect only. Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 93	; Effect only. Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 221	; Effect only. New wait (6).
	db 6	;   Escape wait value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 197	; Note reference (5). New wait (3).
	db 3	;   Escape wait value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 6	;    Arpeggio table effect 0.
	db 12	; Note with effects flag.
	db 211	; Primary instrument (9). Note reference (3). New wait (11).
	db 11	;   Escape wait value.
	db 35	;    Volume effect, with inverted volume: 2.
	db 246	;    Effect escape value, because >14.
	db 39	;    Arpeggio table effect 39.
	db 12	; Note with effects flag.
	db 197	; Note reference (5). New wait (5).
	db 5	;   Escape wait value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 6	;    Arpeggio table effect 0.
	db 12	; Note with effects flag.
	db 197	; Note reference (5). New wait (127).
	db 127	;   Escape wait value.
	db 34	;    Volume effect, with inverted volume: 2.

SokobanKrusty_Subsong1_Track21
	db 12	; Note with effects flag.
	db 255	; New instrument (21). Same escaped note: 43. New wait (15).
	db 21	;   Escape instrument value.
	db 15	;   Escape wait value.
	db 35	;    Volume effect, with inverted volume: 2.
	db 246	;    Effect escape value, because >14.
	db 35	;    Arpeggio table effect 35.
	db 12	; Note with effects flag.
	db 63	; New instrument (2). Same escaped note: 43. 
	db 2	;   Escape instrument value.
	db 246	;    Effect escape value, because >14.
	db 40	;    Arpeggio table effect 40.
	db 12	; Note with effects flag.
	db 254	; New instrument (21). New escaped note: 42. New wait (23).
	db 42	;   Escape note value.
	db 21	;   Escape instrument value.
	db 23	;   Escape wait value.
	db 246	;    Effect escape value, because >14.
	db 38	;    Arpeggio table effect 38.
	db 12	; Note with effects flag.
	db 254	; New instrument (2). New escaped note: 41. New wait (127).
	db 41	;   Escape note value.
	db 2	;   Escape instrument value.
	db 127	;   Escape wait value.
	db 214	;    Arpeggio table effect 13.

SokobanKrusty_Subsong1_Track22
	db 221	; Effect only. New wait (3).
	db 3	;   Escape wait value.
	db 0	;    Reset effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 180	; New instrument (2). Note reference (4). Secondary wait (1).
	db 2	;   Escape instrument value.
	db 246	;    Effect escape value, because >14.
	db 28	;    Arpeggio table effect 28.
	db 157	; Effect only. Secondary wait (1).
	db 246	;    Effect escape value, because >14.
	db 29	;    Arpeggio table effect 29.
	db 12	; Note with effects flag.
	db 181	; New instrument (4). Note reference (5). Secondary wait (1).
	db 4	;   Escape instrument value.
	db 6	;    Arpeggio table effect 0.
	db 12	; Note with effects flag.
	db 212	; Primary instrument (9). Note reference (4). New wait (5).
	db 5	;   Escape wait value.
	db 246	;    Effect escape value, because >14.
	db 29	;    Arpeggio table effect 29.
	db 12	; Note with effects flag.
	db 244	; New instrument (2). Note reference (4). New wait (7).
	db 2	;   Escape instrument value.
	db 7	;   Escape wait value.
	db 246	;    Effect escape value, because >14.
	db 30	;    Arpeggio table effect 30.
	db 12	; Note with effects flag.
	db 181	; New instrument (4). Note reference (5). Secondary wait (1).
	db 4	;   Escape instrument value.
	db 6	;    Arpeggio table effect 0.
	db 12	; Note with effects flag.
	db 244	; New instrument (2). Note reference (4). New wait (5).
	db 2	;   Escape instrument value.
	db 5	;   Escape wait value.
	db 246	;    Effect escape value, because >14.
	db 31	;    Arpeggio table effect 31.
	db 12	; Note with effects flag.
	db 196	; Note reference (4). New wait (7).
	db 7	;   Escape wait value.
	db 246	;    Effect escape value, because >14.
	db 32	;    Arpeggio table effect 32.
	db 12	; Note with effects flag.
	db 181	; New instrument (4). Note reference (5). Secondary wait (1).
	db 4	;   Escape instrument value.
	db 6	;    Arpeggio table effect 0.
	db 12	; Note with effects flag.
	db 212	; Primary instrument (9). Note reference (4). New wait (5).
	db 5	;   Escape wait value.
	db 246	;    Effect escape value, because >14.
	db 32	;    Arpeggio table effect 32.
	db 157	; Effect only. Secondary wait (1).
	db 18	;    Volume effect, with inverted volume: 1.
	db 157	; Effect only. Secondary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 221	; Effect only. New wait (3).
	db 3	;   Escape wait value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 133	; Note reference (5). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 148	; Primary instrument (9). Note reference (4). Secondary wait (1).
	db 12	; Note with effects flag.
	db 133	; Note reference (5). Secondary wait (1).
	db 35	;    Volume effect, with inverted volume: 2.
	db 6	;    Arpeggio table effect 0.
	db 12	; Note with effects flag.
	db 212	; Primary instrument (9). Note reference (4). New wait (127).
	db 127	;   Escape wait value.
	db 246	;    Effect escape value, because >14.
	db 32	;    Arpeggio table effect 32.

SokobanKrusty_Subsong1_Track23
	db 12	; Note with effects flag.
	db 246	; New instrument (20). Note reference (6). New wait (2).
	db 20	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 0	;    Reset effect, with inverted volume: 0.
	db 4	; Note reference (4). 
	db 184	; New instrument (19). Note reference (8). Secondary wait (1).
	db 19	;   Escape instrument value.
	db 181	; New instrument (4). Note reference (5). Secondary wait (1).
	db 4	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 184	; New instrument (19). Note reference (8). Secondary wait (1).
	db 19	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 180	; New instrument (1). Note reference (4). Secondary wait (1).
	db 1	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 247	; New instrument (20). Note reference (7). New wait (3).
	db 20	;   Escape instrument value.
	db 3	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 139	; Note reference (11). Secondary wait (1).
	db 56	; New instrument (19). Note reference (8). 
	db 19	;   Escape instrument value.
	db 245	; New instrument (4). Note reference (5). New wait (4).
	db 4	;   Escape instrument value.
	db 4	;   Escape wait value.
	db 12	; Note with effects flag.
	db 119	; New instrument (1). Note reference (7). Primary wait (0).
	db 1	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 183	; New instrument (20). Note reference (7). Secondary wait (1).
	db 20	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 206	; New escaped note: 70. New wait (2).
	db 70	;   Escape note value.
	db 2	;   Escape wait value.
	db 12	; Note with effects flag.
	db 127	; New instrument (1). Same escaped note: 70. Primary wait (0).
	db 1	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 248	; New instrument (19). Note reference (8). New wait (3).
	db 19	;   Escape instrument value.
	db 3	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 245	; New instrument (4). Note reference (5). New wait (2).
	db 4	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 126	; New instrument (20). New escaped note: 69. Primary wait (0).
	db 69	;   Escape note value.
	db 20	;   Escape instrument value.
	db 78	; New escaped note: 70. Primary wait (0).
	db 70	;   Escape note value.
	db 78	; New escaped note: 69. Primary wait (0).
	db 69	;   Escape note value.
	db 184	; New instrument (19). Note reference (8). Secondary wait (1).
	db 19	;   Escape instrument value.
	db 62	; New instrument (20). New escaped note: 65. 
	db 65	;   Escape note value.
	db 20	;   Escape instrument value.
	db 64	; Note reference (0). Primary wait (0).
	db 12	; Note with effects flag.
	db 120	; New instrument (19). Note reference (8). Primary wait (0).
	db 19	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 72	; Note reference (8). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 176	; New instrument (20). Note reference (0). Secondary wait (1).
	db 20	;   Escape instrument value.
	db 181	; New instrument (4). Note reference (5). Secondary wait (1).
	db 4	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 120	; New instrument (19). Note reference (8). Primary wait (0).
	db 19	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 8	; Note reference (8). 
	db 2	;    Volume effect, with inverted volume: 0.
	db 245	; New instrument (4). Note reference (5). New wait (127).
	db 4	;   Escape instrument value.
	db 127	;   Escape wait value.

SokobanKrusty_Subsong1_Track24
	db 157	; Effect only. Secondary wait (1).
	db 0	;    Reset effect, with inverted volume: 0.
	db 177	; New instrument (20). Note reference (1). Secondary wait (1).
	db 20	;   Escape instrument value.
	db 142	; New escaped note: 65. Secondary wait (1).
	db 65	;   Escape note value.
	db 142	; New escaped note: 70. Secondary wait (1).
	db 70	;   Escape note value.
	db 245	; New instrument (4). Note reference (5). New wait (3).
	db 4	;   Escape instrument value.
	db 3	;   Escape wait value.
	db 12	; Note with effects flag.
	db 184	; New instrument (19). Note reference (8). Secondary wait (1).
	db 19	;   Escape instrument value.
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 8	; Note reference (8). 
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 182	; New instrument (3). Note reference (6). Secondary wait (1).
	db 3	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 191	; New instrument (20). Same escaped note: 70. Secondary wait (1).
	db 20	;   Escape instrument value.
	db 142	; New escaped note: 69. Secondary wait (1).
	db 69	;   Escape note value.
	db 53	; New instrument (4). Note reference (5). 
	db 4	;   Escape instrument value.
	db 254	; New instrument (20). New escaped note: 65. New wait (5).
	db 65	;   Escape note value.
	db 20	;   Escape instrument value.
	db 5	;   Escape wait value.
	db 0	; Note reference (0). 
	db 245	; New instrument (4). Note reference (5). New wait (3).
	db 4	;   Escape instrument value.
	db 3	;   Escape wait value.
	db 12	; Note with effects flag.
	db 120	; New instrument (19). Note reference (8). Primary wait (0).
	db 19	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 118	; New instrument (12). Note reference (6). Primary wait (0).
	db 12	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 78	; New escaped note: 61. Primary wait (0).
	db 61	;   Escape note value.
	db 65	; Note reference (1). Primary wait (0).
	db 71	; Note reference (7). Primary wait (0).
	db 65	; Note reference (1). Primary wait (0).
	db 79	; Same escaped note: 61. Primary wait (0).
	db 193	; Note reference (1). New wait (2).
	db 2	;   Escape wait value.
	db 12	; Note with effects flag.
	db 94	; Primary instrument (9). New escaped note: 66. Primary wait (0).
	db 66	;   Escape note value.
	db 19	;    Volume effect, with inverted volume: 1.
	db 41	;    Pitch table effect 2.
	db 46	;    Force pitch speed effect 2.
	db 93	; Effect only. Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 190	; New instrument (4). New escaped note: 43. Secondary wait (1).
	db 43	;   Escape note value.
	db 4	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 8	;    Pitch table effect 0.
	db 12	; Note with effects flag.
	db 120	; New instrument (19). Note reference (8). Primary wait (0).
	db 19	;   Escape instrument value.
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 126	; New instrument (4). New escaped note: 39. Primary wait (0).
	db 39	;   Escape note value.
	db 4	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 197	; Note reference (5). New wait (127).
	db 127	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.

SokobanKrusty_Subsong1_Track25
	db 221	; Effect only. New wait (7).
	db 7	;   Escape wait value.
	db 0	;    Reset effect, with inverted volume: 0.
	db 245	; New instrument (4). Note reference (5). New wait (15).
	db 4	;   Escape instrument value.
	db 15	;   Escape wait value.
	db 197	; Note reference (5). New wait (5).
	db 5	;   Escape wait value.
	db 12	; Note with effects flag.
	db 248	; New instrument (19). Note reference (8). New wait (9).
	db 19	;   Escape instrument value.
	db 9	;   Escape wait value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 245	; New instrument (4). Note reference (5). New wait (3).
	db 4	;   Escape instrument value.
	db 3	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 120	; New instrument (19). Note reference (8). Primary wait (0).
	db 19	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 72	; Note reference (8). Primary wait (0).
	db 12	; Note with effects flag.
	db 53	; New instrument (4). Note reference (5). 
	db 4	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 56	; New instrument (19). Note reference (8). 
	db 19	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 72	; Note reference (8). Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 72	; Note reference (8). Primary wait (0).
	db 12	; Note with effects flag.
	db 255	; New instrument (4). Same escaped note: 43. New wait (5).
	db 4	;   Escape instrument value.
	db 5	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 197	; Note reference (5). New wait (127).
	db 127	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.

SokobanKrusty_Subsong1_Track26
	db 205	; New wait (11).
	db 11	;   Escape wait value.
	db 221	; Effect only. New wait (3).
	db 3	;   Escape wait value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 157	; Effect only. Secondary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 118	; New instrument (17). Note reference (6). Primary wait (0).
	db 17	;   Escape instrument value.
	db 19	;    Volume effect, with inverted volume: 1.
	db 6	;    Arpeggio table effect 0.
	db 221	; Effect only. New wait (2).
	db 2	;   Escape wait value.
	db 67	;    Volume effect, with inverted volume: 4.
	db 38	;    Arpeggio table effect 2.
	db 12	; Note with effects flag.
	db 94	; Primary instrument (9). New escaped note: 65. Primary wait (0).
	db 65	;   Escape note value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 6	;    Arpeggio table effect 0.
	db 93	; Effect only. Primary wait (0).
	db 51	;    Volume effect, with inverted volume: 3.
	db 244	;    Pitch down: 512.
	db 0	;    Pitch, LSB.
	db 2	;    Pitch, MSB.
	db 12	; Note with effects flag.
	db 83	; Primary instrument (9). Note reference (3). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 221	; Effect only. New wait (9).
	db 9	;   Escape wait value.
	db 51	;    Volume effect, with inverted volume: 3.
	db 38	;    Arpeggio table effect 2.
	db 12	; Note with effects flag.
	db 126	; New instrument (7). New escaped note: 19. Primary wait (0).
	db 19	;   Escape note value.
	db 7	;   Escape instrument value.
	db 19	;    Volume effect, with inverted volume: 1.
	db 6	;    Arpeggio table effect 0.
	db 207	; Same escaped note: 19. New wait (5).
	db 5	;   Escape wait value.
	db 15	; Same escaped note: 19. 
	db 12	; Note with effects flag.
	db 143	; Same escaped note: 19. Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 79	; Same escaped note: 19. Primary wait (0).
	db 207	; Same escaped note: 19. New wait (2).
	db 2	;   Escape wait value.
	db 143	; Same escaped note: 19. Secondary wait (1).
	db 79	; Same escaped note: 19. Primary wait (0).
	db 78	; New escaped note: 25. Primary wait (0).
	db 25	;   Escape note value.
	db 143	; Same escaped note: 25. Secondary wait (1).
	db 206	; New escaped note: 19. New wait (127).
	db 19	;   Escape note value.
	db 127	;   Escape wait value.

SokobanKrusty_Subsong1_Track27
	db 157	; Effect only. Secondary wait (1).
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 212	; Primary instrument (9). Note reference (4). New wait (5).
	db 5	;   Escape wait value.
	db 19	;    Volume effect, with inverted volume: 1.
	db 246	;    Effect escape value, because >14.
	db 32	;    Arpeggio table effect 32.
	db 12	; Note with effects flag.
	db 181	; New instrument (4). Note reference (5). Secondary wait (1).
	db 4	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 6	;    Arpeggio table effect 0.
	db 12	; Note with effects flag.
	db 212	; Primary instrument (9). Note reference (4). New wait (13).
	db 13	;   Escape wait value.
	db 19	;    Volume effect, with inverted volume: 1.
	db 246	;    Effect escape value, because >14.
	db 32	;    Arpeggio table effect 32.
	db 12	; Note with effects flag.
	db 133	; Note reference (5). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 6	;    Arpeggio table effect 0.
	db 12	; Note with effects flag.
	db 20	; Primary instrument (9). Note reference (4). 
	db 19	;    Volume effect, with inverted volume: 1.
	db 246	;    Effect escape value, because >14.
	db 32	;    Arpeggio table effect 32.
	db 12	; Note with effects flag.
	db 133	; Note reference (5). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 212	; Primary instrument (9). Note reference (4). New wait (7).
	db 7	;   Escape wait value.
	db 19	;    Volume effect, with inverted volume: 1.
	db 246	;    Effect escape value, because >14.
	db 41	;    Arpeggio table effect 41.
	db 221	; Effect only. New wait (5).
	db 5	;   Escape wait value.
	db 246	;    Effect escape value, because >14.
	db 42	;    Arpeggio table effect 42.
	db 12	; Note with effects flag.
	db 133	; Note reference (5). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 6	;    Arpeggio table effect 0.
	db 12	; Note with effects flag.
	db 212	; Primary instrument (9). Note reference (4). New wait (3).
	db 3	;   Escape wait value.
	db 19	;    Volume effect, with inverted volume: 1.
	db 246	;    Effect escape value, because >14.
	db 42	;    Arpeggio table effect 42.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 35	;    Volume effect, with inverted volume: 2.
	db 246	;    Effect escape value, because >14.
	db 32	;    Arpeggio table effect 32.

SokobanKrusty_Subsong1_Track28
	db 157	; Effect only. Secondary wait (1).
	db 19	;    Volume effect, with inverted volume: 1.
	db 6	;    Arpeggio table effect 0.
	db 180	; New instrument (20). Note reference (4). Secondary wait (1).
	db 20	;   Escape instrument value.
	db 139	; Note reference (11). Secondary wait (1).
	db 129	; Note reference (1). Secondary wait (1).
	db 12	; Note with effects flag.
	db 181	; New instrument (4). Note reference (5). Secondary wait (1).
	db 4	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 184	; New instrument (19). Note reference (8). Secondary wait (1).
	db 19	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 180	; New instrument (20). Note reference (4). Secondary wait (1).
	db 20	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 199	; Note reference (7). New wait (3).
	db 3	;   Escape wait value.
	db 65	; Note reference (1). Primary wait (0).
	db 68	; Note reference (4). Primary wait (0).
	db 12	; Note with effects flag.
	db 120	; New instrument (19). Note reference (8). Primary wait (0).
	db 19	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 118	; New instrument (20). Note reference (6). Primary wait (0).
	db 20	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 139	; Note reference (11). Secondary wait (1).
	db 12	; Note with effects flag.
	db 245	; New instrument (4). Note reference (5). New wait (2).
	db 4	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 123	; New instrument (17). Note reference (11). Primary wait (0).
	db 17	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 70	; Note reference (6). Primary wait (0).
	db 65	; Note reference (1). Primary wait (0).
	db 78	; New escaped note: 66. Primary wait (0).
	db 66	;   Escape note value.
	db 74	; Note reference (10). Primary wait (0).
	db 79	; Same escaped note: 66. Primary wait (0).
	db 65	; Note reference (1). Primary wait (0).
	db 79	; Same escaped note: 66. Primary wait (0).
	db 135	; Note reference (7). Secondary wait (1).
	db 93	; Effect only. Primary wait (0).
	db 34	;    Volume effect, with inverted volume: 2.
	db 65	; Note reference (1). Primary wait (0).
	db 70	; Note reference (6). Primary wait (0).
	db 12	; Note with effects flag.
	db 181	; New instrument (4). Note reference (5). Secondary wait (1).
	db 4	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 126	; New instrument (17). New escaped note: 70. Primary wait (0).
	db 70	;   Escape note value.
	db 17	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 70	; Note reference (6). Primary wait (0).
	db 142	; New escaped note: 69. Secondary wait (1).
	db 69	;   Escape note value.
	db 12	; Note with effects flag.
	db 184	; New instrument (19). Note reference (8). Secondary wait (1).
	db 19	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 186	; New instrument (17). Note reference (10). Secondary wait (1).
	db 17	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 142	; New escaped note: 66. Secondary wait (1).
	db 66	;   Escape note value.
	db 12	; Note with effects flag.
	db 120	; New instrument (19). Note reference (8). Primary wait (0).
	db 19	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 72	; Note reference (8). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 191	; New instrument (17). Same escaped note: 66. Secondary wait (1).
	db 17	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 181	; New instrument (4). Note reference (5). Secondary wait (1).
	db 4	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 120	; New instrument (19). Note reference (8). Primary wait (0).
	db 19	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 8	; Note reference (8). 
	db 2	;    Volume effect, with inverted volume: 0.
	db 245	; New instrument (4). Note reference (5). New wait (127).
	db 4	;   Escape instrument value.
	db 127	;   Escape wait value.

SokobanKrusty_Subsong1_Track29
	db 12	; Note with effects flag.
	db 255	; New instrument (2). Same escaped note: 43. New wait (5).
	db 2	;   Escape instrument value.
	db 5	;   Escape wait value.
	db 51	;    Volume effect, with inverted volume: 3.
	db 246	;    Effect escape value, because >14.
	db 35	;    Arpeggio table effect 35.
	db 12	; Note with effects flag.
	db 180	; New instrument (3). Note reference (4). Secondary wait (1).
	db 3	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 0	; Note reference (0). 
	db 246	;    Effect escape value, because >14.
	db 38	;    Arpeggio table effect 38.
	db 12	; Note with effects flag.
	db 75	; Note reference (11). Primary wait (0).
	db 246	;    Effect escape value, because >14.
	db 36	;    Arpeggio table effect 36.
	db 12	; Note with effects flag.
	db 86	; Primary instrument (9). Note reference (6). Primary wait (0).
	db 246	;    Effect escape value, because >14.
	db 23	;    Arpeggio table effect 23.
	db 12	; Note with effects flag.
	db 63	; New instrument (2). Same escaped note: 43. 
	db 2	;   Escape instrument value.
	db 51	;    Volume effect, with inverted volume: 3.
	db 246	;    Effect escape value, because >14.
	db 40	;    Arpeggio table effect 40.
	db 12	; Note with effects flag.
	db 115	; New instrument (3). Note reference (3). Primary wait (0).
	db 3	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 67	; Note reference (3). Primary wait (0).
	db 12	; Note with effects flag.
	db 177	; New instrument (1). Note reference (1). Secondary wait (1).
	db 1	;   Escape instrument value.
	db 35	;    Volume effect, with inverted volume: 2.
	db 247	;    Effect escape value, because >14.
	db 43	;    Arpeggio table effect 43.
	db 26	;    Force instrument speed effect 1.
	db 12	; Note with effects flag.
	db 49	; New instrument (21). Note reference (1). 
	db 21	;   Escape instrument value.
	db 246	;    Effect escape value, because >14.
	db 40	;    Arpeggio table effect 40.
	db 12	; Note with effects flag.
	db 206	; New escaped note: 42. New wait (18).
	db 42	;   Escape note value.
	db 18	;   Escape wait value.
	db 19	;    Volume effect, with inverted volume: 1.
	db 246	;    Effect escape value, because >14.
	db 38	;    Arpeggio table effect 38.
	db 221	; Effect only. New wait (6).
	db 6	;   Escape wait value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 244	;    Pitch down: 256.
	db 0	;    Pitch, LSB.
	db 1	;    Pitch, MSB.

SokobanKrusty_Subsong1_Track30
	db 157	; Effect only. Secondary wait (1).
	db 51	;    Volume effect, with inverted volume: 3.
	db 244	;    Pitch down: 384.
	db 128	;    Pitch, LSB.
	db 1	;    Pitch, MSB.
	db 157	; Effect only. Secondary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 157	; Effect only. Secondary wait (1).
	db 82	;    Volume effect, with inverted volume: 5.
	db 157	; Effect only. Secondary wait (1).
	db 98	;    Volume effect, with inverted volume: 6.
	db 248	; New instrument (0). Note reference (8). New wait (27).
	db 0	;   Escape instrument value.
	db 27	;   Escape wait value.
	db 12	; Note with effects flag.
	db 94	; Primary instrument (9). New escaped note: 56. Primary wait (0).
	db 56	;   Escape note value.
	db 115	;    Volume effect, with inverted volume: 7.
	db 246	;    Effect escape value, because >14.
	db 23	;    Arpeggio table effect 23.
	db 93	; Effect only. Primary wait (0).
	db 98	;    Volume effect, with inverted volume: 6.
	db 93	; Effect only. Primary wait (0).
	db 82	;    Volume effect, with inverted volume: 5.
	db 93	; Effect only. Primary wait (0).
	db 66	;    Volume effect, with inverted volume: 4.
	db 157	; Effect only. Secondary wait (1).
	db 50	;    Volume effect, with inverted volume: 3.
	db 157	; Effect only. Secondary wait (1).
	db 244	;    Pitch down: 112.
	db 112	;    Pitch, LSB.
	db 0	;    Pitch, MSB.
	db 212	; Primary instrument (9). Note reference (4). New wait (127).
	db 127	;   Escape wait value.

SokobanKrusty_Subsong1_Track31
	db 77	; Primary wait (0).
	db 12	; Note with effects flag.
	db 244	; New instrument (21). Note reference (4). New wait (2).
	db 21	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 51	;    Volume effect, with inverted volume: 3.
	db 246	;    Effect escape value, because >14.
	db 40	;    Arpeggio table effect 40.
	db 12	; Note with effects flag.
	db 184	; New instrument (2). Note reference (8). Secondary wait (1).
	db 2	;   Escape instrument value.
	db 246	;    Effect escape value, because >14.
	db 35	;    Arpeggio table effect 35.
	db 221	; Effect only. New wait (3).
	db 3	;   Escape wait value.
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 120	; New instrument (17). Note reference (8). Primary wait (0).
	db 17	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 120	; New instrument (3). Note reference (8). Primary wait (0).
	db 3	;   Escape instrument value.
	db 136	; Note reference (8). Secondary wait (1).
	db 12	; Note with effects flag.
	db 254	; New instrument (2). New escaped note: 46. New wait (11).
	db 46	;   Escape note value.
	db 2	;   Escape instrument value.
	db 11	;   Escape wait value.
	db 35	;    Volume effect, with inverted volume: 2.
	db 246	;    Effect escape value, because >14.
	db 36	;    Arpeggio table effect 36.
	db 123	; New instrument (17). Note reference (11). Primary wait (0).
	db 17	;   Escape instrument value.
	db 93	; Effect only. Primary wait (0).
	db 244	;    Pitch up: 384.
	db 128	;    Pitch, LSB.
	db 129	;    Pitch, MSB.
	db 12	; Note with effects flag.
	db 113	; New instrument (3). Note reference (1). Primary wait (0).
	db 3	;   Escape instrument value.
	db 19	;    Volume effect, with inverted volume: 1.
	db 246	;    Effect escape value, because >14.
	db 44	;    Arpeggio table effect 44.
	db 157	; Effect only. Secondary wait (1).
	db 24	;    Pitch table effect 1.
	db 93	; Effect only. Primary wait (0).
	db 244	;    Pitch down: 128.
	db 128	;    Pitch, LSB.
	db 0	;    Pitch, MSB.
	db 12	; Note with effects flag.
	db 255	; New instrument (21). Same escaped note: 46. New wait (5).
	db 21	;   Escape instrument value.
	db 5	;   Escape wait value.
	db 35	;    Volume effect, with inverted volume: 2.
	db 9	;    Pitch table effect 0.
	db 246	;    Effect escape value, because >14.
	db 37	;    Arpeggio table effect 37.
	db 12	; Note with effects flag.
	db 115	; New instrument (2). Note reference (3). Primary wait (0).
	db 2	;   Escape instrument value.
	db 19	;    Volume effect, with inverted volume: 1.
	db 246	;    Effect escape value, because >14.
	db 38	;    Arpeggio table effect 38.
	db 243	; New instrument (3). Note reference (3). New wait (6).
	db 3	;   Escape instrument value.
	db 6	;   Escape wait value.
	db 12	; Note with effects flag.
	db 254	; New instrument (21). New escaped note: 45. New wait (5).
	db 45	;   Escape note value.
	db 21	;   Escape instrument value.
	db 5	;   Escape wait value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 254	; New instrument (3). New escaped note: 65. New wait (2).
	db 65	;   Escape note value.
	db 3	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 246	;    Effect escape value, because >14.
	db 37	;    Arpeggio table effect 37.
	db 157	; Effect only. Secondary wait (1).
	db 244	;    Pitch down: 128.
	db 128	;    Pitch, LSB.
	db 0	;    Pitch, MSB.
	db 93	; Effect only. Primary wait (0).
	db 244	;    Pitch down: 384.
	db 128	;    Pitch, LSB.
	db 1	;    Pitch, MSB.
	db 12	; Note with effects flag.
	db 192	; Note reference (0). New wait (127).
	db 127	;   Escape wait value.
	db 246	;    Effect escape value, because >14.
	db 38	;    Arpeggio table effect 38.

SokobanKrusty_Subsong1DisarkByteRegionEnd5
; The note indexes.
SokobanKrusty_Subsong1_NoteIndexes
SokobanKrusty_Subsong1DisarkByteRegionStart6
	db 57	; Note for index 0.
	db 62	; Note for index 1.
	db 26	; Note for index 2.
	db 50	; Note for index 3.
	db 55	; Note for index 4.
	db 38	; Note for index 5.
	db 60	; Note for index 6.
	db 63	; Note for index 7.
	db 48	; Note for index 8.
	db 54	; Note for index 9.
	db 67	; Note for index 10.
	db 58	; Note for index 11.
SokobanKrusty_Subsong1DisarkByteRegionEnd6

