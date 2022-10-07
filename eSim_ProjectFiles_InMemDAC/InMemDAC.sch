EESchema Schematic File Version 2
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:eSim_SKY130
LIBS:eSim_SKY130_Subckts
LIBS:InMemDAC-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L adc_bridge_2 U4
U 1 1 63359D92
P 2350 1650
F 0 "U4" H 2350 1650 60  0000 C CNN
F 1 "adc_bridge_2" H 2350 1800 60  0000 C CNN
F 2 "" H 2350 1650 60  0000 C CNN
F 3 "" H 2350 1650 60  0000 C CNN
	1    2350 1650
	-1   0    0    -1  
$EndComp
$Comp
L dac_bridge_1 U3
U 1 1 63359E81
P 1750 3850
F 0 "U3" H 1750 3850 60  0000 C CNN
F 1 "dac_bridge_1" H 1750 4000 60  0000 C CNN
F 2 "" H 1750 3850 60  0000 C CNN
F 3 "" H 1750 3850 60  0000 C CNN
	1    1750 3850
	0    1    1    0   
$EndComp
$Comp
L pulse v4
U 1 1 6335A0E2
P 2950 2250
F 0 "v4" H 2750 2350 60  0000 C CNN
F 1 "pulse" H 2750 2200 60  0000 C CNN
F 2 "R1" H 2650 2250 60  0000 C CNN
F 3 "" H 2950 2250 60  0000 C CNN
	1    2950 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR5
U 1 1 6335A2DB
P 2950 2800
F 0 "#PWR5" H 2950 2550 50  0001 C CNN
F 1 "GND" H 2950 2650 50  0000 C CNN
F 2 "" H 2950 2800 50  0001 C CNN
F 3 "" H 2950 2800 50  0001 C CNN
	1    2950 2800
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__nfet_01v8_lvt SC2
U 1 1 6335A2F7
P 2600 4500
F 0 "SC2" H 2650 4800 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8_lvt" H 2900 4587 50  0000 R CNN
F 2 "" H 2600 3000 50  0001 C CNN
F 3 "" H 2600 4500 50  0001 C CNN
	1    2600 4500
	0    1    1    0   
$EndComp
$Comp
L sky130_fd_pr__nfet_01v8_lvt SC1
U 1 1 6335A51B
P 2100 5150
F 0 "SC1" H 2150 5450 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8_lvt" H 2400 5237 50  0000 R CNN
F 2 "" H 2100 3650 50  0001 C CNN
F 3 "" H 2100 5150 50  0001 C CNN
	1    2100 5150
	1    0    0    -1  
$EndComp
$Comp
L DC v3
U 1 1 6335A64D
P 1050 6150
F 0 "v3" H 850 6250 60  0000 C CNN
F 1 "DC" H 850 6100 60  0000 C CNN
F 2 "R1" H 750 6150 60  0000 C CNN
F 3 "" H 1050 6150 60  0000 C CNN
	1    1050 6150
	1    0    0    -1  
$EndComp
$Comp
L DC v2
U 1 1 6335A711
P 1050 4250
F 0 "v2" H 850 4350 60  0000 C CNN
F 1 "DC" H 850 4200 60  0000 C CNN
F 2 "R1" H 750 4250 60  0000 C CNN
F 3 "" H 1050 4250 60  0000 C CNN
	1    1050 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 6335A754
P 1050 4800
F 0 "#PWR2" H 1050 4550 50  0001 C CNN
F 1 "GND" H 1050 4650 50  0000 C CNN
F 2 "" H 1050 4800 50  0001 C CNN
F 3 "" H 1050 4800 50  0001 C CNN
	1    1050 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 6335A778
P 1050 6700
F 0 "#PWR3" H 1050 6450 50  0001 C CNN
F 1 "GND" H 1050 6550 50  0000 C CNN
F 2 "" H 1050 6700 50  0001 C CNN
F 3 "" H 1050 6700 50  0001 C CNN
	1    1050 6700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR4
