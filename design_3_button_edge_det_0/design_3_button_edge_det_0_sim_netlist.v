// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr  9 18:26:01 2026
// Host        : LAPTOP-6GRJ86SI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {D:/UQAR/2026 Hiver/Circuits
//               Logiques/Laboratoires/Lab4/Experience4/Experience4.srcs/sources_1/bd/design_3/ip/design_3_button_edge_det_0/design_3_button_edge_det_0_sim_netlist.v}
// Design      : design_3_button_edge_det_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_3_button_edge_det_0,button_edge_detector,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "button_edge_detector,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_3_button_edge_det_0
   (clk,
    btn_level,
    reset,
    rising_edge_pulse);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input btn_level;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output rising_edge_pulse;

  wire btn_level;
  wire clk;
  wire reset;
  wire rising_edge_pulse;

  design_3_button_edge_det_0_button_edge_detector U0
       (.btn_level(btn_level),
        .clk(clk),
        .reset(reset),
        .rising_edge_pulse(rising_edge_pulse));
endmodule

(* ORIG_REF_NAME = "button_edge_detector" *) 
module design_3_button_edge_det_0_button_edge_detector
   (rising_edge_pulse,
    btn_level,
    reset,
    clk);
  output rising_edge_pulse;
  input btn_level;
  input reset;
  input clk;

  wire btn_level;
  wire btn_prev;
  wire btn_prev_i_1_n_0;
  wire clk;
  wire reset;
  wire rising_edge_pulse;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    btn_prev_i_1
       (.I0(btn_level),
        .I1(reset),
        .O(btn_prev_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btn_prev_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_prev_i_1_n_0),
        .Q(btn_prev),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rising_edge_pulse_INST_0
       (.I0(btn_level),
        .I1(btn_prev),
        .O(rising_edge_pulse));
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
