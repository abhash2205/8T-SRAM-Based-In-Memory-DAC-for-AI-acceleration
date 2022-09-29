# SRAM Based In Memory DAC for AI acceleration

## Contents
[Abstract](#abstract)<br>
[Keywords](#keywords)<br>
[Tools Used](#tools-used)<br>
A. [eSim](#a-esim)<br>
B. [Makerchip](#b-makerchip)<br>
[Skywater Open Source Process Design Kit](#skywater-open-source-process-design-kit)
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
### A. eSim 
[eSim](https://esim.fossee.in/home) (previously known as Oscad / FreeEDA) is a free/libre and open source EDA tool for circuit design, simulation, analysis and PCB design. It is an integrated tool built using free/libre and open source software such as [KiCad](http://www.kicad-pcb.org/), [Ngspice](http://ngspice.sourceforge.net/), [Verilator](https://www.veripool.org/verilator/), [makerchip-app](https://pypi.org/project/makerchip-app/), [sandpiper-saas](https://pypi.org/project/sandpiper-saas/) and [GHDL](http://ghdl.free.fr/). eSim is released under GPL.
![eSim](https://user-images.githubusercontent.com/100511409/157074547-e9c855cf-ddaa-41e1-a44f-8071950f172b.jpg)<br>
_Fig. 1. FOSSEE eSim software._<br>

### B. Makerchip
[Makerchip](https://makerchip.com/) is tool designed by [Redwood EDA](https://www.redwoodeda.com/) for Open-source SystemVerilog/TL-Verilog development in your browser. Makerchip provides free and instant access to the latest tools directly from your browser and from your desktop. This includes open-source tools and proprietary ones. 
![Makerchip_Software](https://user-images.githubusercontent.com/100511409/193117567-784976ba-b100-4ad1-ad1f-3ad6f701bf04.png)<br>
_Fig. 2. Makerchip software for design verification_<br>
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

_Fig. 3. Schematic of in-memory DAC. The designing of 6TSRAM in makerchip is discussed in upcoming sections._<br>
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
_Fig. 6.(a) Verilog to NgSpice Converter. (b) 6T SRAM model added to KiCad library._
![KiCad](https://user-images.githubusercontent.com/100511409/193123880-3cb4e9ac-0129-444e-b2cd-32381e06b0a7.png)<br>
_Fig. 7. (a) Adding 6T SRAM model, (b) skywater 130nm pdk based mosfet to the KiCad schematic._<br>
### 3.1. Netlist
```
```
### 3.2. Simulated Waveforms
Fig. 8 below demonstrates the simulated output which is similar to the staircase waveform typical to the digital to analog converter. Thus, the simulated results establishes the successful simulation of the in-memory SRAM based DAC.
![Final_Simulated_Output](https://user-images.githubusercontent.com/100511409/193124309-ae743365-519b-4f69-84b4-23610a8c0350.png)<br>
_Fig. 8. Simulated output showing (a) inputs signal to the circuit, and (b) staircase output current which is typical to the digital to analog convertor (DAC)._<br>
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
[2] S. Jeloka, N. B. Akesh, D. Sylvester, and D. Blaauw, “A 28nm configurable memory using push-rule 6T bit cell enabling logic-in-memory”, IEEE J. Solid-State Circuits, vol. 51, no. 4. Pp. 1009-1021, Apr. 2016.
[3] A. Jaiswal, I. Chakraborty, A. Agrawal and K. Roy, "8T SRAM Cell as a Multibit Dot-Product Engine for Beyond Von Neumann Computing," in IEEE Transactions on Very Large Scale Integration (VLSI) Systems, vol. 27, no. 11, pp. 2556-2567, Nov. 2019
<br>[🠉 Back to Top](#contents)
