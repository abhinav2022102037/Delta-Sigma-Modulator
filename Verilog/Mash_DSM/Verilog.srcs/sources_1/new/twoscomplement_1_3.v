`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2024 20:59:15
// Design Name: 
// Module Name: twoscomplement_1_2
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


module twoscomplement_1_3( input in,output [2:0] out

    );
    assign out[2]=in;
    assign out[1]=in;
    assign out[0]=in;
endmodule