U 1 1 6335AA80
P 2600 5250
F 0 "#PWR4" H 2600 5000 50  0001 C CNN
F 1 "GND" H 2600 5100 50  0000 C CNN
F 2 "" H 2600 5250 50  0001 C CNN
F 3 "" H 2600 5250 50  0001 C CNN
	1    2600 5250
	1    0    0    -1  
$EndComp
$Comp
L adc_bridge_2 U8
U 1 1 6335ADB3
P 4200 1650
F 0 "U8" H 4200 1650 60  0000 C CNN
F 1 "adc_bridge_2" H 4200 1800 60  0000 C CNN
F 2 "" H 4200 1650 60  0000 C CNN
F 3 "" H 4200 1650 60  0000 C CNN
	1    4200 1650
	-1   0    0    -1  
$EndComp
$Comp
L dac_bridge_1 U7
U 1 1 6335ADB9
P 3600 3850
F 0 "U7" H 3600 3850 60  0000 C CNN
F 1 "dac_bridge_1" H 3600 4000 60  0000 C CNN
F 2 "" H 3600 3850 60  0000 C CNN
F 3 "" H 3600 3850 60  0000 C CNN
	1    3600 3850
	0    1    1    0   
$EndComp
$Comp
L pulse v5
U 1 1 6335ADBF
P 4800 2250
F 0 "v5" H 4600 2350 60  0000 C CNN
F 1 "pulse" H 4600 2200 60  0000 C CNN
F 2 "R1" H 4500 2250 60  0000 C CNN
F 3 "" H 4800 2250 60  0000 C CNN
	1    4800 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR7
U 1 1 6335ADC5
P 4800 2800
F 0 "#PWR7" H 4800 2550 50  0001 C CNN
F 1 "GND" H 4800 2650 50  0000 C CNN
F 2 "" H 4800 2800 50  0001 C CNN
F 3 "" H 4800 2800 50  0001 C CNN
	1    4800 2800
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__nfet_01v8_lvt SC4
U 1 1 6335ADCB
P 4450 4500
F 0 "SC4" H 4500 4800 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8_lvt" H 4750 4587 50  0000 R CNN
F 2 "" H 4450 3000 50  0001 C CNN
F 3 "" H 4450 4500 50  0001 C CNN
	1    4450 4500
	0    1    1    0   
$EndComp
$Comp
L sky130_fd_pr__nfet_01v8_lvt SC3
U 1 1 6335ADD1
P 3950 5150
F 0 "SC3" H 4000 5450 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8_lvt" H 4250 5237 50  0000 R CNN
F 2 "" H 3950 3650 50  0001 C CNN
F 3 "" H 3950 5150 50  0001 C CNN
	1    3950 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 6335ADE0
P 4450 5250
F 0 "#PWR6" H 4450 5000 50  0001 C CNN
F 1 "GND" H 4450 5100 50  0000 C CNN
F 2 "" H 4450 5250 50  0001 C CNN
F 3 "" H 4450 5250 50  0001 C CNN
	1    4450 5250
	1    0    0    -1  
$EndComp
$Comp
L adc_bridge_2 U13
U 1 1 6335B40F
P 6050 1650
F 0 "U13" H 6050 1650 60  0000 C CNN
F 1 "adc_bridge_2" H 6050 1800 60  0000 C CNN
F 2 "" H 6050 1650 60  0000 C CNN
F 3 "" H 6050 1650 60  0000 C CNN
	1    6050 1650
	-1   0    0    -1  
$EndComp
$Comp
L dac_bridge_1 U11
U 1 1 6335B415
P 5450 3850
F 0 "U11" H 5450 3850 60  0000 C CNN
F 1 "dac_bridge_1" H 5450 4000 60  0000 C CNN
F 2 "" H 5450 3850 60  0000 C CNN
F 3 "" H 5450 3850 60  0000 C CNN
	1    5450 3850
	0    1    1    0   
$EndComp
$Comp
L pulse v6
U 1 1 6335B41B
P 6650 2250
F 0 "v6" H 6450 2350 60  0000 C CNN
F 1 "pulse" H 6450 2200 60  0000 C CNN
F 2 "R1" H 6350 2250 60  0000 C CNN
F 3 "" H 6650 2250 60  0000 C CNN
	1    6650 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR10
