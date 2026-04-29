## 🔷 Clock (100MHz)
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk -period 10.0 -waveform {0 5} [get_ports clk]

## 🔷 Switch input (8bit d)
set_property PACKAGE_PIN V17 [get_ports {d[0]}]
set_property PACKAGE_PIN V16 [get_ports {d[1]}]
set_property PACKAGE_PIN W16 [get_ports {d[2]}]
set_property PACKAGE_PIN W17 [get_ports {d[3]}]
set_property PACKAGE_PIN W15 [get_ports {d[4]}]
set_property PACKAGE_PIN V15 [get_ports {d[5]}]
set_property PACKAGE_PIN W14 [get_ports {d[6]}]
set_property PACKAGE_PIN W13 [get_ports {d[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {d[*]}]

## 🔷 FND (7-seg)
set_property PACKAGE_PIN W7  [get_ports {fnd[0]}]
set_property PACKAGE_PIN W6  [get_ports {fnd[1]}]
set_property PACKAGE_PIN U8  [get_ports {fnd[2]}]
set_property PACKAGE_PIN V8  [get_ports {fnd[3]}]
set_property PACKAGE_PIN U5  [get_ports {fnd[4]}]
set_property PACKAGE_PIN V5  [get_ports {fnd[5]}]
set_property PACKAGE_PIN U7  [get_ports {fnd[6]}]

set_property IOSTANDARD LVCMOS33 [get_ports {fnd[*]}]

## 🔷 FND Select (자리 선택)
set_property PACKAGE_PIN U2 [get_ports fndsel1]
set_property PACKAGE_PIN U4 [get_ports fndsel2]
set_property PACKAGE_PIN V4 [get_ports fndsel3]
set_property PACKAGE_PIN W4 [get_ports fndsel4]

set_property IOSTANDARD LVCMOS33 [get_ports {fndsel1 fndsel2 fndsel3 fndsel4}]