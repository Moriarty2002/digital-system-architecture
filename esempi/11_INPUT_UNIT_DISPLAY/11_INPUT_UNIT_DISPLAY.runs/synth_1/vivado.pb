
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:092default:default2
00:00:132default:default2
501.2382default:default2
230.9062default:defaultZ17-268h px� 
~
Command: %s
53*	vivadotcl2M
9synth_design -top display_on_board -part xc7a100tcsg324-12default:defaultZ4-113h px� 
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
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
164362default:defaultZ8-7075h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:07 . Memory (MB): peak = 1327.109 ; gain = 410.609
2default:defaulth px� 
�
>possible infinite loop; process does not have a wait statement2551*oasys2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/cathodes_manager.vhd2default:default2
892default:default8@Z8-2551h px� 
�
synthesizing module '%s'638*oasys2$
display_on_board2default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/display_on_board.vhd2default:default2
422default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
control_unit2default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/control_unit.vhd2default:default2
352default:default2
cu2default:default2 
control_unit2default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/display_on_board.vhd2default:default2
832default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
control_unit2default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/control_unit.vhd2default:default2
492default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
control_unit2default:default2
02default:default2
12default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/control_unit.vhd2default:default2
492default:default8@Z8-256h px� 
o
%s
*synth2W
C	Parameter clock_frequency_in bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter clock_frequency_out bound to: 450 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2*
display_seven_segments2default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/display_seven_segments.vhd2default:default2
322default:default2'
seven_segment_array2default:default2*
display_seven_segments2default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/display_on_board.vhd2default:default2
952default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2*
display_seven_segments2default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/display_seven_segments.vhd2default:default2
462default:default8@Z8-638h px� 
o
%s
*synth2W
C	Parameter clock_frequency_in bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter clock_frequency_out bound to: 450 - type: integer 
2default:defaulth p
x
� 
o
%s
*synth2W
C	Parameter clock_frequency_in bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter clock_frequency_out bound to: 450 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
clock_divider2default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/clock_divider.vhd2default:default2
122default:default2(
clk_divider_instance2default:default2!
clock_divider2default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/display_seven_segments.vhd2default:default2
1072default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2!
clock_divider2default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/clock_divider.vhd2default:default2
222default:default8@Z8-638h px� 
o
%s
*synth2W
C	Parameter clock_frequency_in bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter clock_frequency_out bound to: 450 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
clock_divider2default:default2
02default:default2
12default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/clock_divider.vhd2default:default2
222default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
counter_mod82default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/new/counter_mod8.vhd2default:default2
322default:default2$
counter_instance2default:default2 
counter_mod82default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/display_seven_segments.vhd2default:default2
1172default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
counter_mod82default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/new/counter_mod8.vhd2default:default2
392default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
counter_mod82default:default2
02default:default2
12default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/new/counter_mod8.vhd2default:default2
392default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2*
cathodes_input_manager2default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/new/cathodes_input_manager.vhd2default:default2
112default:default2/
cathodes_input_man_instance2default:default2*
cathodes_input_manager2default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/display_seven_segments.vhd2default:default2
1242default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2*
cathodes_input_manager2default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/new/cathodes_input_manager.vhd2default:default2
212default:default8@Z8-638h px� 
�
default block is never used226*oasys2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/new/cathodes_input_manager.vhd2default:default2
252default:default8@Z8-226h px� 
�
default block is never used226*oasys2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/new/cathodes_input_manager.vhd2default:default2
362default:default8@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2*
cathodes_input_manager2default:default2
02default:default2
12default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/new/cathodes_input_manager.vhd2default:default2
212default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
cathodes_manager2default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/cathodes_manager.vhd2default:default2
322default:default2%
cathodes_instance2default:default2$
cathodes_manager2default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/display_seven_segments.vhd2default:default2
1332default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2$
cathodes_manager2default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/cathodes_manager.vhd2default:default2
382default:default8@Z8-638h px� 
�
default block is never used226*oasys2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/cathodes_manager.vhd2default:default2
702default:default8@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2$
cathodes_manager2default:default2
02default:default2
12default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/cathodes_manager.vhd2default:default2
382default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
anodes_manager2default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/anodes_manager.vhd2default:default2
322default:default2#
anodes_instance2default:default2"
anodes_manager2default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/display_seven_segments.vhd2default:default2
1392default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2"
anodes_manager2default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/anodes_manager.vhd2default:default2
392default:default8@Z8-638h px� 
�
default block is never used226*oasys2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/anodes_manager.vhd2default:default2
502default:default8@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2"
anodes_manager2default:default2
02default:default2
12default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/anodes_manager.vhd2default:default2
392default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2*
display_seven_segments2default:default2
02default:default2
12default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/display_seven_segments.vhd2default:default2
462default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2$
display_on_board2default:default2
02default:default2
12default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/sources_1/imports/sources_1/imports/Display7Seg - Vivado/display_on_board.vhd2default:default2
422default:default8@Z8-256h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 1417.234 ; gain = 500.734
2default:defaulth px� 
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 1417.234 ; gain = 500.734
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
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 1417.234 ; gain = 500.734
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0042default:default2
1417.2342default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/constrs_1/imports/digilent-xdc-master/Nexys-A7-100T-Master.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/constrs_1/imports/digilent-xdc-master/Nexys-A7-100T-Master.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.srcs/constrs_1/imports/digilent-xdc-master/Nexys-A7-100T-Master.xdc2default:default26
".Xil/display_on_board_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1489.3442default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
1489.3442default:default2
0.0002default:defaultZ17-268h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 1489.344 ; gain = 572.844
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 1489.344 ; gain = 572.844
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
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 1489.344 ; gain = 572.844
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
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 1489.344 ; gain = 572.844
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
,	   2 Input   18 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 1     
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
.	               18 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
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
,	   2 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   18 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input    8 Bit        Muxes := 1     
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
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:19 ; elapsed = 00:00:22 . Memory (MB): peak = 1489.344 ; gain = 572.844
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
R
%s
*synth2:
&Start Applying XDC Timing Constraints
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:29 . Memory (MB): peak = 1489.344 ; gain = 572.844
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
}Finished Timing Optimization : Time (s): cpu = 00:00:25 ; elapsed = 00:00:29 . Memory (MB): peak = 1489.344 ; gain = 572.844
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:25 ; elapsed = 00:00:29 . Memory (MB): peak = 1489.344 ; gain = 572.844
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
vFinished IO Insertion : Time (s): cpu = 00:00:31 ; elapsed = 00:00:35 . Memory (MB): peak = 1489.344 ; gain = 572.844
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:31 ; elapsed = 00:00:35 . Memory (MB): peak = 1489.344 ; gain = 572.844
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:31 ; elapsed = 00:00:35 . Memory (MB): peak = 1489.344 ; gain = 572.844
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:31 ; elapsed = 00:00:35 . Memory (MB): peak = 1489.344 ; gain = 572.844
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:31 ; elapsed = 00:00:35 . Memory (MB): peak = 1489.344 ; gain = 572.844
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:31 ; elapsed = 00:00:35 . Memory (MB): peak = 1489.344 ; gain = 572.844
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
|1     |BUFG   |     1|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |     5|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |     1|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   |     2|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT3   |     2|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT4   |    20|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT5   |    17|
2default:defaulth px� 
D
%s*synth2,
|8     |LUT6   |    11|
2default:defaulth px� 
D
%s*synth2,
|9     |MUXF7  |     5|
2default:defaulth px� 
D
%s*synth2,
|10    |FDRE   |    70|
2default:defaulth px� 
D
%s*synth2,
|11    |IBUF   |    21|
2default:defaulth px� 
D
%s*synth2,
|12    |OBUF   |    16|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:31 ; elapsed = 00:00:35 . Memory (MB): peak = 1489.344 ; gain = 572.844
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
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:21 ; elapsed = 00:00:33 . Memory (MB): peak = 1489.344 ; gain = 500.734
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:31 ; elapsed = 00:00:35 . Memory (MB): peak = 1489.344 ; gain = 572.844
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
00:00:00.0012default:default2
1489.3442default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
102default:defaultZ29-17h px� 
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
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1489.3442default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
5a16ee272default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
422default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:362default:default2
00:00:432default:default2
1489.3442default:default2
988.1052default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�Z:/University/Architettura Sistemi Digitali/VHDL/esempi/11_INPUT_UNIT_DISPLAY/11_INPUT_UNIT_DISPLAY.runs/synth_1/display_on_board.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
vExecuting : report_utilization -file display_on_board_utilization_synth.rpt -pb display_on_board_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Nov 14 16:17:01 20242default:defaultZ17-206h px� 


End Record