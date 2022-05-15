# assembly-x86-tutorials
Assembly x86 tutorials

## Assemble into machine code 

`nasm -f elf32 ex1.asm -o ex1.`

elf32 - executable and linking format.

## Build the executable

`ld -m elf_i386 ex1.o -o ex1`

## Check the exit status

`echo $?`