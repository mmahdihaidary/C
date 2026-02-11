CC == gcc 							# define the compiler
CFLAGS = -Wall -Wextra -g			# compiler flags
TARGET = hello						# project name
SOURCE = main.c hello.c				# source files
OBJECTS = $(SOURCE:.c=.o)			# object files

# OS detection
ifeq ($(OS),Windows_NT)
	RM = del /Q
	EXE = .exe
	RUN = .\$(TARGET)$(EXE)
else
	RM = rm -f
	EXE =
	RUN ./$(TARGET)
endif

# default target
all: $(TARGET)

# link object files to create executable
$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJECTS)

# compile source into objects
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# clean up
clean:
	$(RM) $(OBJECTS) $(TARGET)$(EXE) *.exe

# run
run: $(TARGET)
	$(RUN) 

# test
test: $(TARGET)
	.\$(TARGET)$(EXE) --test

.PHONY: all clean run