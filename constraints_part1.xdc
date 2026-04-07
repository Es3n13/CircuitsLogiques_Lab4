```tcl
# ============================================
# Expérience 4 - Chronomètre Électronique
# Contraintes Partie 1: 00-59s avec SW0 + BTNL
# Carte: Digilent Basys-3 (Artix-7)
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
# Note: 0 = segment ON, 1 = segment OFF
set_property LOC U7 [get_ports {seg[0]}]
set_property LOC W6 [get_ports {seg[1]}]
set_property LOC U8 [get_ports {seg[2]}]
set_property LOC V8 [get_ports {seg[3]}]
set_property LOC U5 [get_ports {seg[4]}]
set_property LOC V5 [get_ports {seg[5]}]
set_property LOC W7 [get_ports {seg[6]}]
set_property LOC V7  [get_ports {dp[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dp[0]}]

# Anodes (Activation des afficheurs - Active-LOW)
# Note: 0 = display ON, 1 = display OFF
# AN0: Afficheur droite (centièmes unités)
# AN1: Afficheur droite-1 (centièmes dizaines)
# AN2: Afficheur gauche-1 (secondes unités)
# AN3: Afficheur gauche (secondes dizaines)
# Anodes (Activation des afficheurs - Active-LOW)
set_property LOC U2 [get_ports {an[0]}]
set_property LOC U4 [get_ports {an[1]}]
set_property LOC V4 [get_ports {an[2]}]
set_property LOC W4 [get_ports {an[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]

```