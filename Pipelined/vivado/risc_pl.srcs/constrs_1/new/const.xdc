# Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk }]; # CLK100MHZ
create_clock -add -name sys_clk_pin -period 4.2 -waveform {0 2.1} [get_ports {clk}];

#Buttons
set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { rst_n }]; # CPU_RESETN

## LEDs
#set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { imem_rdata[0]  }]; # LED[0] 
#set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { imem_rdata[1]  }]; # LED[1] 
#set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { imem_rdata[2]  }]; # LED[2] 
#set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { imem_rdata[3]  }]; # LED[3] 
#set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { imem_rdata[4]  }]; # LED[4] 
#set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { imem_rdata[5]  }]; # LED[5] 
#set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { imem_rdata[6]  }]; # LED[6] 
#set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { imem_rdata[7]  }]; # LED[7] 
#set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { imem_rdata[8]  }]; # LED[8] 
#set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { imem_rdata[9]  }]; # LED[9] 
#set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { imem_rdata[10] }]; # LED[10]
#set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { imem_rdata[11] }]; # LED[11]
#set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { imem_rdata[12] }]; # LED[12]
#set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports { imem_rdata[13] }]; # LED[13]
#set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { imem_rdata[14] }]; # LED[14]
#set_property -dict { PACKAGE_PIN V11   IOSTANDARD LVCMOS33 } [get_ports { imem_rdata[15] }]; # LED[15]

# RGB LEDs
set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports { holt }]; # LED16_B
#set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports { dmem_wr }]; # LED16_B