// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr  7 10:55:49 2026
// Host        : LAPTOP-6GRJ86SI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/UQAR/2026 Hiver/Circuits
//               Logiques/Laboratoires/Lab4/Experience4/Experience4.srcs/sources_1/bd/design_1/ip/design_1_counter_bcd_mod100_0_0/design_1_counter_bcd_mod100_0_0_sim_netlist.v}
// Design      : design_1_counter_bcd_mod100_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_counter_bcd_mod100_0_0,counter_bcd_mod100,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "counter_bcd_mod100,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_counter_bcd_mod100_0_0
   (clk,
    reset,
    cs,
    carry_out,
    QMSB,
    QLSB);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input cs;
  output carry_out;
  output [3:0]QMSB;
  output [3:0]QLSB;

  wire [3:0]QLSB;
  wire [3:0]QMSB;
  wire carry_out;
  wire clk;
  wire cs;
  wire reset;

  design_1_counter_bcd_mod100_0_0_counter_bcd_mod100 U0
       (.Q(QLSB),
        .QMSB(QMSB),
        .carry_out(carry_out),
        .clk(clk),
        .cs(cs),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "counter_bcd_mod100" *) 
module design_1_counter_bcd_mod100_0_0_counter_bcd_mod100
   (Q,
    QMSB,
    carry_out,
    cs,
    clk,
    reset);
  output [3:0]Q;
  output [3:0]QMSB;
  output carry_out;
  input cs;
  input clk;
  input reset;

  wire [3:0]Q;
  wire [3:0]QMSB;
  wire carry_cnt;
  wire \carry_cnt[0]_i_1_n_0 ;
  wire carry_out;
  wire carry_reg_i_1_n_0;
  wire clk;
  wire cs;
  wire [3:0]plusOp;
  wire reset;
  wire tens_cnt;
  wire \tens_cnt[3]_i_1_n_0 ;
  wire \tens_cnt[3]_i_4_n_0 ;
  wire units_cnt1;
  wire units_cnt11_in;
  wire \units_cnt[0]_i_1_n_0 ;
  wire \units_cnt[1]_i_1_n_0 ;
  wire \units_cnt[2]_i_1_n_0 ;
  wire \units_cnt[3]_i_1_n_0 ;

  LUT4 #(
    .INIT(16'h0080)) 
    \carry_cnt[0]_i_1 
       (.I0(cs),
        .I1(units_cnt1),
        .I2(units_cnt11_in),
        .I3(reset),
        .O(\carry_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \carry_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\carry_cnt[0]_i_1_n_0 ),
        .Q(carry_cnt),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000C0C000AA)) 
    carry_reg_i_1
       (.I0(carry_out),
        .I1(units_cnt1),
        .I2(units_cnt11_in),
        .I3(carry_cnt),
        .I4(cs),
        .I5(reset),
        .O(carry_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    carry_reg_i_2
       (.I0(QMSB[1]),
        .I1(QMSB[2]),
        .I2(QMSB[0]),
        .I3(QMSB[3]),
        .O(units_cnt1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    carry_reg_i_3
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(units_cnt11_in));
  FDRE #(
    .INIT(1'b0)) 
    carry_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(carry_reg_i_1_n_0),
        .Q(carry_out),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \tens_cnt[0]_i_1 
       (.I0(QMSB[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tens_cnt[1]_i_1 
       (.I0(QMSB[0]),
        .I1(QMSB[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tens_cnt[2]_i_1 
       (.I0(QMSB[0]),
        .I1(QMSB[1]),
        .I2(QMSB[2]),
        .O(plusOp[2]));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \tens_cnt[3]_i_1 
       (.I0(reset),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(\tens_cnt[3]_i_4_n_0 ),
        .I4(units_cnt1),
        .I5(cs),
        .O(\tens_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \tens_cnt[3]_i_2 
       (.I0(cs),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(tens_cnt));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \tens_cnt[3]_i_3 
       (.I0(QMSB[1]),
        .I1(QMSB[0]),
        .I2(QMSB[2]),
        .I3(QMSB[3]),
        .O(plusOp[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \tens_cnt[3]_i_4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\tens_cnt[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tens_cnt_reg[0] 
       (.C(clk),
        .CE(tens_cnt),
        .D(plusOp[0]),
        .Q(QMSB[0]),
        .R(\tens_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tens_cnt_reg[1] 
       (.C(clk),
        .CE(tens_cnt),
        .D(plusOp[1]),
        .Q(QMSB[1]),
        .R(\tens_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tens_cnt_reg[2] 
       (.C(clk),
        .CE(tens_cnt),
        .D(plusOp[2]),
        .Q(QMSB[2]),
        .R(\tens_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tens_cnt_reg[3] 
       (.C(clk),
        .CE(tens_cnt),
        .D(plusOp[3]),
        .Q(QMSB[3]),
        .R(\tens_cnt[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \units_cnt[0]_i_1 
       (.I0(Q[0]),
        .O(\units_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h45AA)) 
    \units_cnt[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\units_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \units_cnt[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(\units_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h68F0)) 
    \units_cnt[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\units_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \units_cnt_reg[0] 
       (.C(clk),
        .CE(cs),
        .D(\units_cnt[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\tens_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \units_cnt_reg[1] 
       (.C(clk),
        .CE(cs),
        .D(\units_cnt[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\tens_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \units_cnt_reg[2] 
       (.C(clk),
        .CE(cs),
        .D(\units_cnt[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\tens_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \units_cnt_reg[3] 
       (.C(clk),
        .CE(cs),
        .D(\units_cnt[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\tens_cnt[3]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
