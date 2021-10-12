@i 
D=A
(LOOP)
@FSTART
D;JEQ
@SP
AM=M+1
A=A-1
M=0
D=D-1
@LOOP
0;JMP
(FSTART)

//2가지 의문점
//1. 리턴포인트를 설정할때 재귀함수의 경우 하나밖에 지정이 안될텐데 이를 어떻게 극복할 것인지.
//2. 왜 LCL 포인트가 SP포인트와 일치하게 들어가는지 -> function을 새로 생성할때마다 컴파일할떄 변수들을 전부 미리 처리해두면 스택에 추가적인공간이 필요없을것

