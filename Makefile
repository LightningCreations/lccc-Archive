TARGETS: bin/lccc

all: $(TARGETS)

bin/lccc: bin lib/liblcccCommon.a lib/libi386.a
	$(MAKE) -C lccc

lib/liblcccCommon.a: lib
	$(MAKE) -C common

lib/libi386.a: lib
	$(MAKE) -C targets/i386

bin:
	mkdir bin

lib:
	mkdir lib
