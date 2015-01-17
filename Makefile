
CC = gcc
CFLAGS = -Wall -O2
LIBS =
LIBS += -lz

TEST= test

# default target
.PHONY : all
all: $(TEST)
	@echo all done!

OBJS =
OBJS += http.o
OBJS += connect.o

TEST_OBJS = $(OBJS)
TEST_OBJS += test.o

http.o: http.c http.h
connect.o: connect.c connect.h
test.o: test.c

$(TEST): $(TEST_OBJS)
	$(CC) $(CFLAGS) $^ -o $@ $(LIBS)

.PHONY : clean
clean:
	rm -f *.o core a.out $(TEST)
