@SP
AM=M-1
D=M		
A=A-1		
D=M-D		
@TRUE
D;JLT		
@SP
A=M
M=0
@FALSE
0;JMP
(TRUE)
@SP
A=M
M=-1		
(FALSE)