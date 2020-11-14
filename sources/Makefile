# This file is part of Sokoban Within.
#
# Sokoban Within is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Sokoban Within is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Sokoban Within.  If not, see <https://www.gnu.org/licenses/>.

SHELL=bash
RASM=./tools/rasm-1.2/rasm
TOCDT=./tools/2cdt/2cdt
PLAYTZX=./tools/PlayTZX/playtzx
IMGCONVERTER=tools/cpclib/bin/imgconverter
XFER=tools/cpclib/bin/cpclib-xfertool

CPCIP?=192.168.1.26

FESTIVAL=wine ./tools/festival.exe

PENS_OPTION=--pens  0,1,2,14,23,4,13,22,25,3,24,15,6,26,5,12
LOADING_PENS_OPTION=--pens  0,1,2,10,4,12,15,3,6,16,24,22,25,5,13,26
PENS_OPTION_FONT=--pens  0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,5
PALETTE_OPTION=--palette generated/palette.bin
MODE_OPTION=-m 0


SPRITES=box hibox wall floor target empty \
			player_push_right0 player_push_left0 player_push_up0 player_push_down0 \
			player_push_right1 player_push_left1 player_push_up1 player_push_down1 \
			player_push_right2 player_push_left2 player_push_up2 player_push_down2 \
			player_move_right0 player_move_left0 player_move_up0 player_move_down0 \
			player_move_right1 player_move_left1 player_move_up1 player_move_down1 \
			player_move_right2 player_move_left2 player_move_up2 player_move_down2 

CONVERTED_SPRITES:=$(SPRITES:%=generated/%.bin)



