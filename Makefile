#options and flags#
GCC			= gcc
I386		= -m32
MAIN_FILE	= test
LIB_DIR     = /usr/local/lib
DEBUG_LEVEL     = -g
EXTRA_CCFLAGS   = -Wall
CXXFLAGS        = $(DEBUG_LEVEL) $(EXTRA_CCFLAGS)
CCFLAGS         = $(CXXFLAGS)


all: build run clean

build:
	$(GCC) $(I386) $(MAIN_FILE).c -o $(MAIN_FILE)
	#gcc -m32 test.c -o test
run:
	./test
run_valgrind:
	valgrind ./test
clean:
	rm test