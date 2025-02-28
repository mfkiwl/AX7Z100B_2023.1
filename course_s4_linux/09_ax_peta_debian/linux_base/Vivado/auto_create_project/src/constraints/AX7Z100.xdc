## This file is a general .xdc for the ALINX AX7Z100 board
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

############## clock define##################
create_clock -period 5.000 [get_ports sys_clk_clk_p]
set_property PACKAGE_PIN F9 [get_ports sys_clk_clk_p]
set_property IOSTANDARD DIFF_SSTL15 [get_ports sys_clk_clk_p]


set_property PACKAGE_PIN AF18 [get_ports {btns_tri_i[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btns_tri_i[0]}]

set_property PACKAGE_PIN AF17 [get_ports {btns_tri_i[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btns_tri_i[1]}]

set_property PACKAGE_PIN AH17 [get_ports {btns_tri_i[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btns_tri_i[2]}]

set_property PACKAGE_PIN AH16 [get_ports {btns_tri_i[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btns_tri_i[3]}]

set_property PACKAGE_PIN AJ16 [get_ports {leds_tri_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds_tri_o[0]}]

set_property PACKAGE_PIN AK16 [get_ports {leds_tri_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds_tri_o[1]}]

set_property PACKAGE_PIN AE16 [get_ports {leds_tri_o[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds_tri_o[2]}]

set_property PACKAGE_PIN AE15 [get_ports {leds_tri_o[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds_tri_o[3]}]

set_property PACKAGE_PIN H14  [get_ports hdmi_clk]
set_property PACKAGE_PIN F12 [get_ports {hdmi_d[0]}]
set_property PACKAGE_PIN B11 [get_ports {hdmi_d[1]}]
set_property PACKAGE_PIN C11 [get_ports {hdmi_d[2]}]
set_property PACKAGE_PIN B12 [get_ports {hdmi_d[3]}]
set_property PACKAGE_PIN C12 [get_ports {hdmi_d[4]}]
set_property PACKAGE_PIN C13 [get_ports {hdmi_d[5]}]
set_property PACKAGE_PIN C14 [get_ports {hdmi_d[6]}]
set_property PACKAGE_PIN A12 [get_ports {hdmi_d[7]}]
set_property PACKAGE_PIN A13 [get_ports {hdmi_d[8]}]
set_property PACKAGE_PIN J14 [get_ports {hdmi_d[9]}]
set_property PACKAGE_PIN L14 [get_ports {hdmi_d[10]}]
set_property PACKAGE_PIN L15 [get_ports {hdmi_d[11]}]
set_property PACKAGE_PIN C16 [get_ports {hdmi_d[12]}]
set_property PACKAGE_PIN D16 [get_ports {hdmi_d[13]}]
set_property PACKAGE_PIN A17 [get_ports {hdmi_d[14]}]
set_property PACKAGE_PIN B17 [get_ports {hdmi_d[15]}]
set_property PACKAGE_PIN E17 [get_ports {hdmi_d[16]}]
set_property PACKAGE_PIN F17 [get_ports {hdmi_d[17]}]
set_property PACKAGE_PIN G16 [get_ports {hdmi_d[18]}]
set_property PACKAGE_PIN G17 [get_ports {hdmi_d[19]}]
set_property PACKAGE_PIN H16 [get_ports {hdmi_d[20]}]
set_property PACKAGE_PIN J16 [get_ports {hdmi_d[21]}]
set_property PACKAGE_PIN C17 [get_ports {hdmi_d[22]}]
set_property PACKAGE_PIN B16 [get_ports {hdmi_d[23]}]
set_property PACKAGE_PIN G12 [get_ports hdmi_de]
set_property PACKAGE_PIN H13 [get_ports hdmi_hs]
set_property PACKAGE_PIN J13 [get_ports hdmi_vs]
set_property PACKAGE_PIN E15 [get_ports hdmi_i2c_scl_io]
set_property PACKAGE_PIN E16 [get_ports hdmi_i2c_sda_io]

set_property IOSTANDARD LVCMOS18 [get_ports hdmi_i2c_scl_io]
set_property IOSTANDARD LVCMOS18 [get_ports hdmi_i2c_sda_io]
set_property IOSTANDARD LVCMOS18 [get_ports {hdmi_d[*]}]
set_property IOSTANDARD LVCMOS18 [get_ports hdmi_clk]
set_property IOSTANDARD LVCMOS18 [get_ports hdmi_de]
set_property IOSTANDARD LVCMOS18 [get_ports hdmi_vs]
set_property IOSTANDARD LVCMOS18 [get_ports hdmi_hs]

set_property PULLUP true [get_ports hdmi_i2c_scl_io]
set_property PULLUP true [get_ports hdmi_i2c_sda_io]

set_property SLEW FAST [get_ports {hdmi_d[*]}]
set_property DRIVE 8 [get_ports {hdmi_d[*]}]
set_property SLEW FAST [get_ports hdmi_clk]
set_property SLEW FAST [get_ports hdmi_de]
set_property SLEW FAST [get_ports hdmi_hs]
set_property SLEW FAST [get_ports hdmi_i2c_scl_io]
set_property SLEW FAST [get_ports hdmi_i2c_sda_io]
set_property SLEW FAST [get_ports hdmi_vs]



set_property PACKAGE_PIN B14 [get_ports {mdio_mdc          }]
set_property PACKAGE_PIN A14 [get_ports {mdio_mdio_io      }]
set_property PACKAGE_PIN B15 [get_ports {phy_rst_n         }]
set_property PACKAGE_PIN E13  [get_ports {rgmii_rxc         }]
set_property PACKAGE_PIN D13  [get_ports {rgmii_rx_ctl      }]
set_property PACKAGE_PIN F15  [get_ports {rgmii_rd[0]       }]
set_property PACKAGE_PIN F14  [get_ports {rgmii_rd[1]       }]
set_property PACKAGE_PIN E12  [get_ports {rgmii_rd[2]       }]
set_property PACKAGE_PIN F13  [get_ports {rgmii_rd[3]       }]
set_property PACKAGE_PIN K15  [get_ports {rgmii_txc         }]
set_property PACKAGE_PIN J15  [get_ports {rgmii_tx_ctl      }]
set_property PACKAGE_PIN G14  [get_ports {rgmii_td[0]       }]
set_property PACKAGE_PIN G15  [get_ports {rgmii_td[1]       }]
set_property PACKAGE_PIN K13  [get_ports {rgmii_td[2]       }]
set_property PACKAGE_PIN L13  [get_ports {rgmii_td[3]       }]

set_property IOSTANDARD LVCMOS18 [get_ports {mdio_mdc          }]
set_property IOSTANDARD LVCMOS18 [get_ports {mdio_mdio_io      }]
set_property IOSTANDARD LVCMOS18 [get_ports {phy_rst_n         }]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rxc         }]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rx_ctl      }]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rd[0]       }]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rd[1]       }]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rd[2]       }]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rd[3]       }]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_txc         }]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_tx_ctl      }]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_td[0]       }]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_td[1]       }]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_td[2]       }]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_td[3]       }]