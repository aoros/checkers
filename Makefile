CC              := gcc
CFLAGS          := -Wall -ggdb
CPPFLAGS        := -I./ -I/usr/X11R6/include/Xm -I/usr/X11R6/include -I/usr/include/openmotif
#LDFLAGS         := -L/usr/lib/X11R6 -lXm -lXaw -lXmu -lXt -lX11
#LDFLAGS         := -L/usr/X11R6/lib -L /usr/X11R6/LessTif/Motif1.2/lib -lXm -lXaw -lXmu -lXt -lX11 -lICE -lSM -pthread -L/usr/lib64/openmotif/
LDFLAGS         := -L/usr/X11R6/lib -L /usr/X11R6/LessTif/Motif1.2/lib -lXm -lXmu -lXt -lX11 -lICE -lSM -pthread -L/usr/lib64/openmotif/

# Uncomment this next line if you'd like to compile the graphical version of the checkers server.
# CFLAGS          += -DGRAPHICS

all: checkers ma mr abe1
checkers: graphics.o
ma: material_advantage.o
	${CC} ${CPPFLAGS} ${CFLAGS} -o $@ $^
mr: material_ratio.o
	${CC} ${CPPFLAGS} ${CFLAGS} -o $@ $^
abe1: abeProg_1.o
	${CC} ${CPPFLAGS} ${CFLAGS} -o $@ $^

.PHONY: clean
clean:
	@-rm checkers ma mr abe1 *.o
