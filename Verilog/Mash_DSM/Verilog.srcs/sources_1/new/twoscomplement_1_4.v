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


module twoscomplement_1_4( input in,output [3:0] out

    );
    assign out[3]=in;
    assign out[2]=in;
    assign out[1]=in;
    assign out[0]=in;
endmodule
