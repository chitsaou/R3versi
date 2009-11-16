SRC =		reversi.c reversi-core.c vector.c visio.c
OBJ =		reversi.o reversi-core.o vector.o visio.o
EXE =		reversi

CC=			gcc
CFLAGS+=	-I./include -ansi
LDFLAGS+=	-lcurses

all:	$(EXE)

clean:
	rm -f *.o *.core *~

$(EXE): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $(OBJ) $(LDFLAGS)

install: $(EXE)
	install -m 755 $? $(HOME)/bin
