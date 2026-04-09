# ============================================
# Expérience 4 - Chronomètre électronique
# Contraintes Partie 1: 00-59s avec SW0 + BTNL
# Carte: Digilent Basys-3 (Artix-7)
# MAPPING FROM USER'S CHART
# ============================================

# Horloge principale 100 MHz
set_property LOC W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

# Interrupteur SW0 (Start/Stop)
set_property LOC V17 [get_ports StartStopSW]
set_property IOSTANDARD LVCMOS33 [get_ports StartStopSW]

# Bouton BTNL (Reset)
set_property LOC W19 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]

# Cathodes de segments 7-segments (Active-LOW)
# Pin mapping from user's chart:
# CA=W7, CB=W6, CC=U8, CD=V8, CE=U5, CF=V5, CG=U7
# Decoder: segments[6:0] = {CG, CF, CE, CD, CC, CB, CA}
# So: seg[6]=CG, seg[5]=CF, seg[4]=CE, seg[3]=CD, seg[2]=CC, seg[1]=CB, seg[0]=CA

set_property LOC W7 [get_ports {seg[0]}]    # CA (segments[0])
set_property LOC W6 [get_ports {seg[1]}]    # CB (segments[1])
set_property LOC U8 [get_ports {seg[2]}]    # CC (segments[2])
set_property LOC V8 [get_ports {seg[3]}]    # CD (segments[3])
set_property LOC U5 [get_ports {seg[4]}]    # CE (segments[4])
set_property LOC V5 [get_ports {seg[5]}]    # CF (segments[5])
set_property LOC U7 [get_ports {seg[6]}]    # CG (segments[6])

set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]

# Decimal Point
set_property LOC V7 [get_ports {dp[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dp[0]}]

# Anodes (Active-LOW) - from user's chart
# AN0=U2, AN1=U4, AN2=V4, AN3=W4
# Display order: right-to-left (AN0=rightmost)
set_property LOC U2 [get_ports {an[0]}]    # AN0 (rightmost)
set_property LOC U4 [get_ports {an[1]}]
set_property LOC V4 [get_ports {an[2]}]
set_property LOC W4 [get_ports {an[3]}]    # AN3 (leftmost)

set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]