
set_property -dict { PACKAGE_PIN M13 IOSTANDARD LVCMOS33 } [ get_ports {entranceDoor} ] ;
set_property -dict { PACKAGE_PIN R15 IOSTANDARD LVCMOS33 } [ get_ports {exitDoor} ] ;

set_property -dict { PACKAGE_PIN V10 IOSTANDARD LVCMOS33 } [ get_ports {max_capacity_in[0]} ] ;
set_property -dict { PACKAGE_PIN U11 IOSTANDARD LVCMOS33 } [ get_ports {max_capacity_in[1]} ] ;
set_property -dict { PACKAGE_PIN U12 IOSTANDARD LVCMOS33 } [ get_ports {max_capacity_in[2]} ] ;
set_property -dict { PACKAGE_PIN H6 IOSTANDARD LVCMOS33 } [ get_ports {max_capacity_in[3]} ] ;
set_property -dict { PACKAGE_PIN T13 IOSTANDARD LVCMOS33 } [ get_ports {max_capacity_in[4]} ] ;
set_property -dict { PACKAGE_PIN R16 IOSTANDARD LVCMOS33 } [ get_ports {max_capacity_in[5]} ] ;
set_property -dict { PACKAGE_PIN U8 IOSTANDARD LVCMOS33 } [ get_ports {max_capacity_in[6]} ] ;
set_property -dict { PACKAGE_PIN T8 IOSTANDARD LVCMOS33 } [ get_ports {max_capacity_in[7]} ] ;

set_property -dict { PACKAGE_PIN H17 IOSTANDARD LVCMOS33 } [ get_ports {count_out[0]} ] ;
set_property -dict { PACKAGE_PIN K15 IOSTANDARD LVCMOS33 } [ get_ports {count_out[1]} ] ;
set_property -dict { PACKAGE_PIN J13 IOSTANDARD LVCMOS33 } [ get_ports {count_out[2]} ] ;
set_property -dict { PACKAGE_PIN N14 IOSTANDARD LVCMOS33 } [ get_ports {count_out[3]} ] ;
set_property -dict { PACKAGE_PIN R18 IOSTANDARD LVCMOS33 } [ get_ports {count_out[4]} ] ;
set_property -dict { PACKAGE_PIN V17 IOSTANDARD LVCMOS33 } [ get_ports {count_out[5]} ] ;
set_property -dict { PACKAGE_PIN U17 IOSTANDARD LVCMOS33 } [ get_ports {count_out[6]} ] ;
set_property -dict { PACKAGE_PIN U16 IOSTANDARD LVCMOS33 } [ get_ports {count_out[7]} ] ;

set_property -dict { PACKAGE_PIN L16 IOSTANDARD LVCMOS33 } [ get_ports {reset} ] ;
set_property -dict { PACKAGE_PIN T15 IOSTANDARD LVCMOS33 } [ get_ports {max_capacity_out} ] ;

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk]
set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports {clk}];
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk]

