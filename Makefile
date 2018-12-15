all:libmainloop.a

SRC = $(wildcard *.c)
OBJ = $(patsubst %.c, %.o, $(SRC))

libmainloop.a: $(OBJ)
	ar -cr $@ $^

.PHONY:all clean

clean:
	-rm -f libmainloop.a $(OBJ)
