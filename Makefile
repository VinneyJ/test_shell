CC=gcc
CFLAGS=-g
DEPS = shell.h
OBJ = strings.o strings_second.o main_shell.o env.o built_ins.o execute.o parser.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hsh: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)
