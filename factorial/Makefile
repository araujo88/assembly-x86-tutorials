all:
	nasm -f elf32 factorial.asm -o factorial.o
	ld -m elf_i386 factorial.o -o factorial

clean:
	rm -rf *.o factorial
