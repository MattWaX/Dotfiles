CC      = gcc
DFLAGS	= -g -Wall -Wextra -O0 # Debug flags
CFLAGS  = -Wall -Wextra -O3
MAIN 	= main
MAIN.C 	= $(MAIN).c
SRC	= $(MAIN.C)
TARGET.D= target
TARGET  = $(TARGET.D)/a.out
DCOMPILE= $(CC) $(DFLAGS) -o $(TARGET) $(MAIN.C)
COMPILE = $(CC) $(CFLAGS) -o $(TARGET) $(MAIN.C)
RM      = rm -f

default: all

all: build

build: $(SRC)
	if [ ! -d $(TARGET.D) ]; then\
		mkdir target;\
	fi;\
		$(COMPILE);\

debug_build: $(SRC)
	if [ ! -d $(TARGET.D) ]; then\
		mkdir target;\
	fi;\
		$(DCOMPILE);\

dbuild: debug_build

run: build $(SRC)
	if [ "$$?" -eq "0" ]; then\
		./$(TARGET) $(args);\
	fi

r: run

debug: debug_build $(SRC)
	if [ "$$?" -eq "0" ]; then\
		gdb ./$(TARGET);\
	fi

db: debug

clean:
	$(RM) $(TARGET)
