`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2024 20:24:56
// Design Name: 
// Module Name: km_select_tb
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


module km_select_tb(

    );
    reg b;
    reg [12:0] K;
    reg [12:0] M;
    wire [12:0] out;
    
    km_select instance1(.b(b),.K(K),.M(M),.out(out));
    
    initial begin
    K=0; M=5;
    #10 b=1;
    #10 b=0;
    #5 b=1;
    #5 $finish;
    end
    
endmodule
