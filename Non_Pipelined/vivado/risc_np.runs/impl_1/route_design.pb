
q
Command: %s
53*	vivadotcl2@
,route_design -directive Explore -tns_cleanup2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a50ti2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a50ti2default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
^
Using Router directive '%s'.
20*	routeflow2
Explore2default:defaultZ35-270h px� 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
82default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
C
.Phase 1 Build RT Design | Checksum: 117e78845
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6535 ; free virtual = 126782default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px� 
B
-Phase 2.1 Create Timer | Checksum: 117e78845
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6535 ; free virtual = 126782default:defaulth px� 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 117e78845
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6502 ; free virtual = 126452default:defaulth px� 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 117e78845
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6502 ; free virtual = 126452default:defaulth px� 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px� 
C
.Phase 2.4 Update Timing | Checksum: 247670bd3
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:09 ; elapsed = 00:00:07 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6492 ; free virtual = 126352default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.111 | TNS=-0.713 | WHS=-0.221 | THS=-12.622|
2default:defaultZ35-416h px� 
I
4Phase 2 Router Initialization | Checksum: 195927188
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:09 ; elapsed = 00:00:07 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6492 ; free virtual = 126352default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
C
.Phase 3 Initial Routing | Checksum: 23dec8be4
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:09 ; elapsed = 00:00:07 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6490 ; free virtual = 126332default:defaulth px� 
�
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
52default:default2�
�The top 5 pins with tight setup and hold constraints:

+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|       Launch Clock       |      Capture Clock       |                                                 Pin                                                      |
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|              sys_clk_pin |              sys_clk_pin |                                                                          RISC_NP/DU/EXU/ex_data_reg[13]/D|
|              sys_clk_pin |              sys_clk_pin |                                                                           RISC_NP/DU/EXU/ex_data_reg[8]/D|
|              sys_clk_pin |              sys_clk_pin |                                                                           RISC_NP/DU/EXU/ex_data_reg[7]/D|
|              sys_clk_pin |              sys_clk_pin |                                                                          RISC_NP/DU/EXU/ex_data_reg[11]/D|
|              sys_clk_pin |              sys_clk_pin |                                                                               RISC_NP/DU/IFU/PC_reg[15]/D|
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
2default:defaultZ35-580h px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.097 | TNS=-0.238 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.1 Global Iteration 0 | Checksum: 1de05ad42
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:09 ; elapsed = 00:00:08 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6489 ; free virtual = 126322default:defaulth px� 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.097 | TNS=-0.364 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.2 Global Iteration 1 | Checksum: 1881734c5
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:09 ; elapsed = 00:00:08 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6489 ; free virtual = 126322default:defaulth px� 
F
1Phase 4 Rip-up And Reroute | Checksum: 1881734c5
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:09 ; elapsed = 00:00:08 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6489 ; free virtual = 126322default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
n

Phase %s%s
101*constraints2
5.1 2default:default2
TNS Cleanup2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
t

Phase %s%s
101*constraints2
5.1.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
G
2Phase 5.1.1.1 Update Timing | Checksum: 164ec471e
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:09 ; elapsed = 00:00:08 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6489 ; free virtual = 126322default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.018 | TNS=-0.034 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
t

Phase %s%s
101*constraints2
5.1.1.2 2default:default2!
Update Timing2default:defaultZ18-101h px� 
G
2Phase 5.1.1.2 Update Timing | Checksum: 13a6b1fa4
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:10 ; elapsed = 00:00:08 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6489 ; free virtual = 126322default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.018 | TNS=-0.034 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
E
0Phase 5.1.1 Delay CleanUp | Checksum: 19bb7d4ac
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:10 ; elapsed = 00:00:08 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6489 ; free virtual = 126322default:defaulth px� 
A
,Phase 5.1 TNS Cleanup | Checksum: 19bb7d4ac
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:10 ; elapsed = 00:00:08 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6489 ; free virtual = 126322default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 19bb7d4ac
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:10 ; elapsed = 00:00:08 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6489 ; free virtual = 126322default:defaulth px� 
O
:Phase 5 Delay and Skew Optimization | Checksum: 19bb7d4ac
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:10 ; elapsed = 00:00:08 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6489 ; free virtual = 126322default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 6.1.1 Update Timing | Checksum: 1c5c09dc1
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:10 ; elapsed = 00:00:08 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6489 ; free virtual = 126322default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.018 | TNS=-0.034 | WHS=0.083  | THS=0.000  |
2default:defaultZ35-416h px� 
C
.Phase 6.1 Hold Fix Iter | Checksum: 1c5c09dc1
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:10 ; elapsed = 00:00:08 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6489 ; free virtual = 126322default:defaulth px� 
A
,Phase 6 Post Hold Fix | Checksum: 1c5c09dc1
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:10 ; elapsed = 00:00:08 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6489 ; free virtual = 126322default:defaulth px� 
t

