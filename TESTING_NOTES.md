# Lab#4 XDC Files for Testing

This branch contains multiple XDC constraint files for testing the chronometer display fix.

## Files to Test

### 1. constraints_part1_user_chart.xdc (RECOMMENDED FIRST)
- **Pin mapping:** Based on your board chart
- **Segment order:** Standard CA→CG
- **Use this first** - if display works, you're done

### 2. constraints_part1_reversed_segments.xdc (IF STILL FLIPPED)
- **Pin mapping:** Same as above
- **Segment order:** Reversed (CA↔CG, CB↔CF, CC↔CE)
- **Use this** only if digits appear "flipped like a sheet of paper" with file #1

### 3. constraints_part2_btnr.xdc (FOR PART 2)
- **BTNR button constraint** for toggle functionality
- **Use** when implementing Part 2 with BTNR start/stop

## Testing Sequence

```bash
# Step 1: Try user_chart.xdc
# 1. Replace existing .xdc file in Vivado with constraints_part1_user_chart.xdc
# 2. Synthesize → Implement → Generate Bitstream
# 3. Program board
# 4. Check if display is correct

# Step 2: If still flipped, try reversed_segments.xdc
# Replace with constraints_part1_reversed_segments.xdc
# Repeat synthesis/implementation/bitstream

# Step 3: For Part 2 implementation
# Add constraints_part2_btnr.xdc to your constraint set
# Implement edge detector + toggle FF circuit
```

## Known Issues

- Original XDC had wrong pin assignments for segments and anodes
- Display reversal could be segment mapping or decoder output order
- Check design_1.vhd mux wiring if digits appear in wrong order (01→10)

## Expected Results

With correct constraints:
- Centièmes (right): 00-99 counting
- Seconds (left): 00-59 counting
- All digits display correctly (no mirroring/reversal)
- Switch SW0: Start/Stop
- Button BTNL: Reset to 00:00

---

**Created:** 2026-04-09
**For:** CircuitsLogiques_Lab4 testing