`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2024 20:24:16
// Design Name: 
// Module Name: dflipflop_tb
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


module dflipflop_tb(

    );
    reg clk,reset,D;
    wire Q;
    dflipflop instance_1(.clk(clk),.reset(reset),.D(D),.Q(Q));
    always begin
      #5 clk=~clk;
    end
    initial begin
      clk=0; reset=1; D=1;
      #5 D=1; reset=0;
      #5 D=0; 
      #10 D=0;
      #5 reset=1; D=1;
      #10 D=1; reset=0;
      #10 $finish;
    end
endmodule
