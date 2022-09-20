all:
	yasm -f elf64 a0.asm
	gcc -o a0 a0.o -no-pie
