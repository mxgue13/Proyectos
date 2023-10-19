// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(START)

	@KBD

	D=M

	@KEY_PRESSED

	D;JNE

	@NO_KEY_PRESSED

	0;JMP

(KEY_PRESSED)

	@0

	D=A-1	

	@filler

	M=D	

(SCREEN_FILL_LOOP_START)

	@8192	

	D=A

	@remainingWords

	M=D	

	@SCREEN

	D=A

	@position

	M=D	

(SCREEN_FILL_LOOP)

	@remainingWords

	D=M

	@START

	D;JLE	

	@filler

	D=M

	@position

	A=M

	M=D

	@remainingWords

	M=M-1	

	@position

	M=M+1	

	@SCREEN_FILL_LOOP

	0;JMP

(NO_KEY_PRESSED)

	@0

	D=A

	@filler

	M=D	

	@SCREEN_FILL_LOOP_START

	0;JMP	