U 1 1 6335B421
P 6650 2800
F 0 "#PWR10" H 6650 2550 50  0001 C CNN
F 1 "GND" H 6650 2650 50  0000 C CNN
F 2 "" H 6650 2800 50  0001 C CNN
F 3 "" H 6650 2800 50  0001 C CNN
	1    6650 2800
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__nfet_01v8_lvt SC6
U 1 1 6335B427
P 6300 4500
F 0 "SC6" H 6350 4800 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8_lvt" H 6600 4587 50  0000 R CNN
F 2 "" H 6300 3000 50  0001 C CNN
F 3 "" H 6300 4500 50  0001 C CNN
	1    6300 4500
	0    1    1    0   
$EndComp
$Comp
L sky130_fd_pr__nfet_01v8_lvt SC5
U 1 1 6335B42D
P 5800 5150
F 0 "SC5" H 5850 5450 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8_lvt" H 6100 5237 50  0000 R CNN
F 2 "" H 5800 3650 50  0001 C CNN
F 3 "" H 5800 5150 50  0001 C CNN
	1    5800 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR9
U 1 1 6335B43C
P 6300 5250
F 0 "#PWR9" H 6300 5000 50  0001 C CNN
F 1 "GND" H 6300 5100 50  0000 C CNN
F 2 "" H 6300 5250 50  0001 C CNN
F 3 "" H 6300 5250 50  0001 C CNN
	1    6300 5250
	1    0    0    -1  
$EndComp
$Comp
L adc_bridge_2 U16
U 1 1 6335B44B
P 7900 1650
F 0 "U16" H 7900 1650 60  0000 C CNN
F 1 "adc_bridge_2" H 7900 1800 60  0000 C CNN
F 2 "" H 7900 1650 60  0000 C CNN
F 3 "" H 7900 1650 60  0000 C CNN
	1    7900 1650
	-1   0    0    -1  
$EndComp
$Comp
L dac_bridge_1 U15
U 1 1 6335B451
P 7300 3850
F 0 "U15" H 7300 3850 60  0000 C CNN
F 1 "dac_bridge_1" H 7300 4000 60  0000 C CNN
F 2 "" H 7300 3850 60  0000 C CNN
F 3 "" H 7300 3850 60  0000 C CNN
	1    7300 3850
	0    1    1    0   
$EndComp
$Comp
L pulse v7
U 1 1 6335B457
P 8500 2250
F 0 "v7" H 8300 2350 60  0000 C CNN
F 1 "pulse" H 8300 2200 60  0000 C CNN
F 2 "R1" H 8200 2250 60  0000 C CNN
F 3 "" H 8500 2250 60  0000 C CNN
	1    8500 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 6335B45D
P 8500 2800
F 0 "#PWR12" H 8500 2550 50  0001 C CNN
F 1 "GND" H 8500 2650 50  0000 C CNN
F 2 "" H 8500 2800 50  0001 C CNN
F 3 "" H 8500 2800 50  0001 C CNN
	1    8500 2800
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__nfet_01v8_lvt SC8
U 1 1 6335B463
P 8150 4500
F 0 "SC8" H 8200 4800 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8_lvt" H 8450 4587 50  0000 R CNN
F 2 "" H 8150 3000 50  0001 C CNN
F 3 "" H 8150 4500 50  0001 C CNN
	1    8150 4500
	0    1    1    0   
$EndComp
$Comp
L sky130_fd_pr__nfet_01v8_lvt SC7
U 1 1 6335B469
P 7650 5150
F 0 "SC7" H 7700 5450 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8_lvt" H 7950 5237 50  0000 R CNN
F 2 "" H 7650 3650 50  0001 C CNN
F 3 "" H 7650 5150 50  0001 C CNN
	1    7650 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR11
U 1 1 6335B478
P 8150 5250
F 0 "#PWR11" H 8150 5000 50  0001 C CNN
F 1 "GND" H 8150 5100 50  0000 C CNN
F 2 "" H 8150 5250 50  0001 C CNN
F 3 "" H 8150 5250 50  0001 C CNN
	1    8150 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5450 2300 5700
