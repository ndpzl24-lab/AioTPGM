## CLOCK
set_property -dict { PACKAGE_PIN W5 IOSTANDARD LVCMOS33 } [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

## INPUTS
set_property -dict { PACKAGE_PIN R2 IOSTANDARD LVCMOS33 } [get_ports reset]
set_property -dict { PACKAGE_PIN T1 IOSTANDARD LVCMOS33 } [get_ports time_mode]

## SWITCHES
set_property -dict { PACKAGE_PIN V17 IOSTANDARD LVCMOS33 } [get_ports sw0]
set_property -dict { PACKAGE_PIN V16 IOSTANDARD LVCMOS33 } [get_ports sw1]
set_property -dict { PACKAGE_PIN W16 IOSTANDARD LVCMOS33 } [get_ports sw2]
set_property -dict { PACKAGE_PIN W17 IOSTANDARD LVCMOS33 } [get_ports sw3]

## MODE OUTPUT (LED 사용)
set_property -dict { PACKAGE_PIN U16 IOSTANDARD LVCMOS33 } [get_ports {mode_out[0]}]
set_property -dict { PACKAGE_PIN E19 IOSTANDARD LVCMOS33 } [get_ports {mode_out[1]}]

## SET POSITION OUTPUT (LED 사용)
set_property -dict { PACKAGE_PIN U19 IOSTANDARD LVCMOS33 } [get_ports {set_pos_out[0]}]
set_property -dict { PACKAGE_PIN V19 IOSTANDARD LVCMOS33 } [get_ports {set_pos_out[1]}]
set_property -dict { PACKAGE_PIN W18 IOSTANDARD LVCMOS33 } [get_ports {set_pos_out[2]}]

## ALARM OUTPUT
set_property -dict { PACKAGE_PIN V13 IOSTANDARD LVCMOS33 } [get_ports {alarm_out[0]}]
set_property -dict { PACKAGE_PIN V3  IOSTANDARD LVCMOS33 } [get_ports {alarm_out[1]}]
set_property -dict { PACKAGE_PIN W3  IOSTANDARD LVCMOS33 } [get_ports {alarm_out[2]}]

## ALARM ON (LED)
set_property -dict { PACKAGE_PIN U15 IOSTANDARD LVCMOS33 } [get_ports {alarm_on[0]}]
set_property -dict { PACKAGE_PIN U14 IOSTANDARD LVCMOS33 } [get_ports {alarm_on[1]}]
set_property -dict { PACKAGE_PIN V14 IOSTANDARD LVCMOS33 } [get_ports {alarm_on[2]}]

## 7-SEGMENT (FND)
set_property -dict { PACKAGE_PIN W7 IOSTANDARD LVCMOS33 } [get_ports {fnd[6]}]
set_property -dict { PACKAGE_PIN W6 IOSTANDARD LVCMOS33 } [get_ports {fnd[5]}]
set_property -dict { PACKAGE_PIN U8 IOSTANDARD LVCMOS33 } [get_ports {fnd[4]}]
set_property -dict { PACKAGE_PIN V8 IOSTANDARD LVCMOS33 } [get_ports {fnd[3]}]
set_property -dict { PACKAGE_PIN U5 IOSTANDARD LVCMOS33 } [get_ports {fnd[2]}]
set_property -dict { PACKAGE_PIN V5 IOSTANDARD LVCMOS33 } [get_ports {fnd[1]}]
set_property -dict { PACKAGE_PIN U7 IOSTANDARD LVCMOS33 } [get_ports {fnd[0]}]

## FND SELECT
set_property -dict { PACKAGE_PIN U2 IOSTANDARD LVCMOS33 } [get_ports {fndsel[0]}]
set_property -dict { PACKAGE_PIN U4 IOSTANDARD LVCMOS33 } [get_ports {fndsel[1]}]
set_property -dict { PACKAGE_PIN V4 IOSTANDARD LVCMOS33 } [get_ports {fndsel[2]}]
set_property -dict { PACKAGE_PIN W4 IOSTANDARD LVCMOS33 } [get_ports {fndsel[3]}]

## CONFIG
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]