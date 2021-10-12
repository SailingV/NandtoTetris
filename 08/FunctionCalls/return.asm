@LCL
D=M
@5		//endFrame
M=D		//endFrame = LCL
@SP
AM=M-1
D=M
@ARG
A=M
M=D		//*ARG = pop()
@ARG
D=M+1
@SP
M=D		//SP=ARG+1
@5
AM=M-1		//endFrame = LCL-1
D=M		//D = *(LCL-1)
@THAT
M=D		//THAT = *(endFrame - 1)
@5
AM=M-1		//endFrame = LCL-2
D=M		//D = *(LCL-2)
@THIS 
M=D		//THIS = *(endFrame - 2)
@5
AM=M-1		//endFrame = LCL-3
D=M		//D = *(LCL-3)
@ARG
M=D		//ARG = *(endFrame - 3)
@5
AM=M-1		//endFrame = LCL-4
D=M		//D = *(LCL-4)
@LCL
M=D		//LCL = *(endFrame - 4)
@5
A=M-1
A=M
0;JMP		//goto retAddr