Wire Wire Line
	1050 5700 7850 5700
Wire Wire Line
	1800 5150 1800 4400
Wire Wire Line
	1800 3200 1800 3250
Wire Wire Line
	2300 4700 2300 4850
Wire Wire Line
	1050 4700 1050 4800
Wire Wire Line
	1800 1700 1800 1800
Wire Wire Line
	1800 1600 1700 1600
Wire Wire Line
	1700 1600 1700 1800
Wire Wire Line
	2950 1800 2950 1700
Wire Wire Line
	2950 2700 2950 2800
Wire Wire Line
	2200 5150 2600 5150
Wire Wire Line
	2600 4600 2600 5250
Connection ~ 2600 5150
Wire Wire Line
	1050 6600 1050 6700
Wire Wire Line
	4150 5700 4150 5450
Wire Wire Line
	3650 5150 3650 4400
Wire Wire Line
	3650 3200 3650 3250
Wire Wire Line
	4150 4700 4150 4850
Wire Wire Line
	3650 1700 3650 1800
Wire Wire Line
	3650 1600 3550 1600
Wire Wire Line
	3550 1600 3550 1800
Wire Wire Line
	4800 1800 4800 1700
Wire Wire Line
	4800 2700 4800 2800
Wire Wire Line
	4050 5150 4450 5150
Wire Wire Line
	4450 4600 4450 5250
Connection ~ 4450 5150
Wire Wire Line
	6000 5700 6000 5450
Wire Wire Line
	5500 5150 5500 4400
Wire Wire Line
	5500 3200 5500 3250
Wire Wire Line
	6000 4700 6000 4850
Wire Wire Line
	5500 1700 5500 1800
Wire Wire Line
	5500 1600 5400 1600
Wire Wire Line
	5400 1600 5400 1800
Wire Wire Line
	6650 1800 6650 1700
Wire Wire Line
	6650 2700 6650 2800
Wire Wire Line
	5900 5150 6300 5150
Wire Wire Line
	6300 4600 6300 5250
Connection ~ 6300 5150
Wire Wire Line
	7850 5700 7850 5450
Wire Wire Line
	7350 5150 7350 4400
Wire Wire Line
	7350 3200 7350 3250
Wire Wire Line
	7850 4700 7850 4850
Wire Wire Line
	7350 1700 7350 1800
Wire Wire Line
	7350 1600 7250 1600
Wire Wire Line
	7250 1600 7250 1800
Wire Wire Line
	8500 1800 8500 1700
Wire Wire Line
	8500 2700 8500 2800
Wire Wire Line
	7750 5150 8150 5150
Wire Wire Line
	8150 4600 8150 5250
Connection ~ 8150 5150
Connection ~ 2300 5700
Connection ~ 4150 5700
Connection ~ 6000 5700
Wire Wire Line
	1050 3800 8150 3800
Wire Wire Line
	2600 3800 2600 4200
Wire Wire Line
	4450 3800 4450 4200
Connection ~ 2600 3800
Wire Wire Line
	6300 3800 6300 4200
Connection ~ 4450 3800
Wire Wire Line
	8150 3800 8150 4200
Connection ~ 6300 3800
Wire Wire Line
	2900 4700 2900 6000
Wire Wire Line
	2900 6000 8450 6000
Wire Wire Line
	8450 6000 8450 4700
Wire Wire Line
	6600 4700 6600 6000
Connection ~ 6600 6000
Wire Wire Line
	4750 4700 4750 6000
Connection ~ 4750 6000
$Comp
L DC v1
U 1 1 6335BF00
P 1050 2100
F 0 "v1" H 850 2200 60  0000 C CNN
F 1 "DC" H 850 2050 60  0000 C CNN
F 2 "R1" H 750 2100 60  0000 C CNN
F 3 "" H 1050 2100 60  0000 C CNN
	1    1050 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 6335BF7A
