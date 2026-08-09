# Verilog RTL Design & Verification

Project by **Farooq Abdulla** — Verilog HDL designs covering all four abstraction levels (Dataflow, Gate/Structural, Switch, Behavioral), plus combinational circuits, latches, flip-flops, shift registers, counters, and numerical algorithms.

## Structure

Each block has its own folder containing:

- `*_design.v` — RTL design code

- `*_testbench.v` — Testbench code

- `schematic.png` — RTL schematic (synthesized view)

- `simulation.png` — Simulation waveform

## Folders

| Folder | Contents |
|---|---|
| `01_dataflow_level` | Basic gates, half/full adder, half/full subtractor, 2:1 MUX (dataflow modeling) |
| `02_gate_structural_level` | Same blocks at gate/structural level |
| `03_switch_level` | Basic gates at switch (transistor) level |
| `04_behavioral_level` | Same blocks at behavioral level |
| `05_combinational_circuits` | 4-bit comparator, 4-bit ripple carry adder |
| `06_latches` | JK, SR, D, T latches |
| `07_flipflops` | SR, D, JK, T flip-flops |
| `08_shift_registers` | SISO, SIPO, PIPO, PISO |
| `09_counters` | Up, down, up/down, ring, Johnson, decade, ripple counters |
| `10_numericals` | Sum, square, factorial, Fibonacci series (Verilog functions) |
## Notes on schematic/simulation images

Images were programmatically extracted from the source PDF and auto-matched to each block. This was spot-checked and is expected to be accurate, but a few blocks are flagged below — please review these before pushing:

- **03_switch_level/basic_gates** (PDF page 23): the source PDF only contains a schematic image for this block (no simulation waveform was included in the original document), so `simulation.png` is missing here.
- **10_numericals/factorial_of_number** (PDF page 71): the source PDF contains two schematic-style diagrams (the RTL_MUX view and the synthesized gate-level netlist view). Both are included — `schematic.png` (RTL_MUX view) and `schematic_gate_level_netlist.png` (synthesized netlist view) — alongside `simulation.png`.

All other blocks had both images matched automatically with high confidence.
