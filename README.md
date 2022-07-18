# assembly-x86-tutorials
Assembly x86 tutorials

## Running example 1

### Install assembler

`sudo apt-get install nasm`

### Assemble into machine code 

`nasm -f elf32 ex1.asm -o ex1.o`

elf32 - executable and linking format.

### Build the executable

`ld -m elf_i386 ex1.o -o ex1`

### Execute the binary

`./ex1`

### Check the exit status

`echo $?`

## Running example 10 (calls prinft from C)

### Assemble the object file

`nasm -f elf32 ex10.asm -o ex10.o`

### Perform linking with gcc

`gcc -m32 ex10.o -o ex10`
