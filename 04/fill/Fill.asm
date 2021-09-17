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

@temp
M=0	//temp=0
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
M=D	//addrrm = 0
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
@addrrm
D=M
@temp
M=M+D
@addrrm
M=D	//addrrm = addrrm + temp
@i
M=0	//i=0
@temp
M=0	//temp=0
//addrrm = screen+colb+rowb*highcal 검은색 블록 초기 위치설정
@addrrm
D=M
@addr
M=D
@addrr
M=D
@addrmov
M=D	//addr 백업값


(START)
	@KBD
	D=M
	@key
	M=D
	@esc
	M=D
	@140
	D=A
	@esc
	M=M-D
	D=M
	@END
	D;JEQ
	@key
	D=M
	@BLACK
	D;JNE
	@WHITE
	0;JMP
	//키를 누르면 BLACK으로 키를 누르지않으면 WHITE로 이동
	
(BLACK)
(LOOPB)
	@addrmov
	A=M
	M=-1		// RAM[addrmov] = -1
	@32
	D=A
	@addrmov
	M=M+D		// addrmov = addrmov+32
	@i
	M=M+1		//i++
	D=M
	@high
	D=D-M
	@LOOPB
	D;JLE		//화면에 정사각형 16*16 검은색 블록만들기
	@addr
	M=M+1
	D=M
	@addrmov
	M=D		//검은색 블록 좌표 수평이동
	@i
	M=0		//i 초기화
	@START
	0;JMP		//START로 돌아감
	
	



(WHITE)
(LOOPW)
	@addrrm
	A=M
	M=0		//RAM[addrrm] = 0
	@32
	D=A
	@addrrm
	M=M+D		//addrrm = addrrm+32
	@i
	M=M+1
	D=M
	@high
	D=D-M
	@LOOPW
	D;JLE		//검은색 블록을 흰색으로 만듬
	@addrr
	M=M+1
	D=M
	@addrrm
	M=D		//지우개용 좌표 초기화
	@i
	M=0		//i 초기화
	@START
	0;JMP		//START로 돌아감
	
(END)
@END
0;JMP	//종료


	

