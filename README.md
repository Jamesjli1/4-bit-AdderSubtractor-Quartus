# COE328 Lab 3 – 4-bit Adder/Subtractor Unit

**Course:** COE 328 – Digital Systems  
**School:** Toronto Metropolitan University   
**Lab:** 3 – Adder and Subtractor Unit  
**Platform:** Quartus II 13.0 / VHDL  
**Board:** Cyclone II FPGA development board  
**Chip/Device:** EP2C35F672C6

---

## Objectives

- Design and build a **4-bit Adder/Subtractor Unit (ASU)** using VHDL.  
- Implement both **addition and subtraction** using a common `Cin` input.  
- Develop a **Seven-Segment Display (SSD)** driver for hexadecimal and signed outputs.  
- Create a **Combinational Circuit (C.vhd)** to display the **student ID digits** using minimized logic expressions.  

---

## ⚙️ Files Overview

| File | Description |
|------|--------------|
| `ASU.vhd` | 4-bit Adder/Subtractor Unit (main arithmetic module) |
| `sseg.vhd` | Seven-segment display driver (0–F and sign display) |
| `C.vhd` | Combinational logic circuit for student ID decoding |
| `CombinedASU1.bdf` | Block diagram for Part A (Adder/Subtractor + SSD) |
| `CombinedASU2.bdf` | Block diagram for Part B (Full System Integration) |
| `*.bsf` | Generated symbol files for schematic blocks |
| `.gitignore` | Excludes Quartus temporary and output files |

---