P 1050 2700
F 0 "#PWR1" H 1050 2450 50  0001 C CNN
F 1 "GND" H 1050 2550 50  0000 C CNN
F 2 "" H 1050 2700 50  0001 C CNN
F 3 "" H 1050 2700 50  0001 C CNN
	1    1050 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 2700 1050 2550
Wire Wire Line
	1050 1650 1050 1350
Wire Wire Line
	1050 1350 8500 1350
Wire Wire Line
	2950 1350 2950 1600
Wire Wire Line
	4800 1350 4800 1600
Connection ~ 2950 1350
Wire Wire Line
	6650 1350 6650 1600
Connection ~ 4800 1350
Wire Wire Line
	8500 1350 8500 1600
Connection ~ 6650 1350
Text GLabel 3100 1750 2    60   Input ~ 0
b3
Text GLabel 5000 1750 2    60   Input ~ 0
b2
Text GLabel 6850 1750 2    60   Input ~ 0
b1
Text GLabel 8700 1750 2    60   Input ~ 0
b0
Wire Wire Line
	8700 1750 8500 1750
Connection ~ 8500 1750
Wire Wire Line
	6850 1750 6650 1750
Connection ~ 6650 1750
Wire Wire Line
	5000 1750 4800 1750
Connection ~ 4800 1750
Wire Wire Line
	3100 1750 2950 1750
Connection ~ 2950 1750
$Comp
L plot_v1 U5
U 1 1 6335D93A
P 3050 1400
F 0 "U5" H 3050 1900 60  0000 C CNN
F 1 "plot_v1" H 3250 1750 60  0000 C CNN
F 2 "" H 3050 1400 60  0000 C CNN
F 3 "" H 3050 1400 60  0000 C CNN
	1    3050 1400
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U9
U 1 1 6335DDC1
P 4900 1400
F 0 "U9" H 4900 1900 60  0000 C CNN
F 1 "plot_v1" H 5100 1750 60  0000 C CNN
F 2 "" H 4900 1400 60  0000 C CNN
F 3 "" H 4900 1400 60  0000 C CNN
	1    4900 1400
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U14
U 1 1 6335DE10
P 6750 1400
F 0 "U14" H 6750 1900 60  0000 C CNN
F 1 "plot_v1" H 6950 1750 60  0000 C CNN
F 2 "" H 6750 1400 60  0000 C CNN
F 3 "" H 6750 1400 60  0000 C CNN
	1    6750 1400
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U17
U 1 1 6335DE61
P 8600 1400
F 0 "U17" H 8600 1900 60  0000 C CNN
F 1 "plot_v1" H 8800 1750 60  0000 C CNN
F 2 "" H 8600 1400 60  0000 C CNN
F 3 "" H 8600 1400 60  0000 C CNN
	1    8600 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1200 8600 1750
Connection ~ 8600 1750
Wire Wire Line
	6750 1200 6750 1750
Connection ~ 6750 1750
Wire Wire Line
	4900 1200 4900 1750
Connection ~ 4900 1750
Wire Wire Line
	3050 1200 3050 1750
Connection ~ 3050 1750
$Comp
L plot_i2 U12
U 1 1 6335EF67
P 5450 6500
F 0 "U12" H 5450 6900 60  0000 C CNN
F 1 "plot_i2" H 5450 6600 60  0000 C CNN
F 2 "" H 5450 6500 60  0000 C CNN
F 3 "" H 5450 6500 60  0000 C CNN
	1    5450 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 6200 5700 6000
Connection ~ 5700 6000
$Comp
L GND #PWR8
U 1 1 6335F71A
P 5700 6950
F 0 "#PWR8" H 5700 6700 50  0001 C CNN
F 1 "GND" H 5700 6800 50  0000 C CNN
F 2 "" H 5700 6950 50  0001 C CNN
F 3 "" H 5700 6950 50  0001 C CNN
	1    5700 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 6800 5700 6950
Wire Notes Line
	2000 4400 3000 4400
Wire Notes Line
	3000 4400 3000 5500
Wire Notes Line
	3000 5500 2000 5500
Wire Notes Line
	2000 5500 2000 4400
Wire Notes Line
	3850 4400 4850 4400
