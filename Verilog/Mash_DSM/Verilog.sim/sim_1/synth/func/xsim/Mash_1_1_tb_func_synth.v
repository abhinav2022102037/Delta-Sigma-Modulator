// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Jun 23 23:51:12 2024
// Host        : IC-WiBES running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/IC-Wi/Desktop/2022102037/Delta Sigma
//               Modulator/Verilog/Verilog.sim/sim_1/synth/func/xsim/Mash_1_1_tb_func_synth.v}
// Design      : Mash_1_1_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* N = "3" *) 
(* NotValidForBitStream *)
module Mash_1_1_1
   (clk,
    reset,
    in,
    out);
  input clk;
  input reset;
  input [2:0]in;
  output [3:0]out;

  wire Q;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]in;
  wire in1;
  wire [2:0]in_IBUF;
  wire instance_1_n_0;
  wire instance_1_n_1;
  wire instance_1_n_10;
  wire instance_1_n_11;
  wire instance_1_n_2;
  wire instance_1_n_7;
  wire instance_1_n_8;
  wire instance_1_n_9;
  wire instance_2_n_0;
  wire instance_2_n_1;
  wire instance_2_n_2;
  wire instance_2_n_3;
  wire instance_2_n_4;
  wire instance_3_n_0;
  wire instance_3_n_1;
  wire instance_3_n_2;
  wire instance_8_n_0;
  wire [3:0]out;
  wire [3:0]out_OBUF;
  wire reset;
  wire reset_IBUF;
  wire [1:0]temp5;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \in_IBUF[0]_inst 
       (.I(in[0]),
        .O(in_IBUF[0]));
  IBUF \in_IBUF[1]_inst 
       (.I(in[1]),
        .O(in_IBUF[1]));
  IBUF \in_IBUF[2]_inst 
       (.I(in[2]),
        .O(in_IBUF[2]));
  accumulator instance_1
       (.CLK(clk_IBUF_BUFG),
        .D({instance_1_n_8,instance_1_n_9,instance_1_n_10}),
        .Q({instance_1_n_0,instance_1_n_1,instance_1_n_2}),
        .SR(reset_IBUF),
        .in1(in1),
        .in_IBUF(in_IBUF),
        .\out[1] (temp5),
        .\out[3] (instance_8_n_0),
        .out_OBUF(out_OBUF),
        .\out_reg[0] (instance_1_n_11),
        .\out_reg[0]_0 (Q),
        .\out_reg[0]_1 ({instance_2_n_0,instance_2_n_1,instance_2_n_2}),
        .\out_reg[1] (instance_1_n_7));
  accumulator_0 instance_2
       (.CLK(clk_IBUF_BUFG),
        .D({instance_2_n_3,instance_2_n_4}),
        .Q({instance_2_n_0,instance_2_n_1,instance_2_n_2}),
        .Q_reg({instance_3_n_0,instance_3_n_1,instance_3_n_2}),
        .SR(reset_IBUF),
        .in1(in1),
        .\out_reg[0] (instance_1_n_11),
        .\out_reg[2] ({instance_1_n_0,instance_1_n_1,instance_1_n_2}));
  accumulator_1 instance_3
       (.CLK(clk_IBUF_BUFG),
        .D({instance_2_n_3,instance_2_n_4}),
        .Q({instance_3_n_0,instance_3_n_1,instance_3_n_2}),
        .SR(reset_IBUF),
        .\out_reg[1] ({instance_2_n_1,instance_2_n_2}));
  dflipflop instance_4
       (.CLK(clk_IBUF_BUFG),
        .Q_reg_0(Q),
        .SR(reset_IBUF),
        .in1(in1));
  threebitflipflop instance_8
       (.CLK(clk_IBUF_BUFG),
        .D({instance_1_n_8,instance_1_n_9,instance_1_n_10}),
        .Q(temp5),
        .SR(reset_IBUF),
        .in1(in1),
        .\out_OBUF[2]_inst_i_1 (Q),
        .\out_OBUF[2]_inst_i_1_0 (instance_1_n_7),
        .\out_reg[2]_0 (instance_8_n_0));
  OBUF \out_OBUF[0]_inst 
       (.I(out_OBUF[0]),
        .O(out[0]));
  OBUF \out_OBUF[1]_inst 
       (.I(out_OBUF[1]),
        .O(out[1]));
  OBUF \out_OBUF[2]_inst 
       (.I(out_OBUF[2]),
        .O(out[2]));
  OBUF \out_OBUF[3]_inst 
       (.I(out_OBUF[3]),
        .O(out[3]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
endmodule

module accumulator
   (Q,
    out_OBUF,
    \out_reg[1] ,
    D,
    \out_reg[0] ,
    in_IBUF,
    in1,
    \out_reg[0]_0 ,
    \out[1] ,
    \out[3] ,
    \out_reg[0]_1 ,
    SR,
    CLK);
  output [2:0]Q;
  output [3:0]out_OBUF;
  output \out_reg[1] ;
  output [2:0]D;
  output [0:0]\out_reg[0] ;
  input [2:0]in_IBUF;
  input in1;
  input \out_reg[0]_0 ;
  input [1:0]\out[1] ;
  input \out[3] ;
  input [2:0]\out_reg[0]_1 ;
  input [0:0]SR;
  input CLK;

  wire CLK;
  wire [2:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire in1;
  wire [2:0]in_IBUF;
  wire [1:0]\out[1] ;
  wire \out[3] ;
  wire [3:0]out_OBUF;
  wire [0:0]\out_reg[0] ;
  wire \out_reg[0]_0 ;
  wire [2:0]\out_reg[0]_1 ;
  wire \out_reg[1] ;

  nbitflipflop_3 instance_1
       (.CLK(CLK),
        .D(D),
        .Q(Q),
        .SR(SR),
        .in1(in1),
        .in_IBUF(in_IBUF),
        .\out[1] (\out[1] ),
        .\out[3] (\out[3] ),
        .out_OBUF(out_OBUF),
        .\out_reg[0]_0 (\out_reg[0] ),
        .\out_reg[0]_1 (\out_reg[0]_0 ),
        .\out_reg[0]_2 (\out_reg[0]_1 ),
        .\out_reg[1]_0 (\out_reg[1] ));
endmodule

(* ORIG_REF_NAME = "accumulator" *) 
module accumulator_0
   (Q,
    D,
    in1,
    \out_reg[2] ,
    Q_reg,
    SR,
    CLK,
    \out_reg[0] );
  output [2:0]Q;
  output [1:0]D;
  output in1;
  input [2:0]\out_reg[2] ;
  input [2:0]Q_reg;
  input [0:0]SR;
  input CLK;
  input [0:0]\out_reg[0] ;

  wire CLK;
  wire [1:0]D;
  wire [2:0]Q;
  wire [2:0]Q_reg;
  wire [0:0]SR;
  wire in1;
  wire [0:0]\out_reg[0] ;
  wire [2:0]\out_reg[2] ;

  nbitflipflop_2 instance_1
       (.CLK(CLK),
        .D(D),
        .Q(Q),
        .Q_reg(Q_reg),
        .SR(SR),
        .in1(in1),
        .\out_reg[0]_0 (\out_reg[0] ),
        .\out_reg[2]_0 (\out_reg[2] ));
endmodule

(* ORIG_REF_NAME = "accumulator" *) 
module accumulator_1
   (Q,
    \out_reg[1] ,
    SR,
    D,
    CLK);
  output [2:0]Q;
  input [1:0]\out_reg[1] ;
  input [0:0]SR;
  input [1:0]D;
  input CLK;

  wire CLK;
  wire [1:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [1:0]\out_reg[1] ;

  nbitflipflop instance_1
       (.CLK(CLK),
        .D(D),
        .Q(Q),
        .SR(SR),
        .\out_reg[1]_0 (\out_reg[1] ));
endmodule

module dflipflop
   (Q_reg_0,
    SR,
    in1,
    CLK);
  output Q_reg_0;
  input [0:0]SR;
  input in1;
  input CLK;

  wire CLK;
  wire Q_reg_0;
  wire [0:0]SR;
  wire in1;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(in1),
        .Q(Q_reg_0),
        .R(SR));
endmodule

module nbitflipflop
   (Q,
    \out_reg[1]_0 ,
    SR,
    D,
    CLK);
  output [2:0]Q;
  input [1:0]\out_reg[1]_0 ;
  input [0:0]SR;
  input [1:0]D;
  input CLK;

  wire CLK;
  wire [1:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire \out[1]_i_1__2_n_0 ;
  wire [1:0]\out_reg[1]_0 ;

  LUT4 #(
    .INIT(16'h8778)) 
    \out[1]_i_1__2 
       (.I0(Q[0]),
        .I1(\out_reg[1]_0 [0]),
        .I2(Q[1]),
        .I3(\out_reg[1]_0 [1]),
        .O(\out[1]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\out[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[2]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "nbitflipflop" *) 
module nbitflipflop_2
   (Q,
    D,
    in1,
    \out_reg[2]_0 ,
    Q_reg,
    SR,
    CLK,
    \out_reg[0]_0 );
  output [2:0]Q;
  output [1:0]D;
  output in1;
  input [2:0]\out_reg[2]_0 ;
  input [2:0]Q_reg;
  input [0:0]SR;
  input CLK;
  input [0:0]\out_reg[0]_0 ;

  wire CLK;
  wire [1:0]D;
  wire [2:0]Q;
  wire [2:0]Q_reg;
  wire [0:0]SR;
  wire in1;
  wire \out[1]_i_1__0_n_0 ;
  wire \out[2]_i_1__1_n_0 ;
  wire [0:0]\out_reg[0]_0 ;
  wire [2:0]\out_reg[2]_0 ;

  LUT6 #(
    .INIT(64'hFFFFEA80EA800000)) 
    Q_i_1
       (.I0(Q[1]),
        .I1(Q_reg[0]),
        .I2(Q[0]),
        .I3(Q_reg[1]),
        .I4(Q[2]),
        .I5(Q_reg[2]),
        .O(in1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out[0]_i_1__1 
       (.I0(Q[0]),
        .I1(Q_reg[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \out[1]_i_1__0 
       (.I0(Q[0]),
        .I1(\out_reg[2]_0 [0]),
        .I2(Q[1]),
        .I3(\out_reg[2]_0 [1]),
        .O(\out[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h9996969696666666)) 
    \out[2]_i_1__1 
       (.I0(Q[2]),
        .I1(\out_reg[2]_0 [2]),
        .I2(Q[1]),
        .I3(\out_reg[2]_0 [0]),
        .I4(Q[0]),
        .I5(\out_reg[2]_0 [1]),
        .O(\out[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hEA80157F157FEA80)) 
    \out[2]_i_1__2 
       (.I0(Q[1]),
        .I1(Q_reg[0]),
        .I2(Q[0]),
        .I3(Q_reg[1]),
        .I4(Q_reg[2]),
        .I5(Q[2]),
        .O(D[1]));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\out_reg[0]_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\out[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\out[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "nbitflipflop" *) 
module nbitflipflop_3
   (Q,
    out_OBUF,
    \out_reg[1]_0 ,
    D,
    \out_reg[0]_0 ,
    in_IBUF,
    in1,
    \out_reg[0]_1 ,
    \out[1] ,
    \out[3] ,
    \out_reg[0]_2 ,
    SR,
    CLK);
  output [2:0]Q;
  output [3:0]out_OBUF;
  output \out_reg[1]_0 ;
  output [2:0]D;
  output [0:0]\out_reg[0]_0 ;
  input [2:0]in_IBUF;
  input in1;
  input \out_reg[0]_1 ;
  input [1:0]\out[1] ;
  input \out[3] ;
  input [2:0]\out_reg[0]_2 ;
  input [0:0]SR;
  input CLK;

  wire CLK;
  wire [2:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire in1;
  wire [2:0]in_IBUF;
  wire \out[0]_i_1_n_0 ;
  wire [1:0]\out[1] ;
  wire \out[1]_i_1_n_0 ;
  wire \out[2]_i_1_n_0 ;
  wire \out[3] ;
  wire [3:0]out_OBUF;
  wire \out_OBUF[1]_inst_i_2_n_0 ;
  wire \out_OBUF[3]_inst_i_2_n_0 ;
  wire [0:0]\out_reg[0]_0 ;
  wire \out_reg[0]_1 ;
  wire [2:0]\out_reg[0]_2 ;
  wire \out_reg[1]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out[0]_i_1 
       (.I0(Q[0]),
        .I1(in_IBUF[0]),
        .O(\out[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[0]_i_1__0 
       (.I0(Q[0]),
        .I1(\out_reg[0]_2 [0]),
        .O(\out_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out[0]_i_1__2 
       (.I0(\out_reg[1]_0 ),
        .I1(in1),
        .I2(\out_reg[0]_1 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \out[1]_i_1 
       (.I0(in_IBUF[0]),
        .I1(Q[0]),
        .I2(in_IBUF[1]),
        .I3(Q[1]),
        .O(\out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h24)) 
    \out[1]_i_1__1 
       (.I0(\out_reg[1]_0 ),
        .I1(\out_reg[0]_1 ),
        .I2(in1),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h9996966696669666)) 
    \out[2]_i_1 
       (.I0(in_IBUF[2]),
        .I1(Q[2]),
        .I2(in_IBUF[1]),
        .I3(Q[1]),
        .I4(in_IBUF[0]),
        .I5(Q[0]),
        .O(\out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \out[2]_i_1__0 
       (.I0(\out_reg[1]_0 ),
        .I1(in1),
        .I2(\out_reg[0]_1 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_OBUF[0]_inst_i_1 
       (.I0(\out_reg[1]_0 ),
        .I1(in1),
        .I2(\out_reg[0]_1 ),
        .I3(\out[1] [0]),
        .I4(\out_OBUF[1]_inst_i_2_n_0 ),
        .O(out_OBUF[0]));
  LUT6 #(
    .INIT(64'hE87E7E17178181E8)) 
    \out_OBUF[1]_inst_i_1 
       (.I0(\out_OBUF[1]_inst_i_2_n_0 ),
        .I1(\out_reg[1]_0 ),
        .I2(in1),
        .I3(\out_reg[0]_1 ),
        .I4(\out[1] [0]),
        .I5(\out[1] [1]),
        .O(out_OBUF[1]));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \out_OBUF[1]_inst_i_2 
       (.I0(Q[0]),
        .I1(in_IBUF[0]),
        .I2(Q[1]),
        .I3(in_IBUF[1]),
        .I4(Q[2]),
        .I5(in_IBUF[2]),
        .O(\out_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA80EA800000)) 
    \out_OBUF[1]_inst_i_3 
       (.I0(Q[1]),
        .I1(\out_reg[0]_2 [0]),
        .I2(Q[0]),
        .I3(\out_reg[0]_2 [1]),
        .I4(Q[2]),
        .I5(\out_reg[0]_2 [2]),
        .O(\out_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out_OBUF[2]_inst_i_1 
       (.I0(\out_OBUF[3]_inst_i_2_n_0 ),
        .I1(\out[3] ),
        .O(out_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_OBUF[3]_inst_i_1 
       (.I0(\out_OBUF[3]_inst_i_2_n_0 ),
        .I1(\out[3] ),
        .O(out_OBUF[3]));
  LUT6 #(
    .INIT(64'h0080802828020200)) 
    \out_OBUF[3]_inst_i_2 
       (.I0(\out_OBUF[1]_inst_i_2_n_0 ),
        .I1(\out_reg[1]_0 ),
        .I2(in1),
        .I3(\out_reg[0]_1 ),
        .I4(\out[1] [0]),
        .I5(\out[1] [1]),
        .O(\out_OBUF[3]_inst_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\out[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\out[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\out[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
endmodule

module threebitflipflop
   (\out_reg[2]_0 ,
    Q,
    \out_OBUF[2]_inst_i_1 ,
    in1,
    \out_OBUF[2]_inst_i_1_0 ,
    SR,
    D,
    CLK);
  output \out_reg[2]_0 ;
  output [1:0]Q;
  input \out_OBUF[2]_inst_i_1 ;
  input in1;
  input \out_OBUF[2]_inst_i_1_0 ;
  input [0:0]SR;
  input [2:0]D;
  input CLK;

  wire CLK;
  wire [2:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire in1;
  wire \out_OBUF[2]_inst_i_1 ;
  wire \out_OBUF[2]_inst_i_1_0 ;
  wire \out_reg[2]_0 ;
  wire [2:2]temp5;

  LUT6 #(
    .INIT(64'h666AA9665666AA56)) 
    \out_OBUF[3]_inst_i_3 
       (.I0(temp5),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\out_OBUF[2]_inst_i_1 ),
        .I4(in1),
        .I5(\out_OBUF[2]_inst_i_1_0 ),
        .O(\out_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(temp5),
        .R(SR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
