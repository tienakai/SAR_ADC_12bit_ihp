# SAR ADC in IHP SG13G2 (Full Custom Mixed-Signal Flow)

This repository presents a fully custom SAR ADC implemented in the IHP SG13G2 technology node.  
It demonstrates a complete mixed-signal IC design flow including schematic design, digital verification, analog layout, post-layout extraction, and system-level simulation.

---

## 🚀 Overview

This project provides an end-to-end reference implementation of a SAR ADC using open-source tools.  
It covers both analog and digital domains and emphasizes layout-aware verification and reproducibility.

Key objectives:
- Full-custom mixed-signal design
- Hierarchical block-based development
- Layout and post-layout validation


---

## 🧱 Architecture

Main building blocks:

- Dynamic comparator
- Capacitive DAC (CDAC)
- SAR digital logic
- Bootstrap switching network
- Mixed-signal integration

The design follows a bottom-up hierarchical methodology.

---

## 📂 Repository Structure

```bash
SAR_ADC_12bit_ihp/
├── Introduction.md
│
├── part_1_comparator/
│   ├── schematic/
│   ├── testbench/
│   └── comparator.md
│
├── part_2_digital_comps/
│   ├── algorithm/
│   │   ├── verilog/
│   │   ├── xschem/
│   │   └── librelane/
│   ├── T_gate/
│   ├── nand_gate/
│   ├── bootstrap_switch/
│   └── digital_comps.md
│
├── part_3_array_components/
│   ├── C-DAC/
│   ├── switch_array/
│   └── array_comps.md
│
├── part_4_SAR_ADC/
│   ├── simulations/
│   ├── scripting/
│   └── sar_adc.md
│
└── part_5_analog_layout/
    ├── comparator/
    ├── CDAC/
    ├── bootstrap/
    ├── switch_array/
    └── pex.md

```
---

## 🛠 Tools and Technologies

- **xschem** — schematic capture and cosimulation
- **ngspice** — analog simulation
- **Verilator + GTKWave** — digital verification
- **LibreLane /** — digital flow
- **Magic / KLayout** — layout and DRC
- **Python** — automation and post-processing

Technology:
- IHP SG13G2 Open PDK

---

## ▶️ Run the Simulation

This project can be reproduced using open-source analog tools on Linux or WSL.

---

- Clone the Repository
``` bash
git clone https://github.com/tienakai/SAR_ADC_12bit_ihp.git

cd SAR_ADC_12bit_ihp 
``` 
- Run Xschem (GUI)

Example: run SAR ADC testbench simulation
``` bash
cd part_4_SAR_ADC
xschem SAR_ADC_tb.sch
```
Inside Xschem:

Click Netlist

Click Simulate
- Digital Simulation
``` bash
cd part_2_digital_comps/algorithm/verilog
make full
```
Run LibreLane (Digital Implementation)
- Example: synthesize and implement SAR logic using LibreLane

```bash
cd part_2_digital_comps/algorithm/librelane
librelane \
  --manual-pdk \
  --pdk-root $PDK_ROOT \
  -p ihp-sg13g2 \
  -s sg13g2_stdcell \
  --design-dir . \
  config.json
  ```      
## 🧪 Block-Level Simulation

Each block includes standalone testbenches.

**Examples:**

**Comparator**

part_1_comparator/testbench


**Switches**

part_2_digital_comps/*/testbench


---

## 🧠 Layout and Post-Layout

All layout work is located in:


part_5_analog_layout/


Includes:
- Comparator layout and extraction
- CDAC layout
- Bootstrap switch layout
- SAR logic GDS
