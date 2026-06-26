`timescale 1ns / 1ps

module tb_alu4bit;

reg [3:0] A;
reg [3:0] B;
reg [2:0] Sel;

wire [3:0] Result;
wire Carry;

alu4bit uut (
    .A(A),
    .B(B),
    .Sel(Sel),
    .Result(Result),
    .Carry(Carry)
);

initial begin

    $display("Time\tSel\tA\tB\tResult\tCarry");
    $monitor("%0t\t%b\t%d\t%d\t%d\t%b",
             $time, Sel, A, B, Result, Carry);
    A = 4'b1010;
    B = 4'b0100;
    Sel = 3'b000;
    #10;
    Sel = 3'b001;
    #10;
    Sel = 3'b010;
    #10;
    Sel = 3'b011;
    #10;
    Sel = 3'b100;
    #10;
    Sel = 3'b101;
    #10;
    Sel = 3'b110;
    #10;
    Sel = 3'b111;
    #10;
    
    $finish;

end

endmodule