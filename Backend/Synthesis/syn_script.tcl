
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

############################# Formality Setup File ##########################
                                                   
set_svf $top_module.svf

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries          #"
puts "###########################################"

#Add the path of the libraries and RTL files to the search_path variable

set PROJECT_PATH /home/IC/Projects/MY_SYSTEM/
set LIB_PATH     /home/IC/tsmc_fb_cl013g_sc/aci/sc-m

lappend search_path $LIB_PATH/synopsys
lappend search_path $PROJECT_PATH/RTL/

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_format verilog


analyze -format $file_format ALU_Top.v
analyze -format $file_format Bin_to_Gray.v
analyze -format $file_format BIT_SYNC.v
analyze -format $file_format CLK_DIV.v
analyze -format $file_format CLK_GATE.v
analyze -format $file_format Data_Samoling.v
analyze -format $file_format DATA_SYNC.v
analyze -format $file_format Deselizer.v
analyze -format $file_format Edge_Bit_CNTR.v
analyze -format $file_format FIFO.v
analyze -format $file_format FIFO_MEM.v
analyze -format $file_format FSM_TX.v
analyze -format $file_format MUX_Divider.v
analyze -format $file_format MUX_TX.v
analyze -format $file_format Parity_Calc_TX.v
analyze -format $file_format Parity_check.v
analyze -format $file_format Pulse_Gen.v
analyze -format $file_format Register_File.v
analyze -format $file_format rptr_fifo.v
analyze -format $file_format rptr_fifo_GRAYED.v
analyze -format $file_format RST_SYNC.v
analyze -format $file_format Serilizer_Tx.v
analyze -format $file_format Stop_Chck.v
analyze -format $file_format STRT_CHECK.v
analyze -format $file_format SYS_CTRL.v
analyze -format $file_format SYS_TOP.v
analyze -format $file_format TOP_UART_RX.v
analyze -format $file_format TOTAL_UART.v
analyze -format $file_format UART_RX_FSM.v
analyze -format $file_format UART_Tx_TOP.v
analyze -format $file_format wptr_fifo.v
analyze -format $file_format wptr_fifo_GRAYED.v



elaborate -lib WORK SYS_TOP

###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design >> reports/check_design.rpt

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source -echo ./cons.tcl

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile 

##################### Close Formality Setup file ###########################

set_svf -off

#############################################################################
# Write out files
#############################################################################

write_file -format verilog -hierarchy -output netlists/$top_module.ddc
write_file -format verilog -hierarchy -output netlists/$top_module.v
write_sdf  sdf/$top_module.sdf
write_sdc  -nosplit sdc/$top_module.sdc

####################### reporting ##########################################

report_area -hierarchy > reports/area.rpt
report_power -hierarchy > reports/power.rpt
report_timing -delay_type min -max_paths 20 > reports/hold.rpt
report_timing -delay_type max -max_paths 20 > reports/setup.rpt
report_clock -attributes > reports/clocks.rpt
report_constraint -all_violators -nosplit > reports/constraints.rpt

############################################################################
# DFT Preparation Section
############################################################################

set flops_per_chain 100

set num_flops [sizeof_collection [all_registers -edge_triggered]]

set num_chains [expr $num_flops / $flops_per_chain + 1 ]

################# starting graphical user interface #######################

#gui_start

#exit
