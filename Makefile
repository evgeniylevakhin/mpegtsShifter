CFLAGS 	+= $(shell pkg-config --cflags libavutil libavformat libavcodec libswscale)
LIBS 	+= $(shell pkg-config --libs libavutil libavformat libavcodec libswscale)

all:
	g++ $(CFLAGS) -Wall -g shifter.cc -o shifter $(LIBS)

clean:
	rm shifter

install: shifter
	cp shifter /usr/local/bin/

uninstall:
	rm /usr/local/bin/shifter
