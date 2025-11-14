## Constraints file for PYNQ-Z2 Board
## This file describes the clock, LED, and button pin mappings

## Clock signal (125 MHz)
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 8.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports clk]

## LEDs (4 LEDs available on PYNQ-Z2)
## Uncomment the LED you want to use
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports led]
# set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports led]  # LED1
# set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports led]  # LED2
# set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports led]  # LED3

## RGB LEDs (if you want to use RGB LEDs instead)
## LD4 RGB LED
# set_property -dict {PACKAGE_PIN L15 IOSTANDARD LVCMOS33} [get_ports led_r]  # Red
# set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports led_g]  # Green
# set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports led_b]  # Blue

## LD5 RGB LED
# set_property -dict {PACKAGE_PIN G14 IOSTANDARD LVCMOS33} [get_ports led5_r]  # Red
# set_property -dict {PACKAGE_PIN L14 IOSTANDARD LVCMOS33} [get_ports led5_g]  # Green
# set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVCMOS33} [get_ports led5_b]  # Blue

## Push Buttons (4 buttons available)
## Uncomment the button(s) you want to use
# set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports btn0]  # BTN0
# set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports btn1]  # BTN1
# set_property -dict {PACKAGE_PIN L20 IOSTANDARD LVCMOS33} [get_ports btn2]  # BTN2
# set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS33} [get_ports btn3]  # BTN3

## Switches (2 switches available)
## Uncomment the switch(es) you want to use
# set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS33} [get_ports sw0]  # SW0
# set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports sw1]  # SW1

## Additional timing constraints (optional but recommended)
## Helps with timing closure
# set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]
