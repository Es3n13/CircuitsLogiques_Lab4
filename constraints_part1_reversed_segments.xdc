# ============================================
# Expérience 4 - Chronomètre électronique
# Contraintes Partie 1: 00-59s avec SW0 + BTNL
# Carte: Digilent Basys-3 (Artix-7)
# ALTERNATIVE: Segments reversed (try this if digits appear mirrored)
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
# REVERSED mapping: CA↔CG, CB↔CF, CC↔CE (mirror effect)
# Try this if numbers appear "flipped like a sheet of paper"

set_property LOC U7 [get_ports {seg[0]}]    # CA (swap with CG)
set_property LOC V5 [get_ports {seg[1]}]    # CB (swap with CF)
set_property LOC U5 [get_ports {seg[2]}]    # CC (swap with CE)
set_property LOC V8 [get_ports {seg[3]}]    # CD (center stays)
set_property LOC U8 [get_ports {seg[4]}]    # CE (swap with CC)
set_property LOC W6 [get_ports {seg[5]}]    # CF (swap with CB)
set_property LOC W7 [get_ports {seg[6]}]    # CG (swap with CA)

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

# Anodes (Active-LOW) - standard mapping
set_property LOC U2 [get_ports {an[0]}]    # AN0 (rightmost)
set_property LOC U4 [get_ports {an[1]}]
set_property LOC V4 [get_ports {an[2]}]
set_property LOC W4 [get_ports {an[3]}]    # AN3 (leftmost)

set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]