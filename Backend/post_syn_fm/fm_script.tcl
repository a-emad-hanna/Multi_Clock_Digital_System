
###################################################################
########################### Variables #############################
###################################################################

set SSLIB "/home/IC/Assignments/Final_System/std_cells/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/IC/Assignments/Final_System/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/IC/Assignments/Final_System/std_cells/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

###################################################################
############################ Guidance #############################
###################################################################

# Synopsys setup variable
set synopsys_auto_setup true

# Formality Setup File
set_svf "/home/IC/Assignments/Final_System/syn/System_Top.svf"

###################################################################
###################### Reference Container ########################
###################################################################

set design_path "/home/IC/Assignments/Final_System/rtl/"

# List of Verilog files
set verilog_files {
    ALU.v
    ClkDiv.v
    CLK_GATE.v
    DATA_SYNC.v
    RegFile.v
    RST_SYNC.v
    System_Top.v
    SYS_CTRL.v
    UART_RX_data_sampler.v
    UART_RX_deserializer.v
    UART_RX_edge_bit_counter.v
    UART_RX_FSM.v
    UART_RX_parity_checker.v
    UART_RX_start_checker.v
    UART_RX_stop_checker.v
    UART_RX_TOP.v
    UART_TX_FSM.v
    UART_TX_MUX.v
    UART_TX_Parity_Calculator.v
    UART_TX_Serializer.v
    UART_TX_TOP.v
    PULSE_GEN.v
    FIFO_MEM_CNTRL.v
    FIFO_RD.v
    FIFO_WR.v
    FIFO_TOP.v
    FIFO_DF_SYNC.v
}

# Read Verilog files
foreach file $verilog_files {
    read_verilog -container Ref "$design_path$file"
}

# Read Reference technology libraries
read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

# set the top Reference Design 
set_reference_design System_Top
set_top System_Top


###################################################################
#################### Implementation Container #####################
###################################################################

# Read Verilog files
foreach file $verilog_files {
    read_verilog -container Imp "$design_path$file"
}
# Read Implementation technology libraries
read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

# set the top Implementation Design
set_implementation_design System_Top
set_top System_Top

###################### Matching Compare points ####################

match

######################### Run Verification ########################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

########################### Reporting ############################# 

report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"

start_gui

