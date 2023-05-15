AS=nasm
ASFLAGS=-f elf64
PROGRAM_NAME=myprogram

all: $(PROGRAM_NAME)

$(PROGRAM_NAME): $(PROGRAM_NAME).o
	ld -s -o $(PROGRAM_NAME) $(PROGRAM_NAME).o

%.o: %.asm
	$(AS) $(ASFLAGS) $< -o $@

clean:
	rm -f *.o $(PROGRAM_NAME)