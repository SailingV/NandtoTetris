//function Sys.init 0
(Sys.init)
@0
D=A
(LOOP_Sys.init)
@FSTART_Sys.init
D;JEQ
@SP
AM=M+1
A=A-1
M=0
D=D-1
@LOOP_Sys.init
0;JMP
(FSTART_Sys.init)
//push constant 4
@4
D=A
@SP
AM=M+1
A=A-1
M=D
//call Main.fibonacci 1
@Sys.Main.fibonacci$ret.0
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
(Sys.Main.fibonacci$ret.0)
//label WHILE
(WHILE$bar)
//goto WHILE
@WHILE$bar
0;JMP
