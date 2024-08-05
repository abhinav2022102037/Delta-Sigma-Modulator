`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2024 22:45:08
// Design Name: 
// Module Name: twoscomplement_3
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


module twoscomplement_3(input [2:0] in,output [2:0] out

    );
    wire [2:0] temp;
    assign temp[2]=~in[2];
    assign temp[1]=~in[1];
    assign temp[0]=~in[0];
    assign out=temp+1;
    
endmodule