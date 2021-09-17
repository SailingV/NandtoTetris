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

@rowb
M=0	//rowb=0
@colb
M=0	//colb=0
@16
D=A
@high
M=D	//high = 16
@512
D=A
@highcal
M=D	//highcal = 512
@SCREEN
D=A
@sc
M=D	//sc = SCREEN
@addrrm
M=0	//addrrm = 0
@i
M=0	//i=0
@n
M=0	//n=0
//초기화



@R0
D=M
@rowb
M=D	//rowb = R0
@R1
D=M
@colb
M=D	//colb = R1
@sc
D=M
@addrrm
M=D
@colb
D=M
@addrrm
M=M+D	//addrrm = screen+colb

(LOOPM)
	@highcal
	D=M
	@temp
	M=M+D
	@i
	M=M+1
	D=M
	@n
	M=D
	@rowb
	D=M	
	@n
	M=M-D
	D=M
	@LOOPM
	D;JLT
	//LOOPM:
	//	temp = temp + highcal
	//	i++
	//	if i<rowb goto LOOPM
@temp
D=M
@addrrm
M=M+D	//addrrm = addrrm + temp
@i
M=0	//i=0
@temp
M=0	//temp=0
//addrrm = screen+colb+rowb*highcal 검은색 블록 초기 위치설정
@addrrm
D=M
@addr
M=D
@addrmov
M=D	//addr 백업값

(END)
@END
0;JMP	//종료


	

