
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:072default:default2
00:00:112default:default2
501.7232default:default2
232.8442default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental {Z:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.srcs/utils_1/imports/synth_1/A.dcp}2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2~
jZ:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.srcs/utils_1/imports/synth_1/A.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
q
Command: %s
53*	vivadotcl2@
,synth_design -top A_B -part xc7a100tcsg324-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
178162default:defaultZ8-7075h px� 
�
%s*synth2�
sStarting Synthesize : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 938.285 ; gain = 404.434
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2
A_B2default:default2x
bZ:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.srcs/sources_1/new/A_B.vhd2default:default2
152default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
A2default:default2v
`Z:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.srcs/sources_1/new/A.vhd2default:default2
162default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
rom_8x82default:default2�
oZ:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.srcs/sources_1/imports/new/rom_16x8.vhd2default:default2
132default:default8@Z8-638h px� 
�
default block is never used226*oasys2�
oZ:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.srcs/sources_1/imports/new/rom_16x8.vhd2default:default2
182default:default8@Z8-226h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
read2default:default2�
oZ:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.srcs/sources_1/imports/new/rom_16x8.vhd2default:default2
152default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
rom_8x82default:default2
02default:default2
12default:default2�
oZ:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.srcs/sources_1/imports/new/rom_16x8.vhd2default:default2
132default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
	Contatore2default:default2�
pZ:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.srcs/sources_1/imports/new/Contatore.vhd2default:default2
202default:default8@Z8-638h px� 
V
%s
*synth2>
*	Parameter N bound to: 3 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	Contatore2default:default2
02default:default2
12default:default2�
pZ:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.srcs/sources_1/imports/new/Contatore.vhd2default:default2
202default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2 
Rs232RefComp2default:default2�
yZ:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.srcs/sources_1/imports/Downloads/RS232RefComp.vhd2default:default2
402default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
Rs232RefComp2default:default2
02default:default2
12default:default2�
yZ:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.srcs/sources_1/imports/Downloads/RS232RefComp.vhd2default:default2
402default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
A2default:default2
02default:default2
12default:default2v
`Z:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.srcs/sources_1/new/A.vhd2default:default2
162default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
B2default:default2v
`Z:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.srcs/sources_1/new/B.vhd2default:default2
162default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
MEM2default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.srcs/sources_1/imports/exercise/exe 8.1/exe 8.1.srcs/sources_1/imports/VHDL/VIVADO-PROJECTS/MEM/MEM.srcs/sources_1/new/MEM.vhd2default:default2
202default:default8@Z8-638h px� 
V
%s
*synth2>
*	Parameter N bound to: 8 - type: integer 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter M bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
MEM2default:default2
02default:default2
12default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.srcs/sources_1/imports/exercise/exe 8.1/exe 8.1.srcs/sources_1/imports/VHDL/VIVADO-PROJECTS/MEM/MEM.srcs/sources_1/new/MEM.vhd2default:default2
202default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
B2default:default2
02default:default2
12default:default2v
`Z:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.srcs/sources_1/new/B.vhd2default:default2
162default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
A_B2default:default2
02default:default2
12default:default2x
bZ:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.srcs/sources_1/new/A_B.vhd2default:default2
152default:default8@Z8-256h px� 
�
%s*synth2�
tFinished Synthesize : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 1033.004 ; gain = 499.152
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 1033.004 ; gain = 499.152
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 1033.004 ; gain = 499.152
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2

strCur_reg2default:default2 
Rs232RefComp2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2

sttCur_reg2default:default2 
Rs232RefComp2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
stbeCur_reg2default:default2 
Rs232RefComp2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
state_c_reg2default:default2
A2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
state_c_reg2default:default2
B2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                 sttidle |                              001 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_             stttransfer |                              010 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                sttshift |                              100 |                               10
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2

sttCur_reg2default:default2
one-hot2default:default2 
Rs232RefComp2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                 stridle |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_           streightdelay |                               01 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_              strgetdata |                               10 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_            strcheckstop |                               11 |                               11
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2

strCur_reg2default:default2

sequential2default:default2 
Rs232RefComp2default:defaultZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2
TBE_reg2default:default2�
yZ:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.srcs/sources_1/imports/Downloads/RS232RefComp.vhd2default:default2
4842default:default8@Z8-327h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                stbeidle |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_              stbesettbe |                               01 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_            stbewaitload |                               10 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_           stbewaitwrite |                               11 |                               11
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
stbeCur_reg2default:default2

