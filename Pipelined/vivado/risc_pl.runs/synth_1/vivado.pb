
>
Refreshing IP repositories
234*coregenZ19-234h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2E
1/home/tanveer/PYNQ/YOLO_Tiny/code/test/ip_example2default:defaultZ19-1700h px� 
~
"Loaded Vivado IP repository '%s'.
1332*coregen25
!/opt/Xilinx/Vivado/2019.1/data/ip2default:defaultZ19-2313h px� 
�
Command: %s
53*	vivadotcl2�
psynth_design -top risc_soc_synth -part xc7z020clg400-1 -directive AlternateRoutability -no_lc -shreg_min_size 102default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7z020clg400-12default:defaultZ21-403h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 1669.273 ; gain = 152.688 ; free physical = 6848 ; free virtual = 13102
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2"
risc_soc_synth2default:default2
 2default:default2e
O/home/tanveer/risc/Pipelined/vivado/risc_pl.srcs/sources_1/new/risc_soc_synth.v2default:default2
112default:default8@Z8-6157h px� 
_
%s
*synth2G
3	Parameter imem_size bound to: 64 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter dmem_size bound to: 32 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2 
risc_core_pl2default:default2
 2default:default2>
(/home/tanveer/risc/Pipelined/risc_core.v2default:default2
112default:default8@Z8-6157h px� 
_
%s
*synth2G
3	Parameter imem_size bound to: 64 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2 
control_unit2default:default2
 2default:default2A
+/home/tanveer/risc/Pipelined/control_unit.v2default:default2
112default:default8@Z8-6157h px� 
_
%s
*synth2G
3	Parameter imem_size bound to: 64 - type: integer 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter I_ADD bound to: 4'b0000 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter I_SUB bound to: 4'b0001 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter I_AND bound to: 4'b0010 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter I_OR bound to: 4'b0011 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter I_XOR bound to: 4'b0100 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter I_NOT bound to: 4'b0101 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter I_SLA bound to: 4'b0110 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter I_SRA bound to: 4'b0111 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter I_BLZ bound to: 4'b1000 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter I_JMP bound to: 4'b1001 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter I_JAL bound to: 4'b1010 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter I_RET bound to: 4'b1011 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter I_LI bound to: 4'b1100 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter I_LW bound to: 4'b1101 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter I_SW bound to: 4'b1110 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter I_HLT bound to: 4'b1111 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter S_RST bound to: 2'b00 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter S_NOR bound to: 2'b01 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter S_STL bound to: 2'b10 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter S_HLT bound to: 2'b11 
2default:defaulth p
x
� 
�
default block is never used226*oasys2A
+/home/tanveer/risc/Pipelined/control_unit.v2default:default2
1072default:default8@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
control_unit2default:default2
 2default:default2
12default:default2
12default:default2A
+/home/tanveer/risc/Pipelined/control_unit.v2default:default2
112default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
datapath2default:default2
 2default:default2=
'/home/tanveer/risc/Pipelined/datapath.v2default:default2
112default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2#
inst_fetch_unit2default:default2
 2default:default2D
./home/tanveer/risc/Pipelined/inst_fetch_unit.v2default:default2
112default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
inst_fetch_unit2default:default2
 2default:default2
22default:default2
12default:default2D
./home/tanveer/risc/Pipelined/inst_fetch_unit.v2default:default2
112default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
if_id_pl_reg2default:default2
 2default:default2A
+/home/tanveer/risc/Pipelined/if_id_pl_reg.v2default:default2
112default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
if_id_pl_reg2default:default2
 2default:default2
32default:default2
12default:default2A
+/home/tanveer/risc/Pipelined/if_id_pl_reg.v2default:default2
112default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2$
inst_decode_unit2default:default2
 2default:default2E
//home/tanveer/risc/Pipelined/inst_decode_unit.v2default:default2
112default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
inst_decode_unit2default:default2
 2default:default2
42default:default2
12default:default2E
//home/tanveer/risc/Pipelined/inst_decode_unit.v2default:default2
112default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
id_ex_pl_reg2default:default2
 2default:default2A
+/home/tanveer/risc/Pipelined/id_ex_pl_reg.v2default:default2
112default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
id_ex_pl_reg2default:default2
 2default:default2
52default:default2
12default:default2A
+/home/tanveer/risc/Pipelined/id_ex_pl_reg.v2default:default2
112default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	exec_unit2default:default2
 2default:default2>
(/home/tanveer/risc/Pipelined/exec_unit.v2default:default2
112default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2#
arth_logic_unit2default:default2
 2default:default2D
./home/tanveer/risc/Pipelined/arth_logic_unit.v2default:default2
112default:default8@Z8-6157h px� 
P
%s
*synth28
$	Parameter OP_ADD bound to: 3'b000 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter OP_SUB bound to: 3'b001 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter OP_AND bound to: 3'b010 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter OP_OR bound to: 3'b011 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter OP_XOR bound to: 3'b100 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter OP_NOT bound to: 3'b101 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter OP_SLA bound to: 3'b110 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter OP_SRA bound to: 3'b111 
2default:defaulth p
x
� 
�
default block is never used226*oasys2D
./home/tanveer/risc/Pipelined/arth_logic_unit.v2default:default2
392default:default8@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
arth_logic_unit2default:default2
 2default:default2
62default:default2
12default:default2D
./home/tanveer/risc/Pipelined/arth_logic_unit.v2default:default2
112default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	exec_unit2default:default2
 2default:default2
72default:default2
12default:default2>
(/home/tanveer/risc/Pipelined/exec_unit.v2default:default2
112default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
ex_wb_pl_reg2default:default2
 2default:default2A
+/home/tanveer/risc/Pipelined/ex_wb_pl_reg.v2default:default2
112default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
ex_wb_pl_reg2default:default2
 2default:default2
82default:default2
12default:default2A
+/home/tanveer/risc/Pipelined/ex_wb_pl_reg.v2default:default2
112default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
regfile2default:default2
 2default:default2<
&/home/tanveer/risc/Pipelined/regfile.v2default:default2
112default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
regfile2default:default2
 2default:default2
92default:default2
12default:default2<
&/home/tanveer/risc/Pipelined/regfile.v2default:default2
112default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
data_forwarding_unit2default:default2
 2default:default2I
3/home/tanveer/risc/Pipelined/data_forwarding_unit.v2default:default2
112default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
data_forwarding_unit2default:default2
 2default:default2
102default:default2
12default:default2I
3/home/tanveer/risc/Pipelined/data_forwarding_unit.v2default:default2
112default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
datapath2default:default2
 2default:default2
112default:default2
12default:default2=
'/home/tanveer/risc/Pipelined/datapath.v2default:default2
112default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
risc_core_pl2default:default2
 2default:default2
122default:default2
12default:default2>
(/home/tanveer/risc/Pipelined/risc_core.v2default:default2
112default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
blk_mem_gen_02default:default2
 2default:default2�
v/home/tanveer/risc/Pipelined/vivado/risc_pl.runs/synth_1/.Xil/Vivado-167870-MIR-ThinkPad/realtime/blk_mem_gen_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
blk_mem_gen_02default:default2
 2default:default2
132default:default2
12default:default2�
v/home/tanveer/risc/Pipelined/vivado/risc_pl.runs/synth_1/.Xil/Vivado-167870-MIR-ThinkPad/realtime/blk_mem_gen_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
addra2default:default2
62default:default2!
blk_mem_gen_02default:default2e
O/home/tanveer/risc/Pipelined/vivado/risc_pl.srcs/sources_1/new/risc_soc_synth.v2default:default2
602default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
addra2default:default2
62default:default2!
blk_mem_gen_02default:default2e
O/home/tanveer/risc/Pipelined/vivado/risc_pl.srcs/sources_1/new/risc_soc_synth.v2default:default2
692default:default8@Z8-689h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
risc_soc_synth2default:default2
 2default:default2
142default:default2
12default:default2e
O/home/tanveer/risc/Pipelined/vivado/risc_pl.srcs/sources_1/new/risc_soc_synth.v2default:default2
112default:default8@Z8-6155h px� 
�
!design %s has unconnected port %s3331*oasys2(
data_forwarding_unit2default:default2
clk2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2(
data_forwarding_unit2default:default2
rst_n2default:defaultZ8-3331h px� 
{
!design %s has unconnected port %s3331*oasys2
regfile2default:default2
rst_n2default:defaultZ8-3331h px� 
{
!design %s has unconnected port %s3331*oasys2
	exec_unit2default:default2
clk2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
	exec_unit2default:default2
rst_n2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2$
inst_decode_unit2default:default2
clk2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2$
inst_decode_unit2default:default2
rst_n2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
control_unit2default:default2 
id_opcode[3]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
control_unit2default:default2 
id_opcode[2]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
control_unit2default:default2 
id_opcode[1]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
control_unit2default:default2 
id_opcode[0]2default:defaultZ8-3331h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 1725.992 ; gain = 209.406 ; free physical = 6876 ; free virtual = 13131
2default:defaulth px� 
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
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 1728.961 ; gain = 212.375 ; free physical = 6878 ; free virtual = 13132
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 1728.961 ; gain = 212.375 ; free physical = 6878 ; free virtual = 13132
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
v/home/tanveer/risc/Pipelined/vivado/risc_pl.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0/blk_mem_gen_0_in_context.xdc2default:default2
IMEM	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
v/home/tanveer/risc/Pipelined/vivado/risc_pl.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0/blk_mem_gen_0_in_context.xdc2default:default2
IMEM	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
v/home/tanveer/risc/Pipelined/vivado/risc_pl.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0/blk_mem_gen_0_in_context.xdc2default:default2
DMEM	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
v/home/tanveer/risc/Pipelined/vivado/risc_pl.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0/blk_mem_gen_0_in_context.xdc2default:default2
DMEM	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2^
H/home/tanveer/risc/Pipelined/vivado/risc_pl.srcs/constrs_1/new/const.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2^
H/home/tanveer/risc/Pipelined/vivado/risc_pl.srcs/constrs_1/new/const.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2\
H/home/tanveer/risc/Pipelined/vivado/risc_pl.srcs/constrs_1/new/const.xdc2default:default24
 .Xil/risc_soc_synth_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1904.6482default:default2
0.0002default:default2
67772default:default2
130352default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.012default:default2
00:00:002default:default2
1904.6482default:default2
0.0002default:default2
67772default:default2
130352default:defaultZ17-722h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2
DMEM2default:default2
clka2default:default2
4.2002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2
IMEM2default:default2
clka2default:default2
4.2002default:defaultZ38-316h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:05 ; elapsed = 00:00:07 . Memory (MB): peak = 1911.586 ; gain = 395.000 ; free physical = 6828 ; free virtual = 13090
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
J
%s
*synth22
Loading part: xc7z020clg400-1
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:05 ; elapsed = 00:00:07 . Memory (MB): peak = 1911.586 ; gain = 395.000 ; free physical = 6828 ; free virtual = 13090
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:05 ; elapsed = 00:00:07 . Memory (MB): peak = 1911.586 ; gain = 395.000 ; free physical = 6828 ; free virtual = 13090
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2%
current_state_reg2default:default2 
control_unit2default:defaultZ8-802h px� 
�
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2D
./home/tanveer/risc/Pipelined/arth_logic_unit.v2default:default2
352default:default8@Z8-5818h px� 
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
_                   S_RST |                               11 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                   S_NOR |                               10 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                   S_STL |                               01 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_                   S_HLT |                               00 |                               11
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
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2%
current_state_reg2default:default2

sequential2default:default2 
control_unit2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1911.586 ; gain = 395.000 ; free physical = 6823 ; free virtual = 13085
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     16 Bit       Adders := 1     
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
.	   2 Input     16 Bit         XORs := 1     
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
.	               56 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               26 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 3     
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
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
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
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
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
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
A
%s
*synth2)
Module control_unit 
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
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 3     
2default:defaulth p
x
� 
D
%s
*synth2,
Module inst_fetch_unit 
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
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 2     
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
.	               16 Bit    Registers := 2     
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
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module if_id_pl_reg 
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
.	               24 Bit    Registers := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module id_ex_pl_reg 
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
.	               56 Bit    Registers := 1     
2default:defaulth p
x
� 
D
%s
*synth2,
Module arth_logic_unit 
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
Z
%s
*synth2B
.	   3 Input     16 Bit       Adders := 1     
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
.	   2 Input     16 Bit         XORs := 1     
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
Z
%s
*synth2B
.	   8 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
>
%s
*synth2&
Module exec_unit 
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
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
� 
A
%s
*synth2)
Module ex_wb_pl_reg 
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
.	               26 Bit    Registers := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
Module datapath 
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
.	               16 Bit    Registers := 1     
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
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
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
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
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
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
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
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!RISC_PL/DU/DEPR/id_ex_reg_reg[19]2default:default2
FDC2default:default25
!RISC_PL/DU/DEPR/id_ex_reg_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!RISC_PL/DU/DEPR/id_ex_reg_reg[18]2default:default2
FDC2default:default25
!RISC_PL/DU/DEPR/id_ex_reg_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!RISC_PL/DU/DEPR/id_ex_reg_reg[17]2default:default2
FDC2default:default25
!RISC_PL/DU/DEPR/id_ex_reg_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!RISC_PL/DU/DEPR/id_ex_reg_reg[16]2default:default2
FDC2default:default25
!RISC_PL/DU/DEPR/id_ex_reg_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!RISC_PL/DU/DEPR/id_ex_reg_reg[15]2default:default2
FDC2default:default25
!RISC_PL/DU/DEPR/id_ex_reg_reg[20]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!RISC_PL/DU/FDPR/if_id_reg_reg[15]2default:default2
FDC2default:default25
!RISC_PL/DU/FDPR/if_id_reg_reg[19]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!RISC_PL/DU/FDPR/if_id_reg_reg[12]2default:default2
FDC2default:default25
!RISC_PL/DU/FDPR/if_id_reg_reg[16]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!RISC_PL/DU/FDPR/if_id_reg_reg[13]2default:default2
FDC2default:default25
!RISC_PL/DU/FDPR/if_id_reg_reg[17]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!RISC_PL/DU/FDPR/if_id_reg_reg[14]2default:default2
FDC2default:default25
!RISC_PL/DU/FDPR/if_id_reg_reg[18]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!RISC_PL/DU/DEPR/id_ex_reg_reg[22]2default:default2
FDC2default:default25
!RISC_PL/DU/DEPR/id_ex_reg_reg[20]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!RISC_PL/DU/DEPR/id_ex_reg_reg[23]2default:default2
FDC2default:default25
!RISC_PL/DU/DEPR/id_ex_reg_reg[20]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!RISC_PL/DU/DEPR/id_ex_reg_reg[20]2default:default2
FDC2default:default25
!RISC_PL/DU/DEPR/id_ex_reg_reg[21]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!RISC_PL/DU/FDPR/if_id_reg_reg[22]2default:default2
FDC2default:default25
!RISC_PL/DU/FDPR/if_id_reg_reg[10]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!RISC_PL/DU/FDPR/if_id_reg_reg[23]2default:default2
FDC2default:default25
!RISC_PL/DU/FDPR/if_id_reg_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys24
 RISC_PL/DU/FDPR/if_id_reg_reg[8]2default:default2
FDC2default:default25
!RISC_PL/DU/FDPR/if_id_reg_reg[20]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys24
 RISC_PL/DU/FDPR/if_id_reg_reg[9]2default:default2
FDC2default:default25
!RISC_PL/DU/FDPR/if_id_reg_reg[21]2default:defaultZ8-3886h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 1911.586 ; gain = 395.000 ; free physical = 6810 ; free virtual = 13074
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
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
k
%s*synth2S
?
Distributed RAM: Preliminary Mapping  Report (see note below)
2default:defaulth px� 
�
%s*synth2v
b+---------------+-----------------------------+-----------+----------------------+--------------+
2default:defaulth px� 
�
%s*synth2w
c|Module Name    | RTL Object                  | Inference | Size (Depth x Width) | Primitives   | 
2default:defaulth px� 
�
%s*synth2v
b+---------------+-----------------------------+-----------+----------------------+--------------+
2default:defaulth px� 
�
%s*synth2w
c|risc_soc_synth | RISC_PL/DU/RF/registers_reg | Implied   | 16 x 16              | RAM32M x 9   | 
2default:defaulth px� 
�
%s*synth2w
c+---------------+-----------------------------+-----------+----------------------+--------------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1911.586 ; gain = 395.000 ; free physical = 6672 ; free virtual = 12937
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
�Finished Timing Optimization : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1911.586 ; gain = 395.000 ; free physical = 6663 ; free virtual = 12928
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
Start ROM, RAM, DSP and Shift Register Reporting
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
(
Distributed RAM: Final Mapping  Report
2default:defaulth p
x
� 
�
%s
*synth2v
b+---------------+-----------------------------+-----------+----------------------+--------------+
2default:defaulth p
x
� 
�
%s
*synth2w
c|Module Name    | RTL Object                  | Inference | Size (Depth x Width) | Primitives   | 
2default:defaulth p
x
� 
�
%s
*synth2v
b+---------------+-----------------------------+-----------+----------------------+--------------+
2default:defaulth p
x
� 
�
%s
*synth2w
c|risc_soc_synth | RISC_PL/DU/RF/registers_reg | Implied   | 16 x 16              | RAM32M x 9   | 
2default:defaulth p
x
� 
�
%s
*synth2w
c+---------------+-----------------------------+-----------+----------------------+--------------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
�Finished Technology Mapping : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1911.586 ; gain = 395.000 ; free physical = 6657 ; free virtual = 12921
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
�Finished IO Insertion : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1911.586 ; gain = 395.000 ; free physical = 6656 ; free virtual = 12920
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
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
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1911.586 ; gain = 395.000 ; free physical = 6656 ; free virtual = 12920
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1911.586 ; gain = 395.000 ; free physical = 6656 ; free virtual = 12920
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1911.586 ; gain = 395.000 ; free physical = 6656 ; free virtual = 12920
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1911.586 ; gain = 395.000 ; free physical = 6656 ; free virtual = 12920
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1911.586 ; gain = 395.000 ; free physical = 6656 ; free virtual = 12920
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
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|1     |blk_mem_gen_0 |         2|
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
N
%s*synth26
"+------+-----------------+------+
2default:defaulth px� 
N
%s*synth26
"|      |Cell             |Count |
2default:defaulth px� 
N
%s*synth26
"+------+-----------------+------+
2default:defaulth px� 
N
%s*synth26
"|1     |blk_mem_gen_0    |     1|
2default:defaulth px� 
N
%s*synth26
"|2     |blk_mem_gen_0__2 |     1|
2default:defaulth px� 
N
%s*synth26
"|3     |BUFG             |     1|
2default:defaulth px� 
N
%s*synth26
"|4     |CARRY4           |     8|
2default:defaulth px� 
N
%s*synth26
"|5     |LUT1             |     3|
2default:defaulth px� 
N
%s*synth26
"|6     |LUT2             |    23|
2default:defaulth px� 
N
%s*synth26
"|7     |LUT3             |    53|
2default:defaulth px� 
N
%s*synth26
"|8     |LUT4             |    10|
2default:defaulth px� 
N
%s*synth26
"|9     |LUT5             |    92|
2default:defaulth px� 
N
%s*synth26
"|10    |LUT6             |    57|
2default:defaulth px� 
N
%s*synth26
"|11    |RAM32M           |     7|
2default:defaulth px� 
N
%s*synth26
"|12    |FDCE             |   138|
2default:defaulth px� 
N
%s*synth26
"|13    |FDPE             |     2|
2default:defaulth px� 
N
%s*synth26
"|14    |IBUF             |     2|
2default:defaulth px� 
N
%s*synth26
"|15    |OBUF             |     1|
2default:defaulth px� 
N
%s*synth26
"+------+-----------------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
Z
%s
*synth2B
.+------+------------+----------------+------+
2default:defaulth p
x
� 
Z
%s
*synth2B
.|      |Instance    |Module          |Cells |
2default:defaulth p
x
� 
Z
%s
*synth2B
.+------+------------+----------------+------+
2default:defaulth p
x
� 
Z
%s
*synth2B
.|1     |top         |                |   429|
2default:defaulth p
x
� 
Z
%s
*synth2B
.|2     |  RISC_PL   |risc_core_pl    |   393|
2default:defaulth p
x
� 
Z
%s
*synth2B
.|3     |    CU      |control_unit    |     4|
2default:defaulth p
x
� 
Z
%s
*synth2B
.|4     |    DU      |datapath        |   389|
2default:defaulth p
x
� 
Z
%s
*synth2B
.|5     |      DEPR  |id_ex_pl_reg    |   168|
2default:defaulth p
x
� 
Z
%s
*synth2B
.|6     |      EWPR  |ex_wb_pl_reg    |    49|
2default:defaulth p
x
� 
Z
%s
*synth2B
.|7     |      EXU   |exec_unit       |     4|
2default:defaulth p
x
� 
Z
%s
*synth2B
.|8     |        ALU |arth_logic_unit |     4|
2default:defaulth p
x
� 
Z
%s
*synth2B
.|9     |      FDPR  |if_id_pl_reg    |    57|
2default:defaulth p
x
� 
Z
%s
*synth2B
.|10    |      IFU   |inst_fetch_unit |    88|
2default:defaulth p
x
� 
Z
%s
*synth2B
.|11    |      RF    |regfile         |     7|
2default:defaulth p
x
� 
Z
%s
*synth2B
.+------+------------+----------------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1911.586 ; gain = 395.000 ; free physical = 6656 ; free virtual = 12920
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
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1911.586 ; gain = 212.375 ; free physical = 6714 ; free virtual = 12978
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1911.586 ; gain = 395.000 ; free physical = 6714 ; free virtual = 12978
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
152default:defaultZ29-17h px� 
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
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1911.5862default:default2
0.0002default:default2
66632default:default2
129282default:defaultZ17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 7 instances were transformed.
  RAM32M => RAM32M (RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMS32, RAMS32): 7 instances
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
642default:default2
152default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:152default:default2
00:00:162default:default2
1911.5862default:default2
534.6562default:default2
67632default:default2
130272default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1911.5862default:default2
0.0002default:default2
67632default:default2
130272default:defaultZ17-722h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2_
K/home/tanveer/risc/Pipelined/vivado/risc_pl.runs/synth_1/risc_soc_synth.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
rExecuting : report_utilization -file risc_soc_synth_utilization_synth.rpt -pb risc_soc_synth_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Dec 17 17:11:28 20232default:defaultZ17-206h px� 


End Record