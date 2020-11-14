# Play TZX , TZX to VOC Converter

This is utility for Linux, that can play .TZX tape format. It can output sound to lineout, alternatively to .VOC [.AU] files.

The source is taken from World of Spectrum, and only slightly updated to compile on Debian 10 (Buster), although should work on other Linuces, too.

As original automake and configure scripts were outdated, a simple Makefile is supplied instead.


**Prerequisite**

	As PlayTZX relies on OSS sound system, oss-compat, and PulseAudio
	are required installed on any modern system. Future path is to replace
	oss-compat with osspd, but that does not perform well on older x86 machine.


**How to build**

	$ make
	$ [sudo] make install
