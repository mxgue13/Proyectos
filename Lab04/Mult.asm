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

@R0

	D=M

	@x

	M=D	// x = R0

	@R1

	D=M

	@y

	M=D	// y = R1

	@0

	D=A

	@R2

	M=D	// R2 = 0

(WHILE)

	@x

	D=M	

	@END

	D;JLE	// if x <= 0 goto END      

	@y

	D=M	// D = y

	@R2

	M=D+M	// sum = sum + y

	@1

	D=A	// D = 1

	@x

	M=M-D	// x = x - 1	

	@WHILE

	0;JMP	

(END)	

	@END

	0;JMP	