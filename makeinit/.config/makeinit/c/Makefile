CC		?= gcc
DEBUGFLAGS	?= -g -Wall -Wextra -O0
RELFLAGS	?= -Wall -Wextra -O3 	# flags for optimized binary
SRC		?= main.c
TARGET.D	?= target
TARGET		?= $(TARGET.D)/a.out
RELNAME 	?= $(TARGET.D)/bin
RM		?= rm -f

build: $(TARGET)

$(TARGET): $(SRC) $(TARGET.D)
	$(CC) $(DEBUGFLAGS) -o $@ $<

$(TARGET.D):
	mkdir $@

run: $(TARGET)
	./$< $(args)

debug: $(TARGET)
	gdb ./$<

db: debug

$(RELNAME): $(SRC) $(TARGET.D)
	$(CC) $(RELFLAGS) -o $@ $<

release: $(RELNAME)

clean:
	$(RM) $(TARGET)

.PHONY: build run debug db release clean
