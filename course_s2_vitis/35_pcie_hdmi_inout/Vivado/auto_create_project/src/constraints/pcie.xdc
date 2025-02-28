set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

#PCIe rstn
set_property PACKAGE_PIN AB22 [get_ports pcie_rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports pcie_rst_n]

# PCI Express reference clock 100MHz
set_property PACKAGE_PIN N8 [get_ports {pcie_ref_clk_p[0]}]
set_property PACKAGE_PIN N7 [get_ports {pcie_ref_clk_n[0]}]
#ddr3 reference clock 200MHz
set_property PACKAGE_PIN F9 [get_ports {sys_clk_p}]
set_property PACKAGE_PIN E8 [get_ports {sys_clk_n}]


