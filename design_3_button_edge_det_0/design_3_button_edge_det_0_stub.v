// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr  9 18:26:01 2026
// Host        : LAPTOP-6GRJ86SI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {D:/UQAR/2026 Hiver/Circuits
//               Logiques/Laboratoires/Lab4/Experience4/Experience4.srcs/sources_1/bd/design_3/ip/design_3_button_edge_det_0/design_3_button_edge_det_0_stub.v}
// Design      : design_3_button_edge_det_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "button_edge_detector,Vivado 2018.3" *)
module design_3_button_edge_det_0(clk, btn_level, reset, rising_edge_pulse)
/* synthesis syn_black_box black_box_pad_pin="clk,btn_level,reset,rising_edge_pulse" */;
  input clk;
  input btn_level;
  input reset;
  output rising_edge_pulse;
endmodule
