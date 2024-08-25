# Multi Clock Digital System

## Overview
The Multi Clock Digital System project is designed to manage and execute various system functions by processing commands received through a UART interface. This system handles tasks such as register file reading/writing and ALU-based processing, with results transmitted via an asynchronous FIFO to ensure data integrity across different clock domains.

## System Architecture
![System Architecture](readme_images/1.png)

## Features
- **UART Communication**: Handles data reception and transmission through UART.
- **Asynchronous FIFO**: Manages data transfer between different clock domains to prevent data loss.
- **ALU Operations**: Performs arithmetic and logic operations.
- **Register File**: Facilitates data storage and retrieval.
- **Clock Management**: Incorporates clock division and clock gating for efficient power management.
- **Synchronizers**: Ensures proper data synchronization across different clock domains.

## Supported Operations

1. **ALU Operations:**
   - Addition
   - Subtraction
   - Multiplication
   - Division
   - AND
   - OR
   - NAND
   - NOR
   - XOR
   - XNOR
   - Compare: A = B
   - Compare: A > B
   - Shift: A >> 1
   - Shift: A << 1

2. **Register File Operations:**
   - Register File Write
   - Register File Read

### Supported Commands

1. **Register File Write Command (3 frames):**

    ![Register File Write Command](readme_images/2.png)

2. **Register File Read Command (2 frames)**

    ![Register File Read Command](readme_images/3.png)

3. **ALU Operation Command with Operand (4 frames)**

    ![ALU Operation Command with Operand](readme_images/4.png)

4. **ALU Operation Command with No Operand (2 frames)**

    ![ALU Operation Command with No Operand](readme_images/5.png)

## System Specifications
- **Reference Clock (REF_CLK)**: 50 MHz
- **UART Clock (UART_CLK)**: 3.6864 MHz

## Project Phases

### 1. RTL Design
- Developed RTL code for system blocks:
  - ALU
  - Register File
  - Synchronous FIFO
  - Integer Clock Divider
  - Clock Gating
  - Synchronizers
  - Main Controller
  - UART TX/RX
  
### 2. Functional Verification
- Created a self-checking testbench to verify the integration and functionality of all system blocks.

### 3. Design Constraints
- Applied constraints to the system using synthesis TCL scripts.

### 4. Synthesis and Optimization
- Synthesized and optimized the design using Design Compiler.

### 5. Timing Analysis
- Analyzed timing paths and resolved setup and hold violations.

### 6. Formal Verification
- Verified functionality equivalence using the Formality tool.

### 7. Physical Implementation
- Carried out the physical design on Cadence Encounter to generate the GDS file.

### 8. Post-Layout Verification
- Verified post-layout functionality, accounting for actual delays.


