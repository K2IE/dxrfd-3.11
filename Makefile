# Copyright (c) 2017 by Daniel L. Srebnick - K2IE

BINDIR=/usr/local/bin
CFGDIR=/usr/local/etc
CPPFLAGS=-W -Wall -g

all: dxrfd xrf_lh

dxrfd:
	g++ $(CPPFLAGS) -o dxrfd dxrfd.cpp -lrt -pthread

xrf_lh:
	g++ $(CPPFLAGS) -o xrf_lh xrf_lh.cpp -lrt

clean:
	$(RM) *.o dxrfd xrf_lh

install-dxrfd:
	strip -p dxrfd
	cp dxrfd $(BINDIR)

install-xrf_lh:
	strip -p xrf_lh
	cp xrf_lh $(BINDIR)
