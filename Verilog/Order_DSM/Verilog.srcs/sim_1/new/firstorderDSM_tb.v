`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2024 20:49:39
// Design Name: 
// Module Name: firstorderDSM_tb
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


module firstorderSDM_tb(

    );
    reg clk,reset;
    reg [12:0] K,M;
    wire b;
    wire [12:0] out2,count,Sum;
    firstorderDSM instance_DSM(.clk(clk),.reset(reset),.K(K),.M(M),.b(b),.out2(out2),.count(count),.Sum(Sum));
    always begin
    #5 clk=~clk;
    end
    initial begin
    clk=0; reset=1; K=11;
    M=100;
    #10 reset=0;
    #50000 $finish;
    end
   
endmodule