Phase %s%s
101*constraints2
7 2default:default2'
Timing Verification2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
7.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
C
.Phase 7.1 Update Timing | Checksum: 198785d5d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:10 ; elapsed = 00:00:08 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6489 ; free virtual = 126322default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.018 | TNS=-0.034 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
G
2Phase 7 Timing Verification | Checksum: 198785d5d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:10 ; elapsed = 00:00:08 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6489 ; free virtual = 126322default:defaulth px� 
o

Phase %s%s
101*constraints2
8 2default:default2"
Route finalize2default:defaultZ18-101h px� 
B
-Phase 8 Route finalize | Checksum: 198785d5d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:10 ; elapsed = 00:00:08 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6489 ; free virtual = 126322default:defaulth px� 
v

Phase %s%s
101*constraints2
9 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
I
4Phase 9 Verifying routed nets | Checksum: 198785d5d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:10 ; elapsed = 00:00:08 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6489 ; free virtual = 126322default:defaulth px� 
s

Phase %s%s
101*constraints2
10 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
F
1Phase 10 Depositing Routes | Checksum: 1bb9e9a43
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:10 ; elapsed = 00:00:08 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6489 ; free virtual = 126322default:defaulth px� 
w

Phase %s%s
101*constraints2
11 2default:default2)
Incr Placement Change2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2535.9262default:default2
0.0002default:default2
65212default:default2
126642default:defaultZ17-722h px� 
�
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-0.0172default:defaultZ30-746h px� 
A
,Ending IncrPlace Task | Checksum: 12ee68314
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6551 ; free virtual = 126942default:defaulth px� 
J
5Phase 11 Incr Placement Change | Checksum: 1bb9e9a43
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:12 ; elapsed = 00:00:10 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6551 ; free virtual = 126942default:defaulth px� 
q

Phase %s%s
101*constraints2
12 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
C
.Phase 12 Build RT Design | Checksum: bae4bba5
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6551 ; free virtual = 126942default:defaulth px� 
w

Phase %s%s
101*constraints2
13 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
13.1 2default:default2 
Create Timer2default:defaultZ18-101h px� 
B
-Phase 13.1 Create Timer | Checksum: f56ffdc8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6521 ; free virtual = 126642default:defaulth px� 
|

Phase %s%s
101*constraints2
13.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
N
9Phase 13.2 Fix Topology Constraints | Checksum: f56ffdc8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6491 ; free virtual = 126342default:defaulth px� 
u

Phase %s%s
101*constraints2
13.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
G
2Phase 13.3 Pre Route Cleanup | Checksum: f56ffdc8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6491 ; free virtual = 126342default:defaulth px� 
w

Phase %s%s
101*constraints2
13.4 2default:default2'
Timing Verification2default:defaultZ18-101h px� 
s

Phase %s%s
101*constraints2
13.4.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
F
1Phase 13.4.1 Update Timing | Checksum: 191167263
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6487 ; free virtual = 126312default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.017 | TNS=-0.032 | WHS=0.085  | THS=0.000  |
2default:defaultZ35-416h px� 
J
5Phase 13.4 Timing Verification | Checksum: 191167263
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6487 ; free virtual = 126312default:defaulth px� 
q

Phase %s%s
101*constraints2
13.5 2default:default2!
Update Timing2default:defaultZ18-101h px� 
D
/Phase 13.5 Update Timing | Checksum: 1f5b842bc
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6487 ; free virtual = 126312default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.097 | TNS=-0.369 | WHS=-0.221 | THS=-12.622|
2default:defaultZ35-416h px� 
J
5Phase 13 Router Initialization | Checksum: 167e44b3b
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6487 ; free virtual = 126312default:defaulth px� 
q

Phase %s%s
101*constraints2
14 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
D
/Phase 14 Initial Routing | Checksum: 17ee5af74
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6487 ; free virtual = 126312default:defaulth px� 
�
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
52default:default2�
�The top 5 pins with tight setup and hold constraints:

+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|       Launch Clock       |      Capture Clock       |                                                 Pin                                                      |
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|              sys_clk_pin |              sys_clk_pin |                                                                           RISC_NP/DU/EXU/ex_data_reg[8]/D|
|              sys_clk_pin |              sys_clk_pin |                                                                          RISC_NP/DU/EXU/ex_data_reg[13]/D|
|              sys_clk_pin |              sys_clk_pin |                                                                          RISC_NP/DU/EXU/ex_data_reg[11]/D|
|              sys_clk_pin |              sys_clk_pin |                                                                           RISC_NP/DU/EXU/ex_data_reg[7]/D|
|              sys_clk_pin |              sys_clk_pin |                                                                               RISC_NP/DU/IFU/PC_reg[15]/D|
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
2default:defaultZ35-580h px� 
t

Phase %s%s
101*constraints2
15 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
v

Phase %s%s
101*constraints2
15.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.097 | TNS=-0.364 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
I
4Phase 15.1 Global Iteration 0 | Checksum: 19d9c402f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6487 ; free virtual = 126312default:defaulth px� 
v

Phase %s%s
101*constraints2
15.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.097 | TNS=-0.349 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 15.2 Global Iteration 1 | Checksum: ed84c111
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6487 ; free virtual = 126312default:defaulth px� 
F
1Phase 15 Rip-up And Reroute | Checksum: ed84c111
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6487 ; free virtual = 126312default:defaulth px� 
}

Phase %s%s
101*constraints2
16 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
o

Phase %s%s
101*constraints2
16.1 2default:default2
TNS Cleanup2default:defaultZ18-101h px� 
s

Phase %s%s
101*constraints2
16.1.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
	16.1.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
H
3Phase 16.1.1.1 Update Timing | Checksum: 142e32629
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6487 ; free virtual = 126312default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.018 | TNS=-0.034 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
u

Phase %s%s
101*constraints2
	16.1.1.2 2default:default2!
