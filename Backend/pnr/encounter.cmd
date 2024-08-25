#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Mon Aug 19 14:01:16 2024                #
#                                                     #
#######################################################

#@(#)CDS: First Encounter v08.10-p004_1 (32bit) 11/04/2008 14:34 (Linux 2.6)
#@(#)CDS: NanoRoute v08.10-p008 NR081027-0018/USR58-UB (database version 2.30, 67.1.1) {superthreading v1.11}
#@(#)CDS: CeltIC v08.10-p002_1 (32bit) 10/23/2008 22:04:14 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CTE v08.10-p016_1 (32bit) Oct 26 2008 15:11:51 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CPE v08.10-p009

setUIVar rda_Input ui_topcell System_Top
setUIVar rda_Input ui_netlist /home/ahesham/Projects/Final_System_pnr/dft/netlists/System_Top.v
setUIVar rda_Input ui_timelib,min /home/ahesham/Projects/Final_System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib
setUIVar rda_Input ui_timelib,max /home/ahesham/Projects/Final_System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib
setUIVar rda_Input ui_timelib /home/ahesham/Projects/Final_System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib
setUIVar rda_Input ui_leffile {/home/ahesham/Projects/Final_System_pnr/std_cells/lef/tsmc13fsg_7lm_tech.lef /home/ahesham/Projects/Final_System_pnr/std_cells/lef/tsmc13_m_macros.lef /home/ahesham/Projects/Final_System_pnr/pnr/import/System_Top.lef}
setUIVar rda_Input ui_captbl_file /home/ahesham/Projects/Final_System_pnr/std_cells/captables/tsmc13fsg.capTbl
setUIVar rda_Input ui_timingcon_file /home/ahesham/Projects/Final_System_pnr/dft/sdc/System_Top_func.sdc
setUIVar rda_Input ui_pwrnet VDD
setUIVar rda_Input ui_gndnet VSS
commitConfig
create_library_set -name min_library -timing "/home/ahesham/Projects/Final_System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib"
create_library_set -name max_library -timing "/home/ahesham/Projects/Final_System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib"
create_library_set -name typ_library -timing "/home/ahesham/Projects/Final_System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib"
create_constraint_mode -name func_mode -sdc_files {/home/ahesham/Projects/Final_System_pnr/dft/sdc/System_Top_func.sdc}
create_constraint_mode -name scan_mode -sdc_files {/home/ahesham/Projects/Final_System_pnr/dft/sdc/System_Top_scan.sdc}
create_constraint_mode -name capture_mode -sdc_files {/home/ahesham/Projects/Final_System_pnr/dft/sdc/System_Top_capture.sdc}
create_rc_corner -name RCcorner -cap_table "/home/ahesham/Projects/Final_System_pnr/std_cells/captables/tsmc13fsg.capTbl"
create_delay_corner -name min_corner -library_set min_library -rc_corner RCcorner
create_delay_corner -name max_corner -library_set max_library -rc_corner RCcorner
create_analysis_view -name setup1_analysis_view -delay_corner max_corner -constraint_mode func_mode
create_analysis_view -name hold1_analysis_view  -delay_corner min_corner -constraint_mode func_mode
create_analysis_view -name setup2_analysis_view -delay_corner max_corner -constraint_mode capture_mode
create_analysis_view -name hold2_analysis_view  -delay_corner min_corner -constraint_mode capture_mode
create_analysis_view -name setup3_analysis_view -delay_corner max_corner -constraint_mode scan_mode
create_analysis_view -name hold3_analysis_view  -delay_corner min_corner -constraint_mode scan_mode
set_analysis_view -setup {setup1_analysis_view setup2_analysis_view setup3_analysis_view } \
                  -hold { hold1_analysis_view hold2_analysis_view hold3_analysis_view}
floorPlan -d 240.47 160.47 6.0 6.0 6.0 6.0
addRing -spacing_bottom 0.5 -width_left 1 -width_bottom 1 -width_top 1 -spacing_top 0.5 -layer_bottom METAL5 -center 1 -stacked_via_top_layer METAL7 -width_right 1 -around core -jog_distance 0.205 -offset_bottom 0.205 -layer_top METAL5 -threshold 0.205 -offset_left 0.205 -spacing_right 0.5 -spacing_left 0.5 -offset_right 0.205 -offset_top 0.205 -layer_right METAL6 -nets {VSS VDD } -stacked_via_bottom_layer METAL1 -layer_left METAL6
addStripe -block_ring_top_layer_limit METAL7 -max_same_layer_jog_length 0.8 -padcore_ring_bottom_layer_limit METAL5 -set_to_set_distance 60 -stacked_via_top_layer METAL7 -padcore_ring_top_layer_limit METAL7 -spacing 0.42 -merge_stripes_value 0.205 -layer METAL6 -block_ring_bottom_layer_limit METAL5 -width 0.4 -nets {VSS VDD } -stacked_via_bottom_layer METAL1
zoomBox 23.099 107.389 -12.901 72.011
selectWire 6.9700 1.8250 7.3700 157.7450 6 VDD
deleteSelectedFromFPlan
deleteSelectedFromFPlan
selectWire 6.1500 3.3250 6.5500 156.2450 6 VSS
deleteSelectedFromFPlan
sroute -connect { blockPin padPin padRing corePin } -layerChangeRange { 1 6 } -blockPinTarget { nearestRingStripe nearestTarget } -padPinPortConnect { allPort oneGeom } -checkAlignedSecondaryPin 1 -blockPin useLef -allowJogging 1 -crossoverViaBottomLayer 1 -allowLayerChange 1 -targetViaTopLayer 7 -crossoverViaTopLayer 7 -targetViaBottomLayer 1 -nets { VSS VDD }
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
placeDesign -inPlaceOpt -prePlaceOpt
addTieHiLo -cell TIELOM -prefix LTIE
addTieHiLo -cell TIEHIM -prefix HTIE
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
clearClockDomains
setClockDomains -all
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix System_Top_preCTS -outDir timingReports
clockDesign -genSpecOnly Clock.ctstch
clockDesign -specFile Clock.ctstch -outDir clock_report -fixedInstBeforeCTS
optDesign -postCTS -hold
verifyGeometry -noMinArea
refinePlace -preserveRouting
setNanoRouteMode -routeWithEco true
setNanoRouteMode -droutePostRouteSwapVia true
globalDetailRoute
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
clearClockDomains
setClockDomains -all
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix System_Top_postRoute -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix System_Top_postRoute -outDir timingReports
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyProcessAntenna -reportfile System_Top.antenna.rpt -leffile System_Top.antenna.lef -error 1000
addFiller -cell {FILL1M FILL2M FILL4M FILL8M FILL16M FILL32M FILL64M} -prefix FILLER -markFixed
setLayerPreference inst -isVisible 0
setLayerPreference stdCell -isVisible 0
setLayerPreference phyCell -isVisible 0
setLayerPreference coverCell -isVisible 0
setLayerPreference block -isVisible 0
setLayerPreference pg -isVisible 0
setLayerPreference layerBlk -isVisible 0
setLayerPreference obstruct -isVisible 0
setLayerPreference cellBlkgObj -isVisible 0
setLayerPreference pinObj -isVisible 0
setLayerPreference layoutObj -isVisible 0
setLayerPreference stdRow -isVisible 0
setLayerPreference metalFill -isVisible 0
setLayerPreference violation -isVisible 0
setLayerPreference net -isVisible 0
setLayerPreference power -isVisible 0
setLayerPreference implant0 -isVisible 0
setLayerPreference implant1 -isVisible 0
setLayerPreference busguide -isVisible 0
setLayerPreference inst -isVisible 1
setLayerPreference stdCell -isVisible 1
setLayerPreference phyCell -isVisible 1
setLayerPreference coverCell -isVisible 1
setLayerPreference block -isVisible 1
setLayerPreference pg -isVisible 1
setLayerPreference layerBlk -isVisible 1
setLayerPreference obstruct -isVisible 1
setLayerPreference cellBlkgObj -isVisible 1
setLayerPreference pinObj -isVisible 1
setLayerPreference layoutObj -isVisible 1
setLayerPreference stdRow -isVisible 1
setLayerPreference metalFill -isVisible 1
setLayerPreference violation -isVisible 1
setLayerPreference net -isVisible 1
setLayerPreference power -isVisible 1
setLayerPreference implant0 -isVisible 1
setLayerPreference implant1 -isVisible 1
setLayerPreference busguide -isVisible 1
setLayerPreference inst -isVisible 0
setLayerPreference stdCell -isVisible 0
setLayerPreference phyCell -isVisible 0
setLayerPreference coverCell -isVisible 0
setLayerPreference block -isVisible 0
setLayerPreference pg -isVisible 0
setLayerPreference layerBlk -isVisible 0
setLayerPreference obstruct -isVisible 0
setLayerPreference cellBlkgObj -isVisible 0
setLayerPreference pinObj -isVisible 0
setLayerPreference layoutObj -isVisible 0
setLayerPreference stdRow -isVisible 0
setLayerPreference metalFill -isVisible 0
setLayerPreference violation -isVisible 0
setLayerPreference net -isVisible 0
setLayerPreference power -isVisible 0
setLayerPreference implant0 -isVisible 0
setLayerPreference implant1 -isVisible 0
setLayerPreference busguide -isVisible 0
setLayerPreference inst -isVisible 1
setLayerPreference stdCell -isVisible 1
setLayerPreference phyCell -isVisible 1
setLayerPreference coverCell -isVisible 1
setLayerPreference block -isVisible 1
setLayerPreference pg -isVisible 1
setLayerPreference layerBlk -isVisible 1
setLayerPreference obstruct -isVisible 1
setLayerPreference cellBlkgObj -isVisible 1
setLayerPreference pinObj -isVisible 1
setLayerPreference layoutObj -isVisible 1
setLayerPreference stdRow -isVisible 1
setLayerPreference metalFill -isVisible 1
setLayerPreference violation -isVisible 1
setLayerPreference net -isVisible 1
setLayerPreference power -isVisible 1
setLayerPreference implant0 -isVisible 1
setLayerPreference implant1 -isVisible 1
setLayerPreference busguide -isVisible 1
setLayerPreference inst -isVisible 0
setLayerPreference stdCell -isVisible 0
setLayerPreference phyCell -isVisible 0
setLayerPreference coverCell -isVisible 0
setLayerPreference block -isVisible 0
setLayerPreference pg -isVisible 0
setLayerPreference layerBlk -isVisible 0
setLayerPreference obstruct -isVisible 0
setLayerPreference cellBlkgObj -isVisible 0
setLayerPreference pinObj -isVisible 0
setLayerPreference layoutObj -isVisible 0
setLayerPreference stdRow -isVisible 0
setLayerPreference metalFill -isVisible 0
setLayerPreference violation -isVisible 0
setLayerPreference net -isVisible 0
setLayerPreference power -isVisible 0
setLayerPreference implant0 -isVisible 0
setLayerPreference implant1 -isVisible 0
setLayerPreference busguide -isVisible 0
setLayerPreference inst -isVisible 1
setLayerPreference stdCell -isVisible 1
setLayerPreference phyCell -isVisible 1
setLayerPreference coverCell -isVisible 1
setLayerPreference block -isVisible 1
setLayerPreference pg -isVisible 1
setLayerPreference layerBlk -isVisible 1
setLayerPreference obstruct -isVisible 1
setLayerPreference cellBlkgObj -isVisible 1
setLayerPreference pinObj -isVisible 1
setLayerPreference layoutObj -isVisible 1
setLayerPreference stdRow -isVisible 1
setLayerPreference metalFill -isVisible 1
setLayerPreference violation -isVisible 1
setLayerPreference net -isVisible 1
setLayerPreference power -isVisible 1
setLayerPreference implant0 -isVisible 1
setLayerPreference implant1 -isVisible 1
setLayerPreference busguide -isVisible 1
setLayerPreference phyCell -isVisible 0
setLayerPreference phyCell -isVisible 1
setLayerPreference phyCell -isVisible 0
setLayerPreference phyCell -isVisible 1
setLayerPreference inst -isVisible 0
setLayerPreference inst -isVisible 1
setLayerPreference block -isVisible 0
setLayerPreference block -isVisible 1
setLayerPreference layerBlk -isVisible 0
setLayerPreference layerBlk -isVisible 1
setLayerPreference metalFill -isVisible 0
setLayerPreference metalFill -isVisible 1
clearClockDomains
setClockDomains -all
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix System_Top_postRoute -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix System_Top_postRoute -outDir timingReports
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
checkFiller -highlight true
saveDesign /home/ahesham/Projects/Final_System_pnr/pnr/System_Top_chip_f.enc
saveNetlist export/System_Top.v
saveNetlist export/System_Top_pg.v -includePowerGround
rcOut -spf export/System_Top.spf
saveNetlist export/System_Top.v
saveNetlist export/System_Top_pg.v -includePowerGround
rcOut -spf export/System_Top.spf
delayCal -sdf export/System_Top.sdf -version 3.0
report_power -outfile report/power.rpt
streamOut export/System_Top.gds -mapFile ./import/gds2InLayer.map -libName DesignLib -stripes 1 -units 2000 -mode ALL
clearClockDomains
setClockDomains -all
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix System_Top_postRoute -outDir timingReports
setDrawView ameba
setDrawView fplan
setDrawView place
setLayerPreference yieldCell -isVisible 1
setLayerPreference yieldMap -isVisible 1
setLayerPreference yieldCell -isVisible 0
setLayerPreference yieldMap -isVisible 0
setLayerPreference densityMap -isVisible 1
setLayerPreference densityMap -isVisible 0
setLayerPreference densityMap -isVisible 1
setLayerPreference inst -isVisible 0
setLayerPreference stdCell -isVisible 0
setLayerPreference phyCell -isVisible 0
setLayerPreference coverCell -isVisible 0
setLayerPreference block -isVisible 0
setLayerPreference pg -isVisible 0
setLayerPreference layerBlk -isVisible 0
setLayerPreference obstruct -isVisible 0
setLayerPreference cellBlkgObj -isVisible 0
setLayerPreference pinObj -isVisible 0
setLayerPreference layoutObj -isVisible 0
setLayerPreference stdRow -isVisible 0
setLayerPreference metalFill -isVisible 0
setLayerPreference violation -isVisible 0
setLayerPreference net -isVisible 0
setLayerPreference power -isVisible 0
setLayerPreference implant0 -isVisible 0
setLayerPreference implant1 -isVisible 0
setLayerPreference busguide -isVisible 0
setLayerPreference inst -isVisible 0
setLayerPreference stdCell -isVisible 0
setLayerPreference phyCell -isVisible 0
setLayerPreference coverCell -isVisible 0
setLayerPreference block -isVisible 0
setLayerPreference pg -isVisible 0
setLayerPreference layerBlk -isVisible 0
setLayerPreference obstruct -isVisible 0
setLayerPreference cellBlkgObj -isVisible 0
setLayerPreference pinObj -isVisible 0
setLayerPreference layoutObj -isVisible 0
setLayerPreference stdRow -isVisible 0
setLayerPreference metalFill -isVisible 0
setLayerPreference violation -isVisible 0
setLayerPreference net -isVisible 0
setLayerPreference power -isVisible 0
setLayerPreference implant0 -isVisible 0
setLayerPreference implant1 -isVisible 0
setLayerPreference busguide -isVisible 0
setLayerPreference inst -isVisible 1
setLayerPreference stdCell -isVisible 1
setLayerPreference phyCell -isVisible 1
setLayerPreference coverCell -isVisible 1
setLayerPreference block -isVisible 1
setLayerPreference pg -isVisible 1
setLayerPreference layerBlk -isVisible 1
setLayerPreference obstruct -isVisible 1
setLayerPreference cellBlkgObj -isVisible 1
setLayerPreference pinObj -isVisible 1
setLayerPreference layoutObj -isVisible 1
setLayerPreference stdRow -isVisible 1
setLayerPreference metalFill -isVisible 1
setLayerPreference violation -isVisible 1
setLayerPreference net -isVisible 1
setLayerPreference power -isVisible 1
setLayerPreference implant0 -isVisible 1
setLayerPreference implant1 -isVisible 1
setLayerPreference busguide -isVisible 1
