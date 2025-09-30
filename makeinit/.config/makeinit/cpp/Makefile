CC      = g++
CFLAGS  = -g -Wall -Wextra -O3
MAIN 	= main
MAIN.C 	= $(MAIN).cpp
TARGET.D= target
TARGET  = $(TARGET.D)/a.out
COMPILE = $(CC) $(CFLAGS) -o $(TARGET) $(MAIN.C)
RM      = rm -f

default: all

all: build

build: $(MAIN.C)
	if [ ! -d $(TARGET.D) ]; then\
		mkdir target;\
	fi;\
		$(COMPILE);\

run: build $(MAIN.C)
	if [ "$$?" -eq "0" ]; then\
		./$(TARGET);\
	fi

r: run

clean:
	$(RM) $(TARGET)