LEVELS:=$(wildcard generated/cosmonotes/*.asm) \
	$(wildcard generated/microcosmos/*.asm) \
	$(wildcard generated/nabocosmos/*.asm) \
	$(wildcard generated/picocosmos/*.asm) \
	$(wildcard generated/monster/*.asm) \
	$(wildcard generated/minicosmos/*.asm)\
	$(wildcard generated/station/*.asm)
CRUNCHED_LEVELS:=$(LEVELS:%.asm=%.o)


DIGITS=0 1 2 3 4 5 6 7 8 9 a b c d e f
CONVERTED_DIGITS:=$(DIGITS:%=generated/%.bin)

EXTRA_LETTERS=g h i j k l m n o p q r s t u v w x y z dd sd comma apostrophe exclamation
CONVERTED_EXTRA_LETTERS:=$(EXTRA_LETTERS:%=generated/%.bin)

CONVERTED_TORCHES=generated/torch1.bin generated/torch2.bin generated/torch3.bin generated/torch4.bin generated/torch1b.bin generated/torch2b.bin generated/torch3b.bin generated/torch4b.bin

CDT=sokoban_within.cdt
DSK=sokoban_within.dsk
WAV=sokoban_within.wav


CONVERTED_LEVELS= generated/levels_data.asm


all:
	$(MAKE) build_tools
	$(MAKE) build_levels
	$(MAKE) sokoban.sna
	$(MAKE) $(CDT)
	$(MAKE) $(DSK)
	$(MAKE) $(WAV)



sokoban.sna sokoban.dat: game.bin src/linker.asm
	$(RASM) src/linker.asm -I. -sb -ss -twe -xr -eo -oi sokoban.sna

.PHONY: $(DSK)
$(DSK): src/loaders/loader.asm src/loaders/disc_loader.asm generated/loading_screen.scr generated/loading_screen.inks generated/loading_diff.asm
	-rm $(DSK) sokoban.dat
	$(MAKE) build_levels
	$(MAKE) sokoban.dat # also add stuff to dsk
	$(RASM) src/loaders/disc_loader.asm -I. -Isrc -xr -void -eo 

.PHONY: $(CDT)
$(CDT): src/loaders/loader.asm src/loaders/tape_loader.asm generated/loading_screen.scr generated/loading_screen.inks generated/loading_diff.asm
	$(MAKE) sokoban.dat
	$(RASM) src/loaders/tape_loader.asm -I. -Isrc -xr -void -ob sokoban.bin
	$(TOCDT) -n  -r sokoban.bin -L 0x1000 -X 0x1000  sokoban.bin $(CDT) 
	$(TOCDT) -r sokoban.dat -L 0x1000 -X 0x1000  sokoban.dat $(CDT)

game.bin game.sym: $(wildcard src/*.asm data/* src/sound/* src/levels/* src/menus/*) $(CONVERTED_SPRITES) $(CONVERTED_DIGITS) $(CONVERTED_EXTRA_LETTERS)  $(CRUNCHED_LEVELS) $(CONVERTED_TORCHES) generated/bigt.bin
	$(RASM) src/sokoban.asm \
		-I. \
		-Isrc/sound \
		-Isrc/levels \
		-Igenerated \
		-xr \
		-sw -os game.sym \
		-ob   $@ 
		



%.o: %.asm
	$(RASM) $^ -I. -Isrc/levels -xr -void -ob  $@



%.voc: %.cdt
	$(PLAYTZX) -voc $^ $@

%.wav: %.voc
	ffmpeg -i $^ $@

$(CONVERTED_SPRITES): ./data/sprites.png
	mkdir -p generated

	convert data/sprites.png -crop 16x32+0+0  generated/box.png
	convert data/sprites.png -crop 16x32+16+0  generated/hibox.png
	convert data/sprites.png -crop 16x32+32+0  generated/wall.png
	convert data/sprites.png -crop 16x32+48+0  generated/empty.png
	convert data/sprites.png -crop 16x32+64+0  generated/floor.png
	convert data/sprites.png -crop 16x32+80+0  generated/target.png

	convert data/sprites.png -crop 16x32+48+38  generated/player_push_right0.png
	convert data/sprites.png -crop 16x32+48+70  generated/player_push_left0.png
	convert data/sprites.png -crop 16x32+48+102  generated/player_push_up0.png
	convert data/sprites.png -crop 16x32+48+134  generated/player_push_down0.png

	convert data/sprites.png -crop 16x32+64+38  generated/player_push_right1.png
	convert data/sprites.png -crop 16x32+64+70  generated/player_push_left1.png
	convert data/sprites.png -crop 16x32+64+102  generated/player_push_up1.png
	convert data/sprites.png -crop 16x32+64+134  generated/player_push_down1.png

	convert data/sprites.png -crop 16x32+80+38  generated/player_push_right2.png
	convert data/sprites.png -crop 16x32+80+70  generated/player_push_left2.png
	convert data/sprites.png -crop 16x32+80+102  generated/player_push_up2.png
	convert data/sprites.png -crop 16x32+80+134  generated/player_push_down2.png

	convert data/sprites.png -crop 16x32+0+38  generated/player_move_right0.png
	convert data/sprites.png -crop 16x32+0+70  generated/player_move_left0.png
	convert data/sprites.png -crop 16x32+0+102  generated/player_move_up0.png
	convert data/sprites.png -crop 16x32+0+134  generated/player_move_down0.png

	convert data/sprites.png -crop 16x32+16+38  generated/player_move_right1.png
	convert data/sprites.png -crop 16x32+16+70  generated/player_move_left1.png
	convert data/sprites.png -crop 16x32+16+102  generated/player_move_up1.png
	convert data/sprites.png -crop 16x32+16+134  generated/player_move_down1.png

	convert data/sprites.png -crop 16x32+32+38  generated/player_move_right2.png
	convert data/sprites.png -crop 16x32+32+70  generated/player_move_left2.png
	convert data/sprites.png -crop 16x32+32+102  generated/player_move_up2.png
	convert data/sprites.png -crop 16x32+32+134  generated/player_move_down2.png

	for nick in $(SPRITES); do \
		echo Try to convert $$nick; \
		$(IMGCONVERTER) generated/$$nick.png $(MODE_OPTION) $(PENS_OPTION) sprite --format zigzag+graycoded $(PALETTE_OPTION) generated/$$nick.bin || exit 1; \
	done

$(CONVERTED_TORCHES): data/menu_left.bmp data/levelend_left.bmp
	mkdir -p generated

	convert data/menu_left.bmp -crop 8x24+0+0  generated/torch1.png
	convert data/menu_left.bmp -crop 8x24+8+0  generated/torch2.png
	convert data/menu_left.bmp -crop 8x24+16+0  generated/torch3.png
	convert data/menu_left.bmp -crop 8x24+24+0  generated/torch4.png

	convert data/levelend_left.bmp -crop 8x24+0+0  generated/torch1b.png
	convert data/levelend_left.bmp -crop 8x24+8+0  generated/torch2b.png
	convert data/levelend_left.bmp -crop 8x24+16+0  generated/torch3b.png
	convert data/levelend_left.bmp -crop 8x24+24+0  generated/torch4b.png


#		$(IMGCONVERTER) generated/torch$$i.png $(MODE_OPTION) $(PENS_OPTION) sprite --format zigzag+graycoded $(PALETTE_OPTION) generated/torch$$i.bin || exit 1; \

	for i in 1 2 3 4 1b 2b 3b 4b ; do \
		$(IMGCONVERTER) generated/torch$$i.png $(MODE_OPTION)  $(PENS_OPTION) sprite --format zigzag+graycoded  generated/torch$$i.bin || exit 1; \
	done




$(CONVERTED_DIGITS) $(CONVERTED_EXTRA_LETTERS): ./data/numbers.png
	mkdir -p generated 

	convert data/numbers.png -crop 8x16+0+0  generated/0.png
	convert data/numbers.png -crop 8x16+8+0  generated/1.png
	convert data/numbers.png -crop 8x16+16+0  generated/2.png
	convert data/numbers.png -crop 8x16+24+0  generated/3.png
	convert data/numbers.png -crop 8x16+32+0  generated/4.png
	convert data/numbers.png -crop 8x16+40+0  generated/5.png
	convert data/numbers.png -crop 8x16+48+0  generated/6.png
	convert data/numbers.png -crop 8x16+56+0  generated/7.png
	convert data/numbers.png -crop 8x16+64+0  generated/8.png
	convert data/numbers.png -crop 8x16+72+0  generated/9.png

	convert data/numbers.png -crop 8x16+80+0  generated/dd.png
	convert data/numbers.png -crop 8x16+88+0  generated/sd.png

	convert data/numbers.png -crop 8x16+96+0  generated/comma.png
	convert data/numbers.png -crop 8x16+104+0  generated/apostrophe.png
	convert data/numbers.png -crop 8x16+112+0  generated/exclamation.png


	convert data/numbers.png -crop 8x16+0+17  generated/a.png
	convert data/numbers.png -crop 8x16+8+17  generated/b.png
	convert data/numbers.png -crop 8x16+16+17  generated/c.png
	convert data/numbers.png -crop 8x16+24+17  generated/d.png
	convert data/numbers.png -crop 8x16+32+17  generated/e.png
	convert data/numbers.png -crop 8x16+40+17  generated/f.png



	convert data/numbers.png -crop 8x16+48+17  generated/g.png
	convert data/numbers.png -crop 8x16+56+17  generated/h.png
	convert data/numbers.png -crop 8x16+64+17  generated/i.png
	convert data/numbers.png -crop 8x16+72+17  generated/j.png
	convert data/numbers.png -crop 8x16+80+17  generated/k.png
	convert data/numbers.png -crop 8x16+88+17  generated/l.png
	convert data/numbers.png -crop 8x16+96+17  generated/m.png
	convert data/numbers.png -crop 8x16+104+17  generated/n.png
	convert data/numbers.png -crop 8x16+112+17  generated/o.png
	convert data/numbers.png -crop 8x16+120+17  generated/p.png
	convert data/numbers.png -crop 8x16+128+17  generated/q.png
	convert data/numbers.png -crop 8x16+136+17  generated/r.png

	convert data/numbers.png -crop 8x16+144+17  generated/s.png
	convert data/numbers.png -crop 8x16+152+17  generated/t.png
	convert data/numbers.png -crop 8x16+160+17  generated/u.png
	convert data/numbers.png -crop 8x16+168+17  generated/v.png
	convert data/numbers.png -crop 8x16+176+17  generated/w.png
	convert data/numbers.png -crop 8x16+184+17  generated/x.png
	convert data/numbers.png -crop 8x16+192+17  generated/y.png
	convert data/numbers.png -crop 8x16+200+17  generated/z.png



	for i in $(DIGITS) $(EXTRA_LETTERS); do \
		$(IMGCONVERTER) generated/$$i.png -m 0 $(PENS_OPTION_FONT) sprite --format zigzag+graycoded generated/$$i.bin ; \
	done


generated/bigt.bin: data/t.bmp
	$(IMGCONVERTER) $^ -m 0 $(PENS_OPTION) sprite --format zigzag+graycoded $@ ; 

$(CONVERTED_LEVELS): tools/converter.py Makefile
	mkdir -p generated

	$(MAKE) solve_problems

	python3 tools/converter.py 0 data/MiniCosmos.txt  data/cosmonotes.txt  data/MicroCosmos.txt  data/NaboCosmos.txt  data/PicoCosmos.txt  data/Monster_Sokoban.txt  > generated/levels_data.asm

	for f in generated/level*.asm ; \
		do \
			echo $$f; \
			$(MAKE) $${f/.asm/.o} ; \
		done

generated/loading_screen.scr generated/loading_screen2.scr generated/loading_screen.inks: ./data/loading.bmp ./data/loading2.bmp
	mkdir -p generated
	$(IMGCONVERTER) --mode 0 --standard --pens 25,17,13,4,0,5,3,1,24,2,26,15,12,6,10,22 ./data/loading.bmp scr   generated/loading_screen.scr --inks generated/loading_screen.inks 
	$(IMGCONVERTER) --mode 0 --standard --pens 25,17,13,4,0,5,3,1,24,2,26,15,12,6,10,22 ./data/loading2.bmp scr   generated/loading_screen2.scr 


generated/loading_diff.asm: generated/loading_screen.scr generated/loading_screen2.scr tools/loading_diff.py
	python tools/loading_diff.py generated/loading_screen.scr generated/loading_screen2.scr > $@


generated/text_screen.scr: ./data/text_screen.bmp
	mkdir -p generated
	$(IMGCONVERTER) --mode 0 --standard --pens 25,17,13,4,0,5,3,1,24,2,26,15,12,6,10,22 $< scr   $@


.PHONY:build_levels
build_levels: 
	$(MAKE) $(CONVERTED_LEVELS)
	$(MAKE) crunch_levels

crunch_levels: $(CRUNCHED_LEVELS)
	for level in $(CRUNCHED_LEVELS); \
		do $(MAKE) $$level ; \
	done

clean:
	-rm *.sna *.bin *.png *.dat *.cdt *.dsk 
	-rm -rf generated
	cd tools/2cdt && make clean
	cd tools/PlayTZX && make clean



test: 
	$(MAKE) build_tools
	$(MAKE) build_levels
	$(MAKE) sokoban.sna
	$(XFER) $(CPCIP) -y -- sokoban.sna




# Build the list of codes to reach any level
codes.csv: game.sym
	echo 'LEVEL,CODE' > $@
	grep -E '^LEVEL[0-9]+\s' $^ | \
		sed -e 's/LEVEL//' | \
		sed -e 's/#/0x/' | \
		sort -n | \
		awk '{ \
			ADR=strtonum($$2); \
			LOW=and(ADR,255); \
			HIGH=rshift(and(ADR, 0xff00),8); \
			LOW=lshift(and(LOW,0x0f),4) + rshift(and(LOW,0xf0),4); \
			HIGH=lshift(and(HIGH,0x0f),4) + rshift(and(HIGH,0xf0),4); \
			VAL=(256*LOW) + xor(HIGH,LOW); \
			printf "%.3d,%.4x\n", $$1+1, VAL\
		}' >> $@


data/%.sol: data/%.txt
	mkdir -p generated
	$(FESTIVAL) $^ 
	mv solutions.sok $@


SOKOBAN_FILES=data/cosmonotes.txt data/MicroCosmos.txt data/MiniCosmos.txt data/NaboCosmos.txt data/PicoCosmos.txt data/Monster_Sokoban.txt
SOLUTION_FILES=$(SOKOBAN_FILES:data/%.txt=data/%.sol)
solve_problems: $(SOLUTION_FILES)


data/%.png: data/%.bmp
	convert $^ $@


build_tools:
	cd tools/2cdt && make
	cd tools/PlayTZX && make
	mkdir -p tools/cpclib
	cargo +nightly install --bin imgconverter --all-features --root tools/cpclib --version 0.4.3-alpha -- cpclib
	cargo +nightly install --bin cpclib-xfertool --all-features --root tools/cpclib --version 0.4.3-alpha -- cpclib-xfertool
	if ! test -d tools/rasm-1.2 ; then\
	 cd tools && \
	 wget https://github.com/EdouardBERGE/rasm/archive/v1.2.zip && \
	 unzip v1.2.zip; \
	fi
	cd tools/rasm-1.2 && gcc  rasm.c -lm  -march=native -o rasm
