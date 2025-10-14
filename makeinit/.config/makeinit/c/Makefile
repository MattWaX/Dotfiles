CC      = gcc
CFLAGS  = -g -Wall -Wextra -O3
MAIN 	= main
MAIN.C 	= $(MAIN).c
SRC	= $(MAIN.C)
TARGET.D= target
TARGET  = $(TARGET.D)/a.out
COMPILE = $(CC) $(CFLAGS) -o $(TARGET) $(MAIN.C)
RM      = rm -f

default: all

all: build

build: $(SRC)
	if [ ! -d $(TARGET.D) ]; then\
		mkdir target;\
	fi;\
		$(COMPILE);\

run: build $(SRC)
	if [ "$$?" -eq "0" ]; then\
		./$(TARGET) $(args);\
	fi

r: run

debug: build $(SRC)
	if [ "$$?" -eq "0" ]; then\
		gdb ./$(TARGET);\
	fi

db: debug

clean:
	$(RM) $(TARGET)
