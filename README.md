# 8T SRAM Based In Memory DAC for AI acceleration

## Contents
[Abstract](#abstract)<br>
[Keywords](#keywords)<br>
[Tools Used](#tools-used)<br>
i. [eSim](#i-esim)<br>
ii. [Makerchip](#ii-makerchip)<br>
[Skywater Open Source Process Design Kit](#skywater-open-source-process-design-kit)<br>
1. [Introduction](#1-introduction)<br>
2. [Proposed Circuit Design](#2-proposed-circuit-design)<br>
3. [Simulation Results](#3-simulation-results)<br>
   - 3.1. [Netlist](#31-netlist)<br>
   - 3.2. [Simulated Waveforms](#32-simulated-waveforms)<br>
4. [Acknowledgement](#acknowledgement)<br>
5. [References](#references)<br>


## Abstract
The present-day dominant von-Neumann based computing architecture involves separate computing and storage units where the data has to be continuously shuttled back and forth between physically separate memory and computing cores leading to the well-known memory-wall problem especially for data intensive application such as artificial intelligence (AI). Digital-to-analog conversion (DAC) and analog-to-digital conversion (ADC) is one of the frequently used operations to carry out AI/ML based algorithms inside any processing core. In this paper, we have presented an 8T SRAM based in-memory DAC to overcome the von- Neumann bottleneck.
<br>[🠉 Back to Top](#contents)

## Keywords
_Artificial Intelligence (AI), bottleneck, DAC, SRAM, von-Neumann_
<br>[🠉 Back to Top](#contents)

## Tools Used
### i. eSim 
[eSim](https://esim.fossee.in/home) (previously known as Oscad / FreeEDA) is a free/libre and open source EDA tool for circuit design, simulation, analysis and PCB design. It is an integrated tool built using free/libre and open source software such as [KiCad](http://www.kicad-pcb.org/), [Ngspice](http://ngspice.sourceforge.net/), [Verilator](https://www.veripool.org/verilator/), [makerchip-app](https://pypi.org/project/makerchip-app/), [sandpiper-saas](https://pypi.org/project/sandpiper-saas/) and [GHDL](http://ghdl.free.fr/). eSim is released under GPL.
![eSim](https://user-images.githubusercontent.com/100511409/157074547-e9c855cf-ddaa-41e1-a44f-8071950f172b.jpg)<br>
_Fig. 1. FOSSEE eSim software. (Source:[https://esim.fossee.in/home](https://esim.fossee.in/home))_<br>

### ii. Makerchip
[Makerchip](https://makerchip.com/) is tool designed by [Redwood EDA](https://www.redwoodeda.com/) for Open-source SystemVerilog/TL-Verilog development in your browser. Makerchip provides free and instant access to the latest tools directly from your browser and from your desktop. This includes open-source tools and proprietary ones. 
![Makerchip_Software](https://user-images.githubusercontent.com/100511409/193117567-784976ba-b100-4ad1-ad1f-3ad6f701bf04.png)<br>
_Fig. 2. Makerchip software for design verification. (Source: [https://makerchip.com/](https://makerchip.com/))_<br>
<br>[🠉 Back to Top](#contents)

## Skywater Open Source Process Design Kit
[A process design kit (PDK)](https://en.wikipedia.org/wiki/Process_design_kit) is a set of files used within the semiconductor industry to model a fabrication process for the design tools used to design an integrated circuit. The PDK is created by the foundry defining a certain technology variation for their processes. It is then passed to their customers to use in the design process.<br><br>
The [SkyWater Open Source PDK](https://github.com/google/skywater-pdk) is a collaboration between Google and SkyWater Technology Foundry to provide a fully open source Process Design Kit and related resources, which can be used to create manufacturable designs at SkyWater’s facility. The SkyWater Open Source PDK documentation can be found at: [https://skywater-pdk.rtfd.io/](https://skywater-pdk.rtfd.io/) <br><br>
The latest SkyWater SKY130 PDK design resources can be downloaded from the following repositories:
1. [On Github @ google/skywater-pdk](https://github.com/google/skywater-pdk)
2. [Google CodeSearch interface @ https://cs.opensource.google/skywater-pdk](https://cs.opensource.google/skywater-pdk)
3. [foss-eda-tools.googlesource.com/skywater-pdk](https://foss-eda-tools.googlesource.com/skywater-pdk/)

## 1. Introduction
ost of the recent day processors works on von-Neumann architecture <sup>[1](#references)</sup> where the program and data units are separately spatially, i.e., stored at different locations on the chip. This significantly increases delay and energy consumption due to frequent to and fro data transfer between these two cores, especially in case of data intensive applications such as in AI/ML. By facilitating computations within memory, both energy efficiency and throughput are expected to improve manifolds <sup>[2](#references)</sup>. AI/ML operations are often preferred in analog domain to avoid complexity but digital world offers many advantages over analog world, such as ease of storage, processing etc. So, in this work, we will present an in-memory DAC inside 8T SRAM cell for AI acceleration. 
<br>[🠉 Back to Top](#contents)

## 2. Proposed Circuit Design
An 8T-SRAM, without modifying its basic circuit structure, can behave as a digital to analog converter (DAC), without affecting the bits stored in the SRAM cell. Consider an array of 4 cells connected as shown in Fig. 3. Under normal memory operations, the source terminal of SC1 (and also SC3, SC5, SC7) is grounded but for DAC operation SLs (source lines) of same row are all connected to _vin_ (voltage source V3 in Fig. 3). Thus, the current flowing through each column is proportional to their common _vin_, and also to the conductance of transistors in each of these columns respectively <sup>[3](#references)</sup>, i.e.,

$$I ∝ G...(1)$$

When logic ‘1’ is stored in memory cell, conductance of M1 is significant, but when logic ‘0’ is stored in memory cell, the conductance of M1 is almost zero. Further, the conductance (𝐺) depends on directly on (W/L) ratio of mosfet, i.e.,

$$G ∝ (W/L)...(2)$$

Hence, properly sizing the (W/L) ratios of mosfets in each column we can obtained our proposed DAC as discussed below.<br>
Now consider that the ratio of (W/L) of mosfets used in column 1 through 4 is 8: 4: 2: 1 as shown in Fig. 3, i.e.,

$$ \left( \frac{W}{L} \right)_{SC1,SC2} = 2^3×k ... (3.1) $$

for mosfet SC1, SC2 (in Fig. 3);

$$ \left( \frac{W}{L} \right)_{SC3,SC4} = 2^2×k ... (3.2) $$

for mosfet SC3, SC4 (in Fig. 3);

$$ \left( \frac{W}{L} \right)_{SC5,SC6} = 2^1×k ... (3.3) $$

for mosfet SC5, SC6 (in Fig. 3);

$$ \left( \frac{W}{L} \right)_{SC7,SC8} = 2^0×k ... (3.4) $$

for mosfet SC7, SC8 (in Fig. 3);

where $k$ is any constant. Hence, equation (1), (2), and (3); the total current $I$ can be given as:

$$I ∝ (2^3b_3+2^2b_2+2^1b_1+2^0b_0)=w$$

where, ${w=(2^3b_3+2^2b_2+2^1b_1+2^0b_0)}$ is analog equivalent of digital weight ${\left(b_3,b_2,b_1,b_0\right)}$ stored in SRAM cell.
![InMemDAC_Schematic - Copy](https://user-images.githubusercontent.com/100511409/193133083-0f52623a-597d-4f1d-85cc-f7767a2e8262.jpg)<br>
_Fig. 3. Schematic of in-memory DAC designed on KiCad integrated with eSim._<br>
<br>[🠉 Back to Top](#contents)

## 3. Simulation Results
First, the 6T SRAM were designed and simulated using the verilog HDL on makerchip plugin integrated in eSim as shown in Fig. 4 and Fig. 5 below. The 6T SRAM design contains input data line-- din (data-in), control line-- wen (write-enable) and output line-- q (cell output) as can be observed from verilog code below.
```
module abhash_6tsram(din,wen,q);
input din, wen; //din->input data; wen->word line enable
output reg q;
always @(din, wen) begin
	if(wen==1'b1)
		q=din;
end
endmodule
```
The same code as above were loaded in makerchip plugin integrated in eSim as shown below in Fig. 4 and further verified in makerchip web application as demonstrated in Fig. 5 below.
![Makerchip_Tab_esim](https://user-images.githubusercontent.com/100511409/193119722-91285f23-c9db-423c-b936-9dacb2d0dce2.png)<br>
_Fig. 4. Loading of top module verilog file in makerchip integrated in eSim._<br><br>
![Abhash_6TSRAM_Simulation](https://user-images.githubusercontent.com/100511409/193119836-ed39ed38-7811-47d0-84f5-28ef577d49ab.png)<br>
_Fig. 5. Logic verification of 6T SRAM cell in makerchip._<br><br>

Next, the user defined digital library of the 6T SRAM cell along with its symbol were created by clicking on __Run Verilog to NgSpice Converter__ in the ngveri tab which combines the features of NgSpice and Verilator to support mixed-mode simulation as shown below in Fig. 6. After running __Verilog to NgSpice Converter__, the verilog models can be seen to be added in KiCad library. The same 6T SRAM model were then imported in KiCad schematic editor (see Fig. 7(a) below) and then rest of the circuit were designed as shown in Fig. 3 using skywater 130nm PDK (see Fig. 7(b)). The ratio of (W/L) of transistors corresponding to columns storing bits- b3, b2, b1, b0 respectively, were kept in the ratio 8:4:2:1 as discussed earlier. 
![Ngveri_Tab_esim - Copy](https://user-images.githubusercontent.com/100511409/193122402-e8f0ad86-6dad-4a99-a479-e642f9d88443.png)<br>
_Fig. 6.(a) Verilog to NgSpice Converter. (b) 6T SRAM model added to KiCad library._<br><br>
![KiCad](https://user-images.githubusercontent.com/100511409/193123880-3cb4e9ac-0129-444e-b2cd-32381e06b0a7.png)<br>
_Fig. 7. (a) Adding 6T SRAM model, (b) skywater 130nm pdk based mosfet to the KiCad schematic._<br><br>

### 3.1. Netlist
```
* /home/abhash2205/esim-workspace/inmemdac/inmemdac.cir

.include "/usr/share/local/sky130_fd_pr/models/sky130_fd_pr__model__r+c.model.spice"
.include "/usr/share/local/sky130_fd_pr/models/sky130_fd_pr__model__pnp.model.spice"
.lib "/usr/share/local/sky130_fd_pr/models/sky130.lib.spice" tt
.include "/usr/share/local/sky130_fd_pr/models/sky130_fd_pr__model__linear.model.spice"
.include "/usr/share/local/sky130_fd_pr/models/sky130_fd_pr__model__diode_pd2nw_11v0.model.spice"
.include "/usr/share/local/sky130_fd_pr/models/sky130_fd_pr__model__diode_pw2nd_11v0.model.spice"
.include "/usr/share/local/sky130_fd_pr/models/sky130_fd_pr__model__inductors.model.spice"
* u4  net-_u13-pad1_ b3 net-_u2-pad2_ net-_u2-pad1_ adc_bridge_2
* u3  net-_u2-pad3_ net-_sc1-pad2_ dac_bridge_1
v4  b3 gnd pulse(0 1.8 8 0.01 0.01 8 16)
xsc2 net-_sc2-pad1_ net-_sc2-pad2_ net-_sc1-pad1_ gnd sky130_fd_pr__nfet_01v8_lvt W=8
xsc1 net-_sc1-pad1_ net-_sc1-pad2_ net-_sc1-pad3_ gnd sky130_fd_pr__nfet_01v8_lvt W=8
v3 net-_sc1-pad3_ gnd  dc 1
v2 net-_sc2-pad2_ gnd  dc 1.8
* u8  net-_u13-pad1_ b2 net-_u6-pad2_ net-_u6-pad1_ adc_bridge_2
* u7  net-_u6-pad3_ net-_sc3-pad2_ dac_bridge_1
v5  b2 gnd pulse(0 1.8 4 0.01 0.01 4 8)
xsc4 net-_sc2-pad1_ net-_sc2-pad2_ net-_sc3-pad1_ gnd sky130_fd_pr__nfet_01v8_lvt W=4
xsc3 net-_sc3-pad1_ net-_sc3-pad2_ net-_sc1-pad3_ gnd sky130_fd_pr__nfet_01v8_lvt W=4
* u13  net-_u13-pad1_ b1 net-_u10-pad2_ net-_u10-pad1_ adc_bridge_2
* u11  net-_u10-pad3_ net-_sc5-pad2_ dac_bridge_1
v6  b1 gnd pulse(0 1.8 2 0.01 0.01 2 4)
xsc6 net-_sc2-pad1_ net-_sc2-pad2_ net-_sc5-pad1_ gnd sky130_fd_pr__nfet_01v8_lvt W=2
xsc5 net-_sc5-pad1_ net-_sc5-pad2_ net-_sc1-pad3_ gnd sky130_fd_pr__nfet_01v8_lvt W=2
* u16  net-_u13-pad1_ b0 net-_u16-pad3_ net-_u16-pad4_ adc_bridge_2
* u15  net-_u15-pad1_ net-_sc7-pad2_ dac_bridge_1
v7  b0 gnd pulse(0 1.8 1 0.01 0.01 1 2)
xsc8 net-_sc2-pad1_ net-_sc2-pad2_ net-_sc7-pad1_ gnd sky130_fd_pr__nfet_01v8_lvt W=1
xsc7 net-_sc7-pad1_ net-_sc7-pad2_ net-_sc1-pad3_ gnd sky130_fd_pr__nfet_01v8_lvt W=1
v1 net-_u13-pad1_ gnd  dc 1.8
* u5  b3 plot_v1
* u9  b2 plot_v1
* u14  b1 plot_v1
* u17  b0 plot_v1
* u12  net-_sc2-pad1_ gnd plot_i2
* u1  ? ? ? abhash_6tsram
* u18  net-_u16-pad4_ net-_u16-pad3_ net-_u15-pad1_ abhash_6tsram
* u10  net-_u10-pad1_ net-_u10-pad2_ net-_u10-pad3_ abhash_6tsram
* u6  net-_u6-pad1_ net-_u6-pad2_ net-_u6-pad3_ abhash_6tsram
* u2  net-_u2-pad1_ net-_u2-pad2_ net-_u2-pad3_ abhash_6tsram
* s c m o d e
a1 [net-_u13-pad1_ b3 ] [net-_u2-pad2_ net-_u2-pad1_ ] u4
a2 [net-_u2-pad3_ ] [net-_sc1-pad2_ ] u3
a3 [net-_u13-pad1_ b2 ] [net-_u6-pad2_ net-_u6-pad1_ ] u8
a4 [net-_u6-pad3_ ] [net-_sc3-pad2_ ] u7
a5 [net-_u13-pad1_ b1 ] [net-_u10-pad2_ net-_u10-pad1_ ] u13
a6 [net-_u10-pad3_ ] [net-_sc5-pad2_ ] u11
a7 [net-_u13-pad1_ b0 ] [net-_u16-pad3_ net-_u16-pad4_ ] u16
a8 [net-_u15-pad1_ ] [net-_sc7-pad2_ ] u15
v_u12 net-_sc2-pad1_ gnd 0
a9 [? ] [? ] [? ] u1
a10 [net-_u16-pad4_ ] [net-_u16-pad3_ ] [net-_u15-pad1_ ] u18
a11 [net-_u10-pad1_ ] [net-_u10-pad2_ ] [net-_u10-pad3_ ] u10
a12 [net-_u6-pad1_ ] [net-_u6-pad2_ ] [net-_u6-pad3_ ] u6
a13 [net-_u2-pad1_ ] [net-_u2-pad2_ ] [net-_u2-pad3_ ] u2
* Schematic Name:                             adc_bridge_2, NgSpice Name: adc_bridge
.model u4 adc_bridge(in_low=0 in_high=1.8 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
* Schematic Name:                             dac_bridge_1, NgSpice Name: dac_bridge
.model u3 dac_bridge(out_low=0 out_high=1.8 out_undef=0.5 input_load=1.0e-12 t_rise=1.0e-9 t_fall=1.0e-9 ) 
* Schematic Name:                             adc_bridge_2, NgSpice Name: adc_bridge
.model u8 adc_bridge(in_low=0 in_high=1.8 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
* Schematic Name:                             dac_bridge_1, NgSpice Name: dac_bridge
.model u7 dac_bridge(out_low=0 out_high=1.8 out_undef=0.5 input_load=1.0e-12 t_rise=1.0e-9 t_fall=1.0e-9 ) 
* Schematic Name:                             adc_bridge_2, NgSpice Name: adc_bridge
.model u13 adc_bridge(in_low=0 in_high=1.8 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
* Schematic Name:                             dac_bridge_1, NgSpice Name: dac_bridge
.model u11 dac_bridge(out_low=0 out_high=1.8 out_undef=0.5 input_load=1.0e-12 t_rise=1.0e-9 t_fall=1.0e-9 ) 
* Schematic Name:                             adc_bridge_2, NgSpice Name: adc_bridge
.model u16 adc_bridge(in_low=0 in_high=1.8 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
* Schematic Name:                             dac_bridge_1, NgSpice Name: dac_bridge
.model u15 dac_bridge(out_low=0 out_high=1.8 out_undef=0.5 input_load=1.0e-12 t_rise=1.0e-9 t_fall=1.0e-9 ) 
* Schematic Name:                             abhash_6tsram, NgSpice Name: abhash_6tsram
.model u1 abhash_6tsram(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 
* Schematic Name:                             abhash_6tsram, NgSpice Name: abhash_6tsram
.model u18 abhash_6tsram(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 
* Schematic Name:                             abhash_6tsram, NgSpice Name: abhash_6tsram
.model u10 abhash_6tsram(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 
* Schematic Name:                             abhash_6tsram, NgSpice Name: abhash_6tsram
.model u6 abhash_6tsram(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 
* Schematic Name:                             abhash_6tsram, NgSpice Name: abhash_6tsram
.model u2 abhash_6tsram(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 
.tran 0.01e-00 16e-00 0e-00

* Control Statements 
.control
run
print allv > plot_data_v.txt
print alli > plot_data_i.txt
plot v(b3) v(b2)+6 v(b1)+12 v(b0)+18
plot i(v_u12)
.endc
.end
```

### 3.2. Simulated Waveforms
Fig. 8 below demonstrates the expected output generated via [LTSpice](https://www.analog.com/en/design-center/design-tools-and-calculators/ltspice-simulator.html) which is similar to the staircase waveform typical to the digital to analog converter.
Fig. 9 below demonstrates the simulated output of eSim. Thus, the simulated results establishes the successful simulation of the in-memory SRAM based DAC.

![Fig2a](https://user-images.githubusercontent.com/100511409/193140889-4aaf0066-5b2f-4954-9aba-75aff7a6eace.png)<br>
_Fig. 8. Simulated output on __LTSpice__ (using 45nm [PTM technology](https://ptm.asu.edu/)) showing (a) digital 4-bit data_ ${b_3b_2b_1b_0}$ _stored in SRAM cell, (b) output current (obtained from __LTSpice__) proportional to the analog equivalent of weight w stored within SRAM._<br><br>
![Final_Simulated_Output](https://user-images.githubusercontent.com/100511409/193124309-ae743365-519b-4f69-84b4-23610a8c0350.png)<br>
_Fig. 9. Simulated output on __eSim__ (using [sky130nm pdk](https://github.com/google/skywater-pdk))showing (a) digital 4-bit data_ ${b_3b_2b_1b_0}$ _stored in SRAM cell, and (b) staircase output current which is typical to the digital to analog convertor (DAC)._<br>
<br>[🠉 Back to Top](#contents)

## Acknowledgement
[Mixed Signal SoC design Marathon using eSim & SKY130](https://hackathon.fossee.in/esim/) conducted by: <br>
[Indian Institute of Technology Bombay](https://www.iitb.ac.in/); <br>
[Google](https://www.google.co.in/)<br>
[FOSSEE](https://fossee.in/); <br>
[Spoken Tutorial](https://spoken-tutorial.org/); <br>
[VLSI System Design](https://www.vlsisystemdesign.com/); <br>
[Chips to Startup Programme](https://www.c2s.gov.in/) <br><br>
Special Thanks to:<br>
Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd.; <br>
Sumanto Kar, IIT Bombay
<br>[🠉 Back to Top](#contents)

## References
[1] J. Von Neumann, The computer and the brain. Yale University Press, 2012.<br>
[2] S. Jeloka, N. B. Akesh, D. Sylvester, and D. Blaauw, “A 28nm configurable memory using push-rule 6T bit cell enabling logic-in-memory”, IEEE J. Solid-State Circuits, vol. 51, no. 4. Pp. 1009-1021, Apr. 2016.<br>
[3] A. Jaiswal, I. Chakraborty, A. Agrawal and K. Roy, "8T SRAM Cell as a Multibit Dot-Product Engine for Beyond Von Neumann Computing," in IEEE Transactions on Very Large Scale Integration (VLSI) Systems, vol. 27, no. 11, pp. 2556-2567, Nov. 2019
<br>[🠉 Back to Top](#contents)