Wire Notes Line
	4850 4400 4850 5500
Wire Notes Line
	4850 5500 3850 5500
Wire Notes Line
	3850 5500 3850 4400
Wire Notes Line
	5700 4400 6700 4400
Wire Notes Line
	6700 4400 6700 5500
Wire Notes Line
	6700 5500 5700 5500
Wire Notes Line
	5700 5500 5700 4400
Wire Notes Line
	7550 4400 8550 4400
Wire Notes Line
	8550 4400 8550 5500
Wire Notes Line
	8550 5500 7550 5500
Wire Notes Line
	7550 5500 7550 4400
Text Notes 2000 4400 0    60   ~ 0
W/L=8k
Text Notes 3850 4400 0    60   ~ 0
W/L=4k
Text Notes 5700 4400 0    60   ~ 0
W/L=2k
Text Notes 7550 4400 0    60   ~ 0
W/L=1k
Wire Notes Line
	1650 4250 8700 4250
Wire Notes Line
	8700 4250 8700 5850
Wire Notes Line
	8700 5850 1650 5850
Wire Notes Line
	1650 5850 1650 4250
Text Notes 5150 5900 0    60   ~ 0
ANALOG BLOCK
Wire Notes Line
	1400 1900 7700 1900
Wire Notes Line
	7700 1900 7700 3150
Wire Notes Line
	1400 3150 1400 1900
Text Notes 4200 3200 0    60   ~ 0
DIGITAL BLOCK
Wire Notes Line
	7700 3150 1400 3150
$Comp
L abhash_6tsram U1
U 1 1 6335C593
P -7050 -37200
F 0 "U1" H -4200 -35400 60  0000 C CNN
F 1 "abhash_6tsram" H -4200 -35200 60  0000 C CNN
F 2 "" H -4200 -35250 60  0000 C CNN
F 3 "" H -4200 -35250 60  0000 C CNN
	1    -7050 -37200
	1    0    0    -1  
$EndComp
$Comp
L abhash_6tsram U18
U 1 1 6335B6CD
P 5450 -350
F 0 "U18" H 8300 1450 60  0000 C CNN
F 1 "abhash_6tsram" H 8300 1650 60  0000 C CNN
F 2 "" H 8300 1600 60  0000 C CNN
F 3 "" H 8300 1600 60  0000 C CNN
	1    5450 -350
	0    1    1    0   
$EndComp
$Comp
L abhash_6tsram U10
U 1 1 6335BD08
P 3600 -350
F 0 "U10" H 6450 1450 60  0000 C CNN
F 1 "abhash_6tsram" H 6450 1650 60  0000 C CNN
F 2 "" H 6450 1600 60  0000 C CNN
F 3 "" H 6450 1600 60  0000 C CNN
	1    3600 -350
	0    1    1    0   
$EndComp
$Comp
L abhash_6tsram U6
U 1 1 6335BDCE
P 1750 -350
F 0 "U6" H 4600 1450 60  0000 C CNN
F 1 "abhash_6tsram" H 4600 1650 60  0000 C CNN
F 2 "" H 4600 1600 60  0000 C CNN
F 3 "" H 4600 1600 60  0000 C CNN
	1    1750 -350
	0    1    1    0   
$EndComp
$Comp
L abhash_6tsram U2
U 1 1 6335BE98
P -100 -350
F 0 "U2" H 2750 1450 60  0000 C CNN
F 1 "abhash_6tsram" H 2750 1650 60  0000 C CNN
F 2 "" H 2750 1600 60  0000 C CNN
F 3 "" H 2750 1600 60  0000 C CNN
	1    -100 -350
	0    1    1    0   
$EndComp
$Comp
L SKY130mode scmode1
U 1 1 6335D4DE
P 4300 6650
F 0 "scmode1" H 4300 6800 98  0000 C CNB
F 1 "SKY130mode" H 4300 6550 118 0000 C CNB
F 2 "" H 4300 6800 60  0001 C CNN
F 3 "" H 4300 6800 60  0001 C CNN
	1    4300 6650
	1    0    0    -1  
$EndComp
$EndSCHEMATC