`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2024 20:19:33
// Design Name: 
// Module Name: dflipflop
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


module dflipflop_neg( input clk,input reset,input D,output reg Q

    );
    always @(negedge clk) begin
    if(reset) begin
       Q<=0;
    end
    else begin
    Q<=D;
    end
    end
endmodule
