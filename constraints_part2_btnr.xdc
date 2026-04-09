# ============================================
# Expérience 4 - Chronomètre électronique
# Contraintes Partie 2: Bouton BTNR Toggle
# Carte: Digilent Basys-3 (Artix-7)
# Add this to your XDC file when implementing Part 2
# ============================================

# Bouton BTNR (Start/Stop Toggle)
# Port 'btnr' must be added to your VHDL entity/port list
set_property LOC T17 [get_ports btnr]
set_property IOSTANDARD LVCMOS33 [get_ports btnr]

# ============================================
# INSTRUCTIONS FOR PART 2:
# 1. Add 'btnr : in STD_LOGIC' to your design entity
# 2. Instantiate button_edge_detector and toggle_ff modules
# 3. Connect btnr → edge_detector clk
# 4. Connect edge_detector output → toggle_ff clk
# 5. Use toggle_ff.q output instead of SW0 for 'cs' signal
# 6. Update XDC to include this BTNR constraint
# ============================================