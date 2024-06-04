parameter R = 7'h33;
    parameter fun3addsub = 3'h0;
        parameter fun7add = 7'h00;
        parameter fun7sub = 7'h20;
    parameter fun3or = 3'h6;
    parameter fun3and = 3'h7;
    parameter fun3sll = 3'h1;
parameter I = 7'h13;
    parameter fun3addi = 3'h0;
    parameter fun3slli = 3'h1;
    parameter fun3srli = 3'h5;
parameter L = 7'h03;
    parameter fun3lb = 3'h0;
    parameter fun3lw = 3'h2;
    parameter fun3lbu = 3'h4;
parameter S = 7'h23;
parameter B = 7'h63;
    parameter fun3beq = 3'h0;
    parameter fun3blt = 3'h4;
    parameter fun3bge = 3'h5;
    parameter fun3bltu = 3'h6;
    parameter fun3bgeu = 3'h7;
parameter J = 7'h6f;
//U type opcode ��ͳһ
parameter lui = 7'h37;
parameter auipc = 7'h17;

//ALUOp: IL/S 000, B 001, R 010, I 011, J 100, lui 101, auipc 110
parameter ALUOpLS = 3'b000;
parameter ALUOpL = 3'b000;
parameter ALUOpS = 3'b000;
parameter ALUOpB = 3'b001;
parameter ALUOpR = 3'b010;
parameter ALUOpI = 3'b011;
parameter ALUOpJ = 3'b100;
parameter ALUOplui = 3'b101;
parameter ALUOpauipc = 3'b110;
