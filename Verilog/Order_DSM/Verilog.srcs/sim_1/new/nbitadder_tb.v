`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2024 20:21:04
// Design Name: 
// Module Name: nbitadder_tb
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


module nbitadder_tb #(parameter N=3)(

    );
    reg [N-1:0] in1,in2;
    wire [N-1:0] out;
    wire Cout;
    nbitadder instance_1(.in1(in1),.in2(in2),.out(out),.Cout(Cout));
    initial begin
       in1=3'b011; in2=3'b010;
       #5 in1=3'b010; in2=3'b101;
       #5 in1=3'b111; in2=3'b111;
       #5 in1=3'b101; in2=3'b101;
       #5 $finish;
    end
    
endmodule
