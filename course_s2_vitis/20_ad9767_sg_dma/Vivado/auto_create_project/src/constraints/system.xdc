set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

set_property IOSTANDARD LVCMOS33 [get_ports {key_tri_i[0]}]
set_property PACKAGE_PIN AF18 [get_ports {key_tri_i[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {key_tri_i[1]}]
set_property PACKAGE_PIN AF17 [get_ports {key_tri_i[1]}]

