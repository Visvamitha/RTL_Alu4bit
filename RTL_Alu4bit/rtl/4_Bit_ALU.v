`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2026 17:25:18
// Design Name: 
// Module Name: 4 BIT ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu4bit(
    input [3:0] A,
    input [3:0] B,
    input [2:0] SEL,
    output reg [3:0] Y
    );
   
always @(*) begin
case(SEL)
3'b000:Y=A+B;
3'b001:Y=A-B; 
3'b010:Y=A&B; 
3'b011:Y=A|B; 
3'b100:Y=A^B; 
3'b101:Y=~A; 
3'b110:Y=A<<1; 
3'b111:Y=A>>1; 
default:Y=4'b0000; 
endcase
end
endmodule
