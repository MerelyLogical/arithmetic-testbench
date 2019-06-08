# TCL File Generated by Component Editor 16.0
# Fri Jun 07 21:18:36 BST 2019
# DO NOT MODIFY


# 
# test_wrapper "test_wrapper" v4.1
# Zifan Wang 2019.06.07.21:18:36
# Testbench Wrapper
# 

# 
# request TCL package from ACDS 16.0
# 
package require -exact qsys 16.0


# 
# module test_wrapper
# 
set_module_property DESCRIPTION "Testbench Wrapper"
set_module_property NAME test_wrapper
set_module_property VERSION 4.1
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR "Zifan Wang"
set_module_property DISPLAY_NAME test_wrapper
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL test_wrapper
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file test_wrapper.v VERILOG PATH test_wrapper.v TOP_LEVEL_FILE


# 
# parameters
# 
add_parameter SYS_VERSION INTEGER 41 ""
set_parameter_property SYS_VERSION DEFAULT_VALUE 41
set_parameter_property SYS_VERSION DISPLAY_NAME SYS_VERSION
set_parameter_property SYS_VERSION WIDTH ""
set_parameter_property SYS_VERSION TYPE INTEGER
set_parameter_property SYS_VERSION UNITS None
set_parameter_property SYS_VERSION ALLOWED_RANGES -2147483648:2147483647
set_parameter_property SYS_VERSION DESCRIPTION ""
set_parameter_property SYS_VERSION HDL_PARAMETER true
add_parameter WIDTH INTEGER 32 ""
set_parameter_property WIDTH DEFAULT_VALUE 32
set_parameter_property WIDTH DISPLAY_NAME WIDTH
set_parameter_property WIDTH TYPE INTEGER
set_parameter_property WIDTH UNITS None
set_parameter_property WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property WIDTH DESCRIPTION ""
set_parameter_property WIDTH HDL_PARAMETER true
add_parameter NUM_SUB_MON INTEGER 2 ""
set_parameter_property NUM_SUB_MON DEFAULT_VALUE 2
set_parameter_property NUM_SUB_MON DISPLAY_NAME NUM_SUB_MON
set_parameter_property NUM_SUB_MON TYPE INTEGER
set_parameter_property NUM_SUB_MON UNITS None
set_parameter_property NUM_SUB_MON ALLOWED_RANGES -2147483648:2147483647
set_parameter_property NUM_SUB_MON DESCRIPTION ""
set_parameter_property NUM_SUB_MON HDL_PARAMETER true


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset reset Input 1


# 
# connection point slave
# 
add_interface slave avalon end
set_interface_property slave addressUnits WORDS
set_interface_property slave associatedClock clock
set_interface_property slave associatedReset reset
set_interface_property slave bitsPerSymbol 8
set_interface_property slave burstOnBurstBoundariesOnly false
set_interface_property slave burstcountUnits WORDS
set_interface_property slave explicitAddressSpan 0
set_interface_property slave holdTime 0
set_interface_property slave linewrapBursts false
set_interface_property slave maximumPendingReadTransactions 0
set_interface_property slave maximumPendingWriteTransactions 0
set_interface_property slave readLatency 0
set_interface_property slave readWaitTime 1
set_interface_property slave setupTime 0
set_interface_property slave timingUnits Cycles
set_interface_property slave writeWaitTime 0
set_interface_property slave ENABLED true
set_interface_property slave EXPORT_OF ""
set_interface_property slave PORT_NAME_MAP ""
set_interface_property slave CMSIS_SVD_VARIABLES ""
set_interface_property slave SVD_ADDRESS_GROUP ""

add_interface_port slave slave_address address Input 6
add_interface_port slave slave_read read Input 1
add_interface_port slave slave_write write Input 1
add_interface_port slave slave_writedata writedata Input 32
add_interface_port slave slave_readdata readdata Output 32
set_interface_assignment slave embeddedsw.configuration.isFlash 0
set_interface_assignment slave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment slave embeddedsw.configuration.isPrintableDevice 0


# 
# connection point clock_dut
# 
add_interface clock_dut clock end
set_interface_property clock_dut clockRate 0
set_interface_property clock_dut ENABLED true
set_interface_property clock_dut EXPORT_OF ""
set_interface_property clock_dut PORT_NAME_MAP ""
set_interface_property clock_dut CMSIS_SVD_VARIABLES ""
set_interface_property clock_dut SVD_ADDRESS_GROUP ""

add_interface_port clock_dut clk_dut clk Input 1

