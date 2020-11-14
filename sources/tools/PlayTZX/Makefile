#
# Makefile for PlayTZX, simple
# 23.04.2020 : [tcat] thomas.kral@email.cz
#

playtzx: audio.o playtzx.o
	gcc -o playtzx audio.o playtzx.o

playtzx.o: playtzx.c
	gcc -c playtzx.c

audio.o: audio.c
	gcc -c audio.c

audio.o: audio.h
playtzx.o: au-file.h machines.h

install:
	install playtzx /usr/local/bin

unistall:
	rm -r /usr/local/bin/playtzx

clean:
	rm -r *.o