sequential2default:default2 
Rs232RefComp2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    idle |                              001 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                    send |                              010 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_               wait_send |                              100 |                               10
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
state_c_reg2default:default2
one-hot2default:default2
A2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    idle |                              001 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                   error |                              010 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_                    load |                              100 |                               01
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
state_c_reg2default:default2
one-hot2default:default2
B2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 1033.004 ; gain = 499.152
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 8     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 2     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      1 Bit         XORs := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      1 Bit         XORs := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               11 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 19    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   11 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 33    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    3 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 5     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 14    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 7     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 12    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 12    
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:17 . Memory (MB): peak = 1242.941 ; gain = 709.090
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:17 . Memory (MB): peak = 1242.941 ; gain = 709.090
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!B/UART_B/FSM_onehot_sttCur_reg[2]2default:default2
A_B2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!B/UART_B/FSM_onehot_sttCur_reg[1]2default:default2
A_B2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!B/UART_B/FSM_onehot_sttCur_reg[0]2default:default2
A_B2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
B/UART_B/TBE_reg2default:default2
A_B2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&B/UART_B/FSM_sequential_stbeCur_reg[1]2default:default2
A_B2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2:
&B/UART_B/FSM_sequential_stbeCur_reg[0]2default:default2
A_B2default:defaultZ8-3332h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:13 ; elapsed = 00:00:17 . Memory (MB): peak = 1248.914 ; gain = 715.062
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:18 ; elapsed = 00:00:24 . Memory (MB): peak = 1248.914 ; gain = 715.062
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:18 ; elapsed = 00:00:24 . Memory (MB): peak = 1248.914 ; gain = 715.062
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
ER_OBUF2default:default2
1st2default:default2

A/ER_reg/Q2default:default2v
`Z:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.srcs/sources_1/new/A.vhd2default:default2
972default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
ER_OBUF2default:default2
2nd2default:default2

B/ER_reg/Q2default:default2v
`Z:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.srcs/sources_1/new/B.vhd2default:default2
1052default:default8@Z8-6859h px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        1|Failed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:18 ; elapsed = 00:00:24 . Memory (MB): peak = 1248.914 ; gain = 715.062
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:18 ; elapsed = 00:00:24 . Memory (MB): peak = 1248.914 ; gain = 715.062
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:18 ; elapsed = 00:00:24 . Memory (MB): peak = 1248.914 ; gain = 715.062
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:18 ; elapsed = 00:00:24 . Memory (MB): peak = 1248.914 ; gain = 715.062
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23

Static Shift Register Report:
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name | RTL Name               | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|A_B         | B/UART_B/tfSReg_reg[0] | 9      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |BUFG   |     2|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |    12|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |    15|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   |    50|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT3   |    30|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT4   |    21|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT5   |    17|
2default:defaulth px� 
D
%s*synth2,
|8     |LUT6   |    21|
2default:defaulth px� 
D
%s*synth2,
|9     |SRL16E |     1|
2default:defaulth px� 
D
%s*synth2,
|10    |FDCE   |     8|
2default:defaulth px� 
D
%s*synth2,
|11    |FDRE   |   155|
2default:defaulth px� 
D
%s*synth2,
|12    |LD     |     1|
2default:defaulth px� 
D
%s*synth2,
|13    |IBUF   |     3|
2default:defaulth px� 
D
%s*synth2,
|14    |OBUF   |     9|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
X
%s
*synth2@
,+------+-----------+---------------+------+
2default:defaulth p
x
� 
X
%s
*synth2@
,|      |Instance   |Module         |Cells |
2default:defaulth p
x
� 
X
%s
*synth2@
,+------+-----------+---------------+------+
2default:defaulth p
x
� 
X
%s
*synth2@
,|1     |top        |               |   345|
2default:defaulth p
x
� 
X
%s
*synth2@
,|2     |  A        |A              |   226|
2default:defaulth p
x
� 
X
%s
*synth2@
,|3     |    UART_A |Rs232RefComp_0 |   123|
2default:defaulth p
x
� 
X
%s
*synth2@
,|4     |    cnt_A  |Contatore      |    10|
2default:defaulth p
x
� 
X
%s
*synth2@
,|5     |    rom    |rom_8x8        |     5|
2default:defaulth p
x
� 
X
%s
*synth2@
,|6     |  B        |B              |   105|
2default:defaulth p
x
� 
X
%s
*synth2@
,|7     |    UART_B |Rs232RefComp   |    90|
2default:defaulth p
x
� 
X
%s
*synth2@
,|8     |    mem    |MEM            |     8|
2default:defaulth p
x
� 
X
%s
*synth2@
,+------+-----------+---------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:18 ; elapsed = 00:00:24 . Memory (MB): peak = 1248.914 ; gain = 715.062
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 2 critical warnings and 9 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:18 ; elapsed = 00:00:24 . Memory (MB): peak = 1248.914 ; gain = 715.062
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:18 ; elapsed = 00:00:24 . Memory (MB): peak = 1248.914 ; gain = 715.062
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0042default:default2
1251.7302default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
132default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
12default:default2
12default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1348.9382default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2l
X  A total of 1 instances were transformed.
  LD => LDCE (inverted pins: G): 1 instance 
2default:defaultZ1-111h px� 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
52df03442default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
412default:default2
92default:default2
22default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:202default:default2
00:00:262default:default2
1348.9382default:default2
822.3522default:defaultZ17-268h px� 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2p
\Z:/University/Architettura Sistemi Digitali/VHDL/exercise/exe 10/exe 10.runs/synth_1/A_B.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2p
\Executing : report_utilization -file A_B_utilization_synth.rpt -pb A_B_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Dec  5 22:41:45 20242default:defaultZ17-206h px� 


End Record