
CC = gcc
LEX = flex

bin = hl

all: cr_cpri.h cr_epri.h
	$(LEX) -o cr_lex.yy.c cr_lex.l
	$(CC) -c cr_lex.yy.c -o cr_lex.o
	$(CC) -c cr_gpri.c   -o cr_gpri.o
	$(CC) -c cr_main.c   -o cr_main.o
	$(CC) -o $(bin) cr_main.o cr_gpri.o cr_lex.o
	strip hl
	./hl -V || :

clean:
	@ rm -f cr_lex.yy.c
	@ rm -f *.o
	@ rm -f $(bin)


uninstall:
	rm -f /usr/bin/$(bin)
	rm -f /etc/default/hl

install:
	cp -f $(bin) /usr/bin/$(bin)
	cp -f ../config_files/hl /etc/default/hl