Update Timing2default:defaultZ18-101h px� 
H
3Phase 16.1.1.2 Update Timing | Checksum: 13e0d6059
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6487 ; free virtual = 126312default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.018 | TNS=-0.034 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
E
0Phase 16.1.1 Delay CleanUp | Checksum: dd589361
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6487 ; free virtual = 126312default:defaulth px� 
A
,Phase 16.1 TNS Cleanup | Checksum: dd589361
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6487 ; free virtual = 126312default:defaulth px� 
{

Phase %s%s
101*constraints2
16.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
M
8Phase 16.2 Clock Skew Optimization | Checksum: dd589361
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6487 ; free virtual = 126312default:defaulth px� 
O
:Phase 16 Delay and Skew Optimization | Checksum: dd589361
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6487 ; free virtual = 126312default:defaulth px� 
o

Phase %s%s
101*constraints2
17 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
q

Phase %s%s
101*constraints2
17.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
s

Phase %s%s
101*constraints2
17.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
F
1Phase 17.1.1 Update Timing | Checksum: 1171ddaf6
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6487 ; free virtual = 126312default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.018 | TNS=-0.034 | WHS=0.083  | THS=0.000  |
2default:defaultZ35-416h px� 
D
/Phase 17.1 Hold Fix Iter | Checksum: 1171ddaf6
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6487 ; free virtual = 126312default:defaulth px� 
B
-Phase 17 Post Hold Fix | Checksum: 1171ddaf6
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6487 ; free virtual = 126312default:defaulth px� 
u

Phase %s%s
101*constraints2
18 2default:default2'
Timing Verification2default:defaultZ18-101h px� 
q

Phase %s%s
101*constraints2
18.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
D
/Phase 18.1 Update Timing | Checksum: 1274c4d15
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6487 ; free virtual = 126312default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.018 | TNS=-0.034 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 18 Timing Verification | Checksum: 1274c4d15
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6487 ; free virtual = 126312default:defaulth px� 
n

Phase %s%s
101*constraints2
19 2default:default2 
Reset Design2default:defaultZ18-101h px� 
`
&%s nets already restored were skipped.120*route2
2962default:defaultZ35-307h px� 
A
,Phase 19 Reset Design | Checksum: 1bc06303a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6481 ; free virtual = 126242default:defaulth px� 
t

Phase %s%s
101*constraints2
20 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
�
�Timer settings changed to match sign-off timing analysis. Setup and Hold analysis on slow, fast Corners with nearest common node skew is enabled.
62*routeZ35-62h px� 
�
Post Routing Timing Summary %s
20*route2J
6| WNS=-0.017 | TNS=-0.032 | WHS=0.085  | THS=0.000  |
2default:defaultZ35-20h px� 
�
dThe design did not meet timing requirements. Please run report_timing_summary for detailed reports.
39*routeZ35-39h px�
�
�TNS is the sum of the worst slack violation on every endpoint in the design. Review the paths with the biggest WNS violations in the timing reports and modify your constraints or your design to improve both WNS and TNS.
96*routeZ35-253h px� 
G
2Phase 20 Post Router Timing | Checksum: 2357e5117
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6481 ; free virtual = 126242default:defaulth px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2535.926 ; gain = 0.000 ; free physical = 6570 ; free virtual = 127142default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
5832default:default2
222default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:00:152default:default2
00:00:132default:default2
2535.9262default:default2
0.0002default:default2
65702default:default2
127142default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2535.9262default:default2
0.0002default:default2
65702default:default2
127142default:defaultZ17-722h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.062default:default2
00:00:00.022default:default2
2535.9262default:default2
0.0002default:default2
65702default:default2
127152default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2i
U/home/tanveer/risc/Non_Pipelined/vivado/risc_np.runs/impl_1/risc_soc_synth_routed.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
Executing : report_drc -file risc_soc_synth_drc_routed.rpt -pb risc_soc_synth_drc_routed.pb -rpx risc_soc_synth_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
rreport_drc -file risc_soc_synth_drc_routed.rpt -pb risc_soc_synth_drc_routed.pb -rpx risc_soc_synth_drc_routed.rpx2default:defaultZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
Y/home/tanveer/risc/Non_Pipelined/vivado/risc_np.runs/impl_1/risc_soc_synth_drc_routed.rptY/home/tanveer/risc/Non_Pipelined/vivado/risc_np.runs/impl_1/risc_soc_synth_drc_routed.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file risc_soc_synth_methodology_drc_routed.rpt -pb risc_soc_synth_methodology_drc_routed.pb -rpx risc_soc_synth_methodology_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_methodology -file risc_soc_synth_methodology_drc_routed.rpt -pb risc_soc_synth_methodology_drc_routed.pb -rpx risc_soc_synth_methodology_drc_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
Y
$Running Methodology with %s threads
74*drc2
82default:defaultZ23-133h px� 
�
2The results of Report Methodology are in file %s.
450*coretcl2�
e/home/tanveer/risc/Non_Pipelined/vivado/risc_np.runs/impl_1/risc_soc_synth_methodology_drc_routed.rpte/home/tanveer/risc/Non_Pipelined/vivado/risc_np.runs/impl_1/risc_soc_synth_methodology_drc_routed.rpt2default:default8Z2-1520h px� 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_power -file risc_soc_synth_power_routed.rpt -pb risc_soc_synth_power_summary_routed.pb -rpx risc_soc_synth_power_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_power -file risc_soc_synth_power_routed.rpt -pb risc_soc_synth_power_summary_routed.pb -rpx risc_soc_synth_power_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
5952default:default2
222default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px� 
�
%s4*runtcl2}
iExecuting : report_route_status -file risc_soc_synth_route_status.rpt -pb risc_soc_synth_route_status.pb
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -file risc_soc_synth_timing_summary_routed.rpt -pb risc_soc_synth_timing_summary_routed.pb -rpx risc_soc_synth_timing_summary_routed.rpx
2default:defaulth px� 
s
UpdateTimingParams:%s.
91*timing2:
& Speed grade: -1L, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px� 
�
%s4*runtcl2k
WExecuting : report_incremental_reuse -file risc_soc_synth_incremental_reuse_routed.rpt
2default:defaulth px� 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px� 
�
%s4*runtcl2k
WExecuting : report_clock_utilization -file risc_soc_synth_clock_utilization_routed.rpt
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_bus_skew -warn_on_violation -file risc_soc_synth_bus_skew_routed.rpt -pb risc_soc_synth_bus_skew_routed.pb -rpx risc_soc_synth_bus_skew_routed.rpx
2default:defaulth px� 
s
UpdateTimingParams:%s.
91*timing2:
& Speed grade: -1L, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px� 


End Record