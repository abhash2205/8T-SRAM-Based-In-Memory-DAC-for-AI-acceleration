# In-Memory-DAC-Operations-Inside-8T-SRAM-Cells
## Contents
[Abstract](#abstract)<br>
[Keywords](#keywords)<br>
[Tools Used](#tools-used)<br>
1. [Introduction](#1-introduction)<br>
2. [8T SRAM Cell For In-Memory DAC](#2-8t-sram-cell-for-in-memory-dac)<br>
3. [Simulation Results](#3-simulation-results)<br>
   - 3.1. [Netlist](#31-netlist)<br>
   - 3.2. [Simulated Waveforms](#32-simulated-waveforms)<br>
4. [Acknowledgement](#acknowledgement)<br>
5. [References](#references)<br>
## Abstract
The von-Neumann computing methodology dominates most of the today's processor architecture. In such architecture, program and data are decoupled from each other leading to massive latency as well as energy consumption due to frequent shuttling back and forth of data between physically separate memory and computing cores also known as bottleneck. Digital to analog convertor (DAC) is one of the frequently used block inside any processing core which needs to interface analog and digital world. In this paper, we will design an 8T SRAM based in-memory DAC convertor to overcome the von-Neumann bottleneck.
<br>[🠉 Back to Top](#contents)
## Keywords
bottleneck, DAC, SRAM, von-Neumann
<br>[🠉 Back to Top](#contents)
## Tools Used
[eSim](https://esim.fossee.in/home) (previously known as Oscad / FreeEDA) is a free/libre and open source EDA tool for circuit design, simulation, analysis and PCB design. It is an integrated tool built using free/libre and open source software such as [KiCad](http://www.kicad-pcb.org/), [Ngspice](http://ngspice.sourceforge.net/), [Verilator](https://www.veripool.org/verilator/), [makerchip-app](https://pypi.org/project/makerchip-app/), [sandpiper-saas](https://pypi.org/project/sandpiper-saas/) and [GHDL](http://ghdl.free.fr/). eSim is released under GPL.
![eSim](https://user-images.githubusercontent.com/100511409/157074547-e9c855cf-ddaa-41e1-a44f-8071950f172b.jpg)<br>
_Fig. 1. FOSSEE eSim software._<br>
<br>[🠉 Back to Top](#contents)
## 1. Introduction
Most of the recent day processors works on von-Neumann architecture<sup>[1](#references)</sup>. In von-Neumann architecture program and data units are spatially, separately stored at different locations on the chip, leads to significantly high delay and energy consumption due to frequent data transfer between physically separated memory and computing cores. This problem is further exacerbated for data intensive applications such as in AI/ML, DSP processors, etc. By enabling computations within memory, significant improvements, both in energy efficiency and throughput are expected<sup>[2](#references)</sup>. Digital to analog convertor (DAC) is a key block to these applications to interface analog signal with digital processors/algorithms. So, in this work, we will design an in-memory DAC inside 8T SRAM cell.
<br>[🠉 Back to Top](#contents)
## 2. 8T SRAM Cell For In-Memory DAC
An 8T-SRAM, without modifying its basic circuit structure, can behave as a digital to analog converter (DAC), without affecting the bits stored in the SRAM cell. Consider an array of 4 cells connected as shown in Fig. 2. Under normal memory operations, the source terminal of M1 (and also M3, M5, M29) is grounded but for DAC operation SLs (source lines) of same row are all connected to _vin_. Thus, the current flowing through each column is proportional to their common _vin_, and also to the conductance of transistors in each of these columns respectively as shown in Fig. 2. e.g., when logic ‘1’ is stored in memory cell of first column, conductance of M1 is very high but when logic ‘0’ is stored in memory cell, the conductance of M1 is almost negligible, i.e., it does not conducts at all. Another parameter on which current will depend are (W/L) ratio of mosfet M1 and M2 present in first column. It is well known that current through enhancement mosfet is directly proportional to its (W/L) ratio. Hence, properly sizing the (W/L) ratios of mosfet M1 and M2 in each column we can obtained our proposed digital to analog converter.<br>
For our proposed structure of 8T-SRAM array cells, current _I_ will be sum of currents through RBL of each cell. Now consider that the ratio of (W/L) of mosfet M1 and M2 used in column 1 through 4 is 8: 4: 2: 1 as shown in Fig. 2 (we will keep the sizes of mosfet same in each column). Hence, their conductance will be in the same ratio, since conductance will be directly proportional to (W/L) ratio. This will generate output current _I_, which will be proportional to the analog equivalent of digital bits stored inside SRAM. _I_ = _K_(2<sup>3</sup>b<sub>3</sub>+2<sup>2</sup>b<sub>2</sub>+2<sup>1</sup>b<sub>1</sub>+2<sup>0</sup>b<sub>0</sub>), where _K_ is some constant.
![SchematicCopy](https://user-images.githubusercontent.com/100511409/157194852-9e208f08-fd22-4a21-878f-3921f349becb.jpg)<br>
_Fig. 2. Schematic of in-memory DAC. The designing of 6TSRAM in makerchip is discussed in upcoming sections._<br>
<br>[🠉 Back to Top](#contents)
## 3. Simulation Results
First, the 6T SRAM were designed and simulated using the verilog HDL on makerchip plugin integrated in eSim as shown in Fig. 3 and Fig. 4 below. The 6T SRAM design contains input data line-- din (data-in), control line-- wen (write-enable) and output line-- q (cell output) as can be observed from verilog file.
![eSim_MakerChip](https://user-images.githubusercontent.com/100511409/157078390-9bc3a44d-3d9d-4aad-866b-332e63c5d125.PNG)<br>
_Fig. 3. Loading of top module verilog file in makerchip integrated in eSim._<br><br>
![MakerChip](https://user-images.githubusercontent.com/100511409/157078492-f89c1abb-96ec-4936-8819-355aac9db590.PNG)<br>
_Fig. 4. Logic verification of 6T SRAM cell in makerchip._<br><br>
The verilog code of 6T SRAM cell is shown below:
```
module sram6T(din, wen, q);
input din, wen;
output reg q;
always @(din, wen) begin
    if(wen == 1) q = din;
end
endmodule
```
Next, the symbol of the 6T SRAM cell were created by clicking on __Run Verilog to NgSpice Converter__ in the ngveri tab which combines the features of NgSpice and Verilator to support mixed-mode simulation as shown below in Fig. 5. The same symbol were then imported in KiCad schematic editor and then rest of the circuit were designed as shown in Fig. 2. The ratio of (W/L) of transistors corresponding to columns storing bits- b0, b1, b2, b3 respectively, were kept in the ratio 8:4:2:1 as discussed earlier. Then, the netlist were generated followed by editing of  component values such as-- power sources, mosfet models, etc. as shown in Fig. 6 below. Finally, the final output netlist were generated which were simulated whose ouput is presented in next subsection.
![Symbol](https://user-images.githubusercontent.com/100511409/157192516-e410cbd1-a7e5-453d-a8de-d04255a8829a.png)<br>
_Fig. 5.(a) Verilog to NgSpice Converter. (b) 6T SRAM symbol created in eSim._
![eSim_Ki2Ng](https://user-images.githubusercontent.com/100511409/157082068-5bcb919b-ce6c-4556-8930-5a0db62c3efe.PNG)<br>
_Fig. 6. Editing mosfet models, (W/L) ratio and other component values._<br>
### 3.1. Netlist
```
* c:\users\ece-80\documents\iitb_hackathon\inmemdac\inmemdac.cir

.include NMOS-5um.lib
* u7  net-_u5-pad4_ net-_u5-pad3_ net-_u4-pad1_ sram6t
* u11  net-_u11-pad1_ net-_u11-pad2_ net-_u11-pad3_ sram6t
* u15  net-_u13-pad4_ net-_u13-pad3_ net-_u12-pad1_ sram6t
* u20  net-_u17-pad4_ net-_u17-pad3_ net-_u16-pad1_ sram6t
m29 net-_m29-pad1_ net-_m29-pad2_ vin gnd mos_n W=5u L=5u M=1
m30 /i_out rwl net-_m29-pad1_ gnd mos_n W=5u L=5u M=1
* u5  wen b3 net-_u5-pad3_ net-_u5-pad4_ adc_bridge_2
* u9  wen b2 net-_u11-pad2_ net-_u11-pad1_ adc_bridge_2
* u13  wen b1 net-_u13-pad3_ net-_u13-pad4_ adc_bridge_2
* u17  wen b0 net-_u17-pad3_ net-_u17-pad4_ adc_bridge_2
* u4  net-_u4-pad1_ net-_m1-pad2_ dac_bridge_1
* u8  net-_u11-pad3_ net-_m3-pad2_ dac_bridge_1
* u16  net-_u16-pad1_ net-_m29-pad2_ dac_bridge_1
v4  b3 gnd pulse(0 5 8 0.01 0.01 8 16)
v5  b2 gnd pulse(0 5 4 0.01 0.01 4 8)
v6  b1 gnd pulse(0 5 2 0.01 0.01 2 4)
v7  b0 gnd pulse(0 5 1 0.01 0.01 1 2)
v3 rwl gnd  dc 5
* u6  b3 plot_v1
* u10  b2 plot_v1
* u14  b1 plot_v1
* u19  b0 plot_v1
* u3  wen plot_v1
v1 wen gnd  dc 5
v2 vin gnd  dc 5
* u2  rwl plot_v1
* u1  vin plot_v1
* u12  net-_u12-pad1_ net-_m5-pad2_ dac_bridge_1
m5 net-_m5-pad1_ net-_m5-pad2_ vin gnd mos_n W=10u L=5u M=1
m6 /i_out rwl net-_m5-pad1_ gnd mos_n W=10u L=5u M=1
m3 net-_m3-pad1_ net-_m3-pad2_ vin gnd mos_n W=20u L=5u M=1
m4 /i_out rwl net-_m3-pad1_ gnd mos_n W=20u L=5u M=1
m1 net-_m1-pad1_ net-_m1-pad2_ vin gnd mos_n W=40u L=5u M=1
m2 /i_out rwl net-_m1-pad1_ gnd mos_n W=40u L=5u M=1
* u18  /i_out gnd plot_i2
a1 [net-_u5-pad4_ ] [net-_u5-pad3_ ] [net-_u4-pad1_ ] u7
a2 [net-_u11-pad1_ ] [net-_u11-pad2_ ] [net-_u11-pad3_ ] u11
a3 [net-_u13-pad4_ ] [net-_u13-pad3_ ] [net-_u12-pad1_ ] u15
a4 [net-_u17-pad4_ ] [net-_u17-pad3_ ] [net-_u16-pad1_ ] u20
a5 [wen b3 ] [net-_u5-pad3_ net-_u5-pad4_ ] u5
a6 [wen b2 ] [net-_u11-pad2_ net-_u11-pad1_ ] u9
a7 [wen b1 ] [net-_u13-pad3_ net-_u13-pad4_ ] u13
a8 [wen b0 ] [net-_u17-pad3_ net-_u17-pad4_ ] u17
a9 [net-_u4-pad1_ ] [net-_m1-pad2_ ] u4
a10 [net-_u11-pad3_ ] [net-_m3-pad2_ ] u8
a11 [net-_u16-pad1_ ] [net-_m29-pad2_ ] u16
a12 [net-_u12-pad1_ ] [net-_m5-pad2_ ] u12
v_u18 /i_out gnd 0
* Schematic Name:                             sram6t, NgSpice Name: sram6t
.model u7 sram6t(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 
* Schematic Name:                             sram6t, NgSpice Name: sram6t
.model u11 sram6t(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 
* Schematic Name:                             sram6t, NgSpice Name: sram6t
.model u15 sram6t(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 
* Schematic Name:                             sram6t, NgSpice Name: sram6t
.model u20 sram6t(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 
* Schematic Name:                             adc_bridge_2, NgSpice Name: adc_bridge
.model u5 adc_bridge(in_low=0 in_high=5 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
* Schematic Name:                             adc_bridge_2, NgSpice Name: adc_bridge
.model u9 adc_bridge(in_low=0 in_high=5 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
* Schematic Name:                             adc_bridge_2, NgSpice Name: adc_bridge
.model u13 adc_bridge(in_low=0 in_high=5 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
* Schematic Name:                             adc_bridge_2, NgSpice Name: adc_bridge
.model u17 adc_bridge(in_low=0 in_high=5 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
* Schematic Name:                             dac_bridge_1, NgSpice Name: dac_bridge
.model u4 dac_bridge(out_low=0 out_high=5 out_undef=0.5 input_load=1.0e-12 t_rise=1.0e-9 t_fall=1.0e-9 ) 
* Schematic Name:                             dac_bridge_1, NgSpice Name: dac_bridge
.model u8 dac_bridge(out_low=0 out_high=5 out_undef=0.5 input_load=1.0e-12 t_rise=1.0e-9 t_fall=1.0e-9 ) 
* Schematic Name:                             dac_bridge_1, NgSpice Name: dac_bridge
.model u16 dac_bridge(out_low=0 out_high=5 out_undef=0.5 input_load=1.0e-12 t_rise=1.0e-9 t_fall=1.0e-9 ) 
* Schematic Name:                             dac_bridge_1, NgSpice Name: dac_bridge
.model u12 dac_bridge(out_low=0 out_high=5 out_undef=0.5 input_load=1.0e-12 t_rise=1.0e-9 t_fall=1.0e-9 ) 
.tran 0.01e-00 16e-00 0e-00

* Control Statements 
.control
run
print allv > plot_data_v.txt
print alli > plot_data_i.txt
plot v(wen) v(rwl)+6 v(vin)+12 v(b3)+18 v(b2)+24 v(b1)+30 v(b0)+36 
plot i(v_u18)
.endc
.end
```
### 3.2. Simulated Waveforms
Fig. 7 below demonstrates the simulated output which is similar to the staircase waveform typical to the digital to analog converter. Thus, the simulated results establishes the successful simulation of the in-memory SRAM based DAC.
![DAC_OP](https://user-images.githubusercontent.com/100511409/157084038-f47e199b-4eff-4134-8fd1-f114c47bcd14.png)<br>
_Fig. 7. Simulated output showing (a) inputs signal to the circuit, and (b) staircase output current which is typical to the digital to analog convertor (DAC)._<br>
<br>[🠉 Back to Top](#contents)
## Acknowledgement
[Mixed Signal Circuit Design and Simulation Marathon using eSim](https://hackathon.fossee.in/esim/) conducted by: <br>
[Indian Institute of Technology Bombay](https://www.iitb.ac.in/); <br>
[FOSSEE](https://fossee.in/); <br>
[Spoken Tutorial](https://spoken-tutorial.org/); <br>
[VLSI System Design](https://www.vlsisystemdesign.com/); <br>
[Red Wood EDA](https://www.redwoodeda.com/); <br>
[Chips to Startup Programme](https://www.c2s.gov.in/) <br><br>
Special Thanks to:<br>
Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd.; <br>
Sumanto Kar, IIT Bombay
<br>[🠉 Back to Top](#contents)
## References
[1] J. Von Neumann, The computer and the brain. Yale University Press, 2012.<br>
[2] S. Jeloka, N. B. Akesh, D. Sylvester, and D. Blaauw, “A 28nm configurable memory using push-rule 6T bit cell enabling logic-in-memory”, IEEE J. Solid-State Circuits, vol. 51, no. 4. Pp. 1009-1021, Apr. 2016.
<br>[🠉 Back to Top](#contents)
