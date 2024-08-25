
# Constraints
# ----------------------------------------------------------------------------
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW 0.1
set CLK_RISE 0.05
set CLK_FALL 0.05
set REF_CLK_PERIOD [expr (10**3) / 50.0]
set UART_CLK_PERIOD [expr (10**3) / 3.6864]

create_clock -name "REF_CLK" -period $REF_CLK_PERIOD [get_ports REF_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks REF_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks REF_CLK]
set_clock_transition -rise $CLK_RISE  [get_clocks REF_CLK]
set_clock_transition -fall $CLK_FALL  [get_clocks REF_CLK]

create_clock -name "UART_CLK" -period $UART_CLK_PERIOD [get_ports UART_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks UART_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks UART_CLK]
set_clock_transition -rise $CLK_RISE  [get_clocks UART_CLK]
set_clock_transition -fall $CLK_FALL  [get_clocks UART_CLK]

create_generated_clock -master_clock "UART_CLK" -source [get_ports UART_CLK] \
                       -name "TX_CLK" [get_port TX_CLK_DIV/o_div_clk] \
                       -divide_by 32
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks TX_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks TX_CLK]
set_clock_transition -rise $CLK_RISE  [get_clocks TX_CLK]
set_clock_transition -fall $CLK_FALL  [get_clocks TX_CLK]

create_generated_clock -master_clock "UART_CLK" -source [get_ports UART_CLK] \
                       -name "RX_CLK" [get_port RX_CLK_DIV/o_div_clk] \
                       -divide_by 1
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks RX_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks RX_CLK]
set_clock_transition -rise $CLK_RISE  [get_clocks RX_CLK]
set_clock_transition -fall $CLK_FALL  [get_clocks RX_CLK]

create_generated_clock -master_clock "REF_CLK" -source [get_ports REF_CLK] \
                       -name "ALU_CLK" [get_port CLK_GATE/GATED_CLK] \
                       -divide_by 1
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks ALU_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks ALU_CLK]
set_clock_transition -rise $CLK_RISE  [get_clocks ALU_CLK]
set_clock_transition -fall $CLK_FALL  [get_clocks ALU_CLK]
					   
set_dont_touch_network [get_clocks {UART_CLK TX_CLK RX_CLK ALU_CLK REF_CLK}]

####################################################################################
           #########################################################
                  #### Section 2 : Clocks Relationships ####
           #########################################################
####################################################################################

set_clock_groups -asynchronous -group [get_clocks {TX_CLK RX_CLK UART_CLK}] -group [get_clocks {ALU_CLK REF_CLK}]

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

set in1_delay  [expr 0.2*$UART_CLK_PERIOD]
set out1_delay [expr 0.2*$UART_CLK_PERIOD]

set TX_CLK_PERIOD [expr $UART_CLK_PERIOD / 32.0]
set out2_delay [expr 0.2*$TX_CLK_PERIOD]

#Constrain Input Paths
set_input_delay $in1_delay -clock RX_CLK [get_port RX_IN]

#Constrain Output Paths
set_output_delay $out1_delay -clock RX_CLK [get_ports {Stop_Error Parity_Error}]
set_output_delay $out2_delay -clock TX_CLK [get_port TX_OUT]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_ports RX_IN]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_ports {REF_CLK UART_CLK RST}]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set_load 0.1 [get_ports {Stop_Error Parity_Error TX_OUT}]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################

#set_wire_load_model -name tsmc13_wl30 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c





