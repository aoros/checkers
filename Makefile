CC              := gcc
CFLAGS          := -Wall -ggdb
CPPFLAGS        := -I./ -I/usr/X11R6/include/Xm -I/usr/X11R6/include -I/usr/include/openmotif
#LDFLAGS         := -L/usr/lib/X11R6 -lXm -lXaw -lXmu -lXt -lX11
#LDFLAGS         := -L/usr/X11R6/lib -L /usr/X11R6/LessTif/Motif1.2/lib -lXm -lXaw -lXmu -lXt -lX11 -lICE -lSM -pthread -L/usr/lib64/openmotif/
LDFLAGS         := -L/usr/X11R6/lib -L /usr/X11R6/LessTif/Motif1.2/lib -lXm -lXmu -lXt -lX11 -lICE -lSM -pthread -L/usr/lib64/openmotif/

# Uncomment this next line if you'd like to compile the graphical version of the checkers server.
# CFLAGS          += -DGRAPHICS

all: checkers ma mr abe1 abe2 abe3 abe4 abe5
checkers: graphics.o
ma: material_advantage.o
	${CC} ${CPPFLAGS} ${CFLAGS} -lm -o $@ $^
mr: material_ratio.o
	${CC} ${CPPFLAGS} ${CFLAGS} -lm -o $@ $^
abe1: abeProg_1.o
	${CC} ${CPPFLAGS} ${CFLAGS} -lm -o $@ $^
abe2: abeProg_2.o
	${CC} ${CPPFLAGS} ${CFLAGS} -lm -o $@ $^
abe3: abeProg_3.o
	${CC} ${CPPFLAGS} ${CFLAGS} -lm -o $@ $^
abe4: abeProg_4.o
	${CC} ${CPPFLAGS} ${CFLAGS} -lm -o $@ $^
abe5: abeProg_5.o
	${CC} ${CPPFLAGS} ${CFLAGS} -lm -o $@ $^

.PHONY: clean
clean:
	@-rm checkers ma mr abe1 abe2 abe3 abe4 abe5 *.o
