CC		= g++
DEBUGFLAGS	?= -g -Wall -Wextra -O0
RELFLAGS	?= -Wall -Wextra -O3 	# flags for optimized binary
SRC		= main.c
TARGET.D	= target
TARGET		= $(TARGET.D)/a.out
COMPILE		= $(CC) $(DEBUGFLAGS) -o $(TARGET) $(SRC)
RELNAME 	?= $(TARGET.D)/bin
RELCOMPILE	= $(CC) $(RELFLAGS) -o $(RELNAME) $(SRC)
RM		= rm -f

build: $(TARGET)

$(TARGET): $(SRC) $(TARGET.D)
	$(COMPILE)

$(TARGET.D):
	mkdir $(TARGET.D)

run: $(TARGET)
	./$(TARGET) $(args)

r: run

debug: $(TARGET)
	gdb ./$(TARGET)

db: debug

release: $(SRC) $(TARGET.D)
	$(RELCOMPILE)

clean:
	$(RM) $(TARGET)
