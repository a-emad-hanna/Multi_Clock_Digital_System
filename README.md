# Multi Clock Digital System

## Overview
The Multi Clock Digital System project is designed to manage and execute various system functions by processing commands received through a UART interface. This system handles tasks such as register file reading/writing and ALU-based processing, with results transmitted via an asynchronous FIFO to ensure data integrity across different clock domains.

## System Architecture
![System Architecture](1.png)

## Features
- **UART Communication**: Handles data reception and transmission through UART.
- **Asynchronous FIFO**: Manages data transfer between different clock domains to prevent data loss.
- **ALU Operations**: Performs arithmetic and logic operations.
- **Register File**: Facilitates data storage and retrieval.
- **Clock Management**: Incorporates clock division and clock gating for efficient power management.
- **Synchronizers**: Ensures proper data synchronization across different clock domains.

Here’s a draft README for your Multi Clock Digital System project repository:

---

# Multi Clock Digital System

## Overview
The Multi Clock Digital System project is designed to manage and execute various system functions by processing commands received through a UART interface. This system handles tasks such as register file reading/writing and ALU-based processing, with results transmitted via an asynchronous FIFO to ensure data integrity across different clock domains.

## Features
- **UART Communication**: Handles data reception and transmission through UART.
- **Asynchronous FIFO**: Manages data transfer between different clock domains to prevent data loss.
- **ALU Operations**: Performs arithmetic and logic operations.
- **Register File**: Facilitates data storage and retrieval.
- **Clock Management**: Incorporates clock division and clock gating for efficient power management.
- **Synchronizers**: Ensures proper data synchronization across different clock domains.

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


