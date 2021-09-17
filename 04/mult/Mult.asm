// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

	@sum
	M=0	// sum=0
	@1
	D=A	
	@i
	M=D	// i=1
	@R1
	D=M
	@n
	M=D	// n=R1
	@R0
	D=M
	@c
	M=D	// c=R0

(LOOP)
	@n
	D=M
	@i
	D=D-M
	@STOP
	D;JLT	// if 0 > n-i goto STOP
	@i
	M=M+1	// i++
	@c
	D=M
	@sum
	M=M+D	// sum=sum+c
	@LOOP
	0;JMP	//goto LOOP
(STOP)
	@sum
	D=M
	@R2
	M=D
(END)
	@END
	0;JMP