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
//push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
//push constant 8
@8
D=A
@SP
AM=M+1
A=A-1
M=D
//call Class1.set 2
@Class1.set$ret.2
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class1.set
0;JMP
(Class1.set$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//push constant 23
@23
D=A
@SP
AM=M+1
A=A-1
M=D
//push constant 15
@15
D=A
@SP
AM=M+1
A=A-1
M=D
//call Class2.set 2
@Class2.set$ret.2
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class2.set
0;JMP
(Class2.set$ret.2)
//pop temp 0
@SP
AM=M-1
D=M
@5
M=D
//call Class1.get 0
@Class1.get$ret.0
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
@0
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class1.get
0;JMP
(Class1.get$ret.0)
//call Class2.get 0
@Class2.get$ret.0
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
@0
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class2.get
0;JMP
(Class2.get$ret.0)
//label WHILE
(WHILE$bar)
//goto WHILE
@WHILE$bar
0;JMP
