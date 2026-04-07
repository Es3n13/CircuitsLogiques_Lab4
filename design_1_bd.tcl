
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# xup_clk_divider, xup_clk_divider, counter_bcd_mod100, counter_bcd_mod60, counter_binary_2bit, decoder_2to4, decoder_bcd_7seg, mux_4x1

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set StartStopSW [ create_bd_port -dir I StartStopSW ]
  set an [ create_bd_port -dir O -from 3 -to 0 an ]
  set clk [ create_bd_port -dir I clk ]
  set dp [ create_bd_port -dir O -from 0 -to 0 dp ]
  set reset [ create_bd_port -dir I reset ]
  set seg [ create_bd_port -dir O -from 6 -to 0 seg ]

  # Create instance: Bit_Extractor, and set properties
  set Bit_Extractor [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 Bit_Extractor ]

  # Create instance: Clock_Divider_100, and set properties
  set block_name xup_clk_divider
  set block_cell_name Clock_Divider_100
  if { [catch {set Clock_Divider_100 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Clock_Divider_100 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.SIZE {1000000} \
 ] $Clock_Divider_100

  # Create instance: Clock_Divider_250, and set properties
  set block_name xup_clk_divider
  set block_cell_name Clock_Divider_250
  if { [catch {set Clock_Divider_250 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Clock_Divider_250 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.SIZE {400000} \
 ] $Clock_Divider_250

  # Create instance: counter_bcd_mod100_0, and set properties
  set block_name counter_bcd_mod100
  set block_cell_name counter_bcd_mod100_0
  if { [catch {set counter_bcd_mod100_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $counter_bcd_mod100_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: counter_bcd_mod60_0, and set properties
  set block_name counter_bcd_mod60
  set block_cell_name counter_bcd_mod60_0
  if { [catch {set counter_bcd_mod60_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $counter_bcd_mod60_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: counter_binary_2bit_0, and set properties
  set block_name counter_binary_2bit
  set block_cell_name counter_binary_2bit_0
  if { [catch {set counter_binary_2bit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $counter_binary_2bit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: decoder_2to4_0, and set properties
  set block_name decoder_2to4
  set block_cell_name decoder_2to4_0
  if { [catch {set decoder_2to4_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $decoder_2to4_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: decoder_bcd_7seg_0, and set properties
  set block_name decoder_bcd_7seg
  set block_cell_name decoder_bcd_7seg_0
  if { [catch {set decoder_bcd_7seg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $decoder_bcd_7seg_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mux_4x1_0, and set properties
  set block_name mux_4x1
  set block_cell_name mux_4x1_0
  if { [catch {set mux_4x1_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mux_4x1_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net Bit_Extractor_Dout [get_bd_ports dp] [get_bd_pins Bit_Extractor/Dout]
  connect_bd_net -net Clock_Divider_100_clkout [get_bd_pins Clock_Divider_100/clkout] [get_bd_pins counter_bcd_mod100_0/clk]
  connect_bd_net -net Clock_Divider_250_clkout [get_bd_pins Clock_Divider_250/clkout] [get_bd_pins counter_binary_2bit_0/clk]
  connect_bd_net -net StartStopSW_1 [get_bd_ports StartStopSW] [get_bd_pins counter_bcd_mod100_0/cs] [get_bd_pins counter_bcd_mod60_0/cs]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins Clock_Divider_100/clkin] [get_bd_pins Clock_Divider_250/clkin]
  connect_bd_net -net counter_bcd_mod100_0_QLSB [get_bd_pins counter_bcd_mod100_0/QLSB] [get_bd_pins mux_4x1_0/in0]
  connect_bd_net -net counter_bcd_mod100_0_QMSB [get_bd_pins counter_bcd_mod100_0/QMSB] [get_bd_pins mux_4x1_0/in1]
  connect_bd_net -net counter_bcd_mod100_0_carry_out [get_bd_pins counter_bcd_mod100_0/carry_out] [get_bd_pins counter_bcd_mod60_0/clk]
  connect_bd_net -net counter_bcd_mod60_0_QLSB [get_bd_pins counter_bcd_mod60_0/QLSB] [get_bd_pins mux_4x1_0/in2]
  connect_bd_net -net counter_bcd_mod60_0_QMSB [get_bd_pins counter_bcd_mod60_0/QMSB] [get_bd_pins mux_4x1_0/in3]
  connect_bd_net -net counter_binary_2bit_0_select_out [get_bd_pins counter_binary_2bit_0/select_out] [get_bd_pins decoder_2to4_0/sel] [get_bd_pins mux_4x1_0/select_in]
  connect_bd_net -net decoder_2to4_0_an [get_bd_ports an] [get_bd_pins decoder_2to4_0/an]
  connect_bd_net -net decoder_bcd_7seg_0_segments [get_bd_ports seg] [get_bd_pins decoder_bcd_7seg_0/segments]
  connect_bd_net -net mux_4x1_0_bcd_out [get_bd_pins Bit_Extractor/Din] [get_bd_pins decoder_bcd_7seg_0/bcd] [get_bd_pins mux_4x1_0/bcd_out]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins counter_bcd_mod100_0/reset] [get_bd_pins counter_bcd_mod60_0/reset]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


