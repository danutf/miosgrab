CFLAGS	?= -O2 -W -Wall -Iinclude
LDFLAGS	?=
LIBS	:= -lrt -lpthread -lv4l2

%.o : %.c
		$(CC) $(CFLAGS) -c -o $@ $<

all: miosgrab

miosgrab: miosgrab.o
		$(CC) $(LDFLAGS) -o $@ $^ $(LIBS)

clean:
		-rm -f *.o
		-rm -f miosgrab


