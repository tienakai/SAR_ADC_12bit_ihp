# SAR_ADC_12bit_ihp

This repository contains the design of a **12-bit Successive Approximation Register (SAR) ADC**
implemented using the **IHP SG13G2 (130 nm BiCMOS) open-source PDK**.

The project is developed in the context of the **UNIC-CASS 2025 Design-to-Tapeout Program** and
includes schematic-level analog and mixed-signal design, simulation testbenches, basic layout
blocks, and a mock tapeout pad ring integration example.

---



---

## Requirements

To run the schematics and simulations, the following tools are required:

- **xschem**
- **ngspice**
- **IHP SG13G2 PDK** (`open_pdks.ihp-sg13g2`)

It is recommended to use the **UNIC-CASS / IHP conda or Docker environment**.

---

## Environment Setup

Before running simulations, make sure the environment variables are properly set.
If you are using the UNIC-CASS environment, simply source the environment script:

```bash
source env.sh
Ensure that:

PDK_ROOT points to the IHP SG13G2 PDK

PROJECT_ROOT points to this repository

Running Schematic Simulations
1. Go to the schematic directory
cd SAR_ADC_12bit_ihp/schematic
2. Browse available testbenches
Launch xschem and list the available testbenches:

xschem ../simulations/
Example output:

bootstrap_tb.sch
latch_comparator_tb2.sch
latched_comparator_tb.sch
preamplifier_tb.sch
premamp_comparator_tb.sch
state_machine_test.spice
3. Open a specific testbench
For example, to open the latched comparator testbench:

xschem ../simulations/latched_comparator_tb.sch
4. Run the simulation
Inside Xschem:

Click Netlist

Click Simulate

The simulation is executed using ngspice.
Waveforms and simulation results can be inspected using the integrated viewer.