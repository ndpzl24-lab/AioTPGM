## ================= CLOCK =================
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 [get_ports clk]

## ================= RESET =================
set_property PACKAGE_PIN U18 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]

## ================= SWITCH =================
set_property PACKAGE_PIN V17 [get_ports sw0]
set_property IOSTANDARD LVCMOS33 [get_ports sw0]

set_property PACKAGE_PIN V16 [get_ports sw1]
set_property IOSTANDARD LVCMOS33 [get_ports sw1]

set_property PACKAGE_PIN W16 [get_ports sw2]
set_property IOSTANDARD LVCMOS33 [get_ports sw2]

set_property PACKAGE_PIN W17 [get_ports sw3]
set_property IOSTANDARD LVCMOS33 [get_ports sw3]

## 👉 time_mode 따로 완전 분리 (충돌 방지)
set_property PACKAGE_PIN U16 [get_ports time_mode]
set_property IOSTANDARD LVCMOS33 [get_ports time_mode]

## ================= LED (디버그용 출력) =================
## mode_out
set_property PACKAGE_PIN U19 [get_ports {mode_out[0]}]
set_property PACKAGE_PIN E19 [get_ports {mode_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports mode_out[*]]

## set_pos_out
set_property PACKAGE_PIN V19 [get_ports {set_pos_out[0]}]
set_property PACKAGE_PIN W18 [get_ports {set_pos_out[1]}]
set_property PACKAGE_PIN U15 [get_ports {set_pos_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports set_pos_out[*]]

## alarm_out
set_property PACKAGE_PIN V14 [get_ports {alarm_out[0]}]
set_property PACKAGE_PIN V13 [get_ports {alarm_out[1]}]
set_property PACKAGE_PIN V3  [get_ports {alarm_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports alarm_out[*]]

## alarm_on
set_property PACKAGE_PIN W3 [get_ports {alarm_on[0]}]
set_property PACKAGE_PIN U3 [get_ports {alarm_on[1]}]
set_property PACKAGE_PIN P3 [get_ports {alarm_on[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports alarm_on[*]]

## ================= FND SELECT =================
set_property PACKAGE_PIN U2 [get_ports {fndsel[0]}]
set_property PACKAGE_PIN U4 [get_ports {fndsel[1]}]
set_property PACKAGE_PIN V4 [get_ports {fndsel[2]}]
set_property PACKAGE_PIN W4 [get_ports {fndsel[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports fndsel[*]]

## ================= FND SEGMENT =================
set_property PACKAGE_PIN W7 [get_ports {fnd[6]}]
set_property PACKAGE_PIN W6 [get_ports {fnd[5]}]
set_property PACKAGE_PIN U8 [get_ports {fnd[4]}]
set_property PACKAGE_PIN V8 [get_ports {fnd[3]}]
set_property PACKAGE_PIN U5 [get_ports {fnd[2]}]
set_property PACKAGE_PIN V5 [get_ports {fnd[1]}]
set_property PACKAGE_PIN U7 [get_ports {fnd[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports fnd[*]]