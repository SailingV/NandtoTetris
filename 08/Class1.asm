//function Class1.set 0
(Class1.set)
@0
D=A
(LOOP_Class1.set)
@FSTART_Class1.set
D;JEQ
@SP
AM=M+1
A=A-1
M=0
D=D-1
@LOOP_Class1.set
0;JMP
(FSTART_Class1.set)
//push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
//pop static 0
@SP
AM=M-1
D=M
@Class1.0
M=D
//push argument 1
@1
D=A
@ARG
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
//pop static 1
@SP
AM=M-1
D=M
@Class1.1
M=D
//push constant 0
@0
D=A
@SP
AM=M+1
A=A-1
M=D
//return
@LCL
D=M
@5
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@5
AM=M-1
D=M
@THAT
M=D
@5
AM=M-1
D=M
@THIS
M=D
@5
AM=M-1
D=M
@ARG
M=D
@5
AM=M-1
D=M
@LCL
M=D
@5
A=M-1
A=M
0;JMP
//function Class1.get 0
(Class1.get)
@0
D=A
(LOOP_Class1.get)
@FSTART_Class1.get
D;JEQ
@SP
AM=M+1
A=A-1
M=0
D=D-1
@LOOP_Class1.get
0;JMP
(FSTART_Class1.get)
//push static 0
@Class1.0
D=M
@SP
AM=M+1
A=A-1
M=D
//push static 1
@Class1.1
D=M
@SP
AM=M+1
A=A-1
M=D
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//return
@LCL
D=M
@5
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@5
AM=M-1
D=M
@THAT
M=D
@5
AM=M-1
D=M
@THIS
M=D
@5
AM=M-1
D=M
@ARG
M=D
@5
AM=M-1
D=M
@LCL
M=D
@5
A=M-1
A=M
0;JMP
