EESchema Schematic File Version 4
LIBS:7segment-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "16 bits 7 segment indicator"
Date "2019-08-14"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L DTLib:LTD-2601G U1
U 1 1 5D35F2AF
P 9250 1500
F 0 "U1" H 9250 2167 50  0000 C CNN
F 1 "LTD-2601G" H 9250 2076 50  0000 C CNN
F 2 "DTLib:LTD-2601G" H 9250 900 50  0001 C CNN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-30-95-286/D2601G.pdf" H 9030 1600 50  0001 C CNN
	1    9250 1500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 5D360505
P 3400 1050
F 0 "#PWR03" H 3400 900 50  0001 C CNN
F 1 "VCC" H 3417 1223 50  0000 C CNN
F 2 "" H 3400 1050 50  0001 C CNN
F 3 "" H 3400 1050 50  0001 C CNN
	1    3400 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1250 3500 1150
Wire Wire Line
	3500 1150 3400 1150
Wire Wire Line
	3400 1150 3400 1050
Wire Wire Line
	3400 1250 3400 1150
Connection ~ 3400 1150
$Comp
L power:GND #PWR04
U 1 1 5D3607D5
P 3400 5350
F 0 "#PWR04" H 3400 5100 50  0001 C CNN
F 1 "GND" H 3405 5177 50  0000 C CNN
F 2 "" H 3400 5350 50  0001 C CNN
F 3 "" H 3400 5350 50  0001 C CNN
	1    3400 5350
	1    0    0    -1  
$EndComp
Entry Wire Line
	1600 4450 1700 4350
Entry Wire Line
	1600 4550 1700 4450
Entry Wire Line
	1600 4650 1700 4550
Entry Wire Line
	1600 4750 1700 4650
Entry Wire Line
	1600 4850 1700 4750
Entry Wire Line
	1600 4950 1700 4850
Entry Wire Line
	1600 5050 1700 4950
Entry Wire Line
	1600 5150 1700 5050
Wire Wire Line
	1200 4450 1600 4450
Wire Wire Line
	1200 4550 1600 4550
Wire Wire Line
	1200 4650 1600 4650
Wire Wire Line
	1200 4750 1600 4750
Wire Wire Line
	1200 4850 1600 4850
Wire Wire Line
	1200 4950 1600 4950
Wire Wire Line
	1200 5050 1600 5050
Wire Wire Line
	1200 5150 1600 5150
Wire Bus Line
	1700 700  4550 700 
Text Label 1250 4450 0    50   ~ 0
IN0
Text Label 1250 4550 0    50   ~ 0
IN1
Text Label 1250 4650 0    50   ~ 0
IN2
Text Label 1250 4750 0    50   ~ 0
IN3
Text Label 1250 4850 0    50   ~ 0
IN4
Text Label 1250 4950 0    50   ~ 0
IN5
Text Label 1250 5050 0    50   ~ 0
IN6
Text Label 1250 5150 0    50   ~ 0
IN7
Text Label 2800 700  0    50   ~ 0
IN[0..15]
$Comp
L Device:R R3
U 1 1 5D36370D
P 2300 1550
F 0 "R3" V 2400 1700 50  0000 C CNN
F 1 "4.7k" V 2400 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2230 1550 50  0001 C CNN
F 3 "~" H 2300 1550 50  0001 C CNN
	1    2300 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 1550 2600 1550
$Comp
L power:VCC #PWR07
U 1 1 5D363BC3
P 2050 1550
F 0 "#PWR07" H 2050 1400 50  0001 C CNN
F 1 "VCC" V 2050 1700 50  0000 L CNN
F 2 "" H 2050 1550 50  0001 C CNN
F 3 "" H 2050 1550 50  0001 C CNN
	1    2050 1550
	0    -1   1    0   
$EndComp
Text GLabel 2000 1300 0    50   Input ~ 0
~RESET
Wire Wire Line
	2000 1300 2600 1300
Wire Wire Line
	2600 1300 2600 1550
Connection ~ 2600 1550
Wire Wire Line
	2600 1550 2450 1550
$Comp
L Device:R_Pack04 RN1
U 1 1 5D4F5153
P 4600 4450
F 0 "RN1" V 4183 4450 50  0000 C CNN
F 1 "330" V 4274 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 4875 4450 50  0001 C CNN
F 3 "~" H 4600 4450 50  0001 C CNN
	1    4600 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04 RN2
U 1 1 5D4F8BD4
P 4600 4850
F 0 "RN2" V 4800 4850 50  0000 C CNN
F 1 "330" V 4900 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 4875 4850 50  0001 C CNN
F 3 "~" H 4600 4850 50  0001 C CNN
	1    4600 4850
	0    -1   1    0   
$EndComp
Text GLabel 4250 1550 2    50   Output ~ 0
D0
Text GLabel 4250 1650 2    50   Output ~ 0
D1
Wire Wire Line
	4000 1550 4250 1550
Wire Wire Line
	4000 1650 4250 1650
Text GLabel 9850 1800 2    50   Input ~ 0
D0
Text GLabel 9850 1900 2    50   Input ~ 0
D1
Text GLabel 4800 4650 2    50   Output ~ 0
SEG_E
Text GLabel 4800 4550 2    50   Output ~ 0
SEG_D
Text GLabel 4800 4450 2    50   Output ~ 0
SEG_C
Text GLabel 4800 4850 2    50   Output ~ 0
SEG_G
Text GLabel 4800 4250 2    50   Output ~ 0
SEG_A
Text GLabel 4800 4350 2    50   Output ~ 0
SEG_B
Text GLabel 4800 4750 2    50   Output ~ 0
SEG_F
Text GLabel 8650 1200 0    50   Input ~ 0
SEG_A
Text GLabel 8650 1300 0    50   Input ~ 0
SEG_B
Text GLabel 8650 1400 0    50   Input ~ 0
SEG_C
Text GLabel 8650 1500 0    50   Input ~ 0
SEG_D
Text GLabel 8650 1600 0    50   Input ~ 0
SEG_E
Text GLabel 8650 1700 0    50   Input ~ 0
SEG_F
Text GLabel 8650 1800 0    50   Input ~ 0
SEG_G
Text GLabel 5000 3150 2    50   Input ~ 0
SCK
Text GLabel 5000 2950 2    50   Input ~ 0
MOSI
Text GLabel 5000 3050 2    50   Input ~ 0
MISO
$Comp
L MCU_Microchip_ATmega:ATmega8535-16AU U2
U 1 1 5D54C498
P 3400 3250
F 0 "U2" H 2950 5200 50  0000 C CNN
F 1 "ATmega8535-16AU" H 3950 5200 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 3400 3250 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc2502.pdf" H 3400 3250 50  0001 C CNN
	1    3400 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x16 J4
U 1 1 5D55197E
P 1000 5150
F 0 "J4" H 920 6067 50  0000 C CNN
F 1 "IN_DOWN" H 920 5976 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 1000 5150 50  0001 C CNN
F 3 "~" H 1000 5150 50  0001 C CNN
	1    1000 5150
	-1   0    0    -1  
$EndComp
Entry Wire Line
	1600 5250 1700 5150
Entry Wire Line
	1600 5350 1700 5250
Entry Wire Line
	1600 5450 1700 5350
Entry Wire Line
	1600 5550 1700 5450
Entry Wire Line
	1600 5650 1700 5550
Entry Wire Line
	1600 5750 1700 5650
Entry Wire Line
	1600 5850 1700 5750
Entry Wire Line
	1600 5950 1700 5850
Wire Wire Line
	1200 5250 1600 5250
Wire Wire Line
	1200 5350 1600 5350
Wire Wire Line
	1200 5450 1600 5450
Wire Wire Line
	1200 5550 1600 5550
Wire Wire Line
	1200 5650 1600 5650
Wire Wire Line
	1200 5750 1600 5750
Wire Wire Line
	1200 5850 1600 5850
Wire Wire Line
	1200 5950 1600 5950
Text Label 1250 5250 0    50   ~ 0
IN8
Text Label 1250 5350 0    50   ~ 0
IN9
Text Label 1250 5450 0    50   ~ 0
IN10
Text Label 1250 5550 0    50   ~ 0
IN11
Text Label 1250 5650 0    50   ~ 0
IN12
Text Label 1250 5750 0    50   ~ 0
IN13
Text Label 1250 5850 0    50   ~ 0
IN14
Text Label 1250 5950 0    50   ~ 0
IN15
Entry Wire Line
	1600 2200 1700 2100
Entry Wire Line
	1600 2300 1700 2200
Entry Wire Line
	1600 2400 1700 2300
Entry Wire Line
	1600 2500 1700 2400
Entry Wire Line
	1600 2600 1700 2500
Entry Wire Line
	1600 2700 1700 2600
Entry Wire Line
	1600 2800 1700 2700
Entry Wire Line
	1600 2900 1700 2800
Wire Wire Line
	1200 2200 1600 2200
Wire Wire Line
	1200 2300 1600 2300
Wire Wire Line
	1200 2400 1600 2400
Wire Wire Line
	1200 2500 1600 2500
Wire Wire Line
	1200 2600 1600 2600
Wire Wire Line
	1200 2700 1600 2700
Wire Wire Line
	1200 2800 1600 2800
Wire Wire Line
	1200 2900 1600 2900
Text Label 1250 2200 0    50   ~ 0
IN0
Text Label 1250 2300 0    50   ~ 0
IN1
Text Label 1250 2400 0    50   ~ 0
IN2
Text Label 1250 2500 0    50   ~ 0
IN3
Text Label 1250 2600 0    50   ~ 0
IN4
Text Label 1250 2700 0    50   ~ 0
IN5
Text Label 1250 2800 0    50   ~ 0
IN6
Text Label 1250 2900 0    50   ~ 0
IN7
$Comp
L Connector_Generic:Conn_01x16 J2
U 1 1 5D563480
P 1000 2900
F 0 "J2" H 920 3817 50  0000 C CNN
F 1 "IN_UP" H 920 3726 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 1000 2900 50  0001 C CNN
F 3 "~" H 1000 2900 50  0001 C CNN
	1    1000 2900
	-1   0    0    -1  
$EndComp
Entry Wire Line
	1600 3000 1700 2900
Entry Wire Line
	1600 3100 1700 3000
Entry Wire Line
	1600 3200 1700 3100
Entry Wire Line
	1600 3300 1700 3200
Entry Wire Line
	1600 3400 1700 3300
Entry Wire Line
	1600 3500 1700 3400
Entry Wire Line
	1600 3600 1700 3500
Entry Wire Line
	1600 3700 1700 3600
Wire Wire Line
	1200 3000 1600 3000
Wire Wire Line
	1200 3100 1600 3100
Wire Wire Line
	1200 3200 1600 3200
Wire Wire Line
	1200 3300 1600 3300
Wire Wire Line
	1200 3400 1600 3400
Wire Wire Line
	1200 3500 1600 3500
Wire Wire Line
	1200 3600 1600 3600
Wire Wire Line
	1200 3700 1600 3700
Text Label 1250 3000 0    50   ~ 0
IN8
Text Label 1250 3100 0    50   ~ 0
IN9
Text Label 1250 3200 0    50   ~ 0
IN10
Text Label 1250 3300 0    50   ~ 0
IN11
Text Label 1250 3400 0    50   ~ 0
IN12
Text Label 1250 3500 0    50   ~ 0
IN13
Text Label 1250 3600 0    50   ~ 0
IN14
Text Label 1250 3700 0    50   ~ 0
IN15
Wire Wire Line
	3500 5250 3500 5350
Wire Wire Line
	3500 5350 3400 5350
Wire Wire Line
	3400 5250 3400 5350
Connection ~ 3400 5350
Entry Wire Line
	4450 2650 4550 2550
Entry Wire Line
	4450 2750 4550 2650
Entry Wire Line
	4450 2850 4550 2750
Entry Wire Line
	4450 2950 4550 2850
Entry Wire Line
	4450 3050 4550 2950
Entry Wire Line
	4450 3150 4550 3050
Entry Wire Line
	4450 2550 4550 2450
Entry Wire Line
	4450 2450 4550 2350
Entry Wire Line
	4450 3550 4550 3450
Entry Wire Line
	4450 3650 4550 3550
Entry Wire Line
	4450 3750 4550 3650
Entry Wire Line
	4450 3850 4550 3750
Entry Wire Line
	4450 3950 4550 3850
Entry Wire Line
	4450 4050 4550 3950
Entry Wire Line
	4450 3450 4550 3350
Entry Wire Line
	4450 3350 4550 3250
Wire Wire Line
	4000 2450 4450 2450
Wire Wire Line
	4000 2550 4450 2550
Wire Wire Line
	4000 2650 4450 2650
Wire Wire Line
	4000 2750 4450 2750
Wire Wire Line
	4000 2850 4450 2850
Wire Wire Line
	4000 2950 4450 2950
Wire Wire Line
	4000 3050 4450 3050
Wire Wire Line
	4000 3150 4450 3150
Wire Wire Line
	4000 3350 4450 3350
Wire Wire Line
	4000 3450 4450 3450
Wire Wire Line
	4000 3550 4450 3550
Wire Wire Line
	4000 3650 4450 3650
Wire Wire Line
	4000 3750 4450 3750
Wire Wire Line
	4000 3850 4450 3850
Wire Wire Line
	4000 3950 4450 3950
Wire Wire Line
	4000 4050 4450 4050
Text Label 4150 2450 0    50   ~ 0
IN0
Text Label 4150 2550 0    50   ~ 0
IN1
Text Label 4150 2650 0    50   ~ 0
IN2
Text Label 4150 2750 0    50   ~ 0
IN3
Text Label 4150 2850 0    50   ~ 0
IN4
Text Label 4150 2950 0    50   ~ 0
IN5
Text Label 4150 3050 0    50   ~ 0
IN6
Text Label 4150 3150 0    50   ~ 0
IN7
Text Label 4150 3350 0    50   ~ 0
IN8
Text Label 4150 3450 0    50   ~ 0
IN9
Text Label 4150 3550 0    50   ~ 0
IN10
Text Label 4150 3650 0    50   ~ 0
IN11
Text Label 4150 3750 0    50   ~ 0
IN12
Text Label 4150 3850 0    50   ~ 0
IN13
Text Label 4150 3950 0    50   ~ 0
IN14
Text Label 4150 4050 0    50   ~ 0
IN15
Wire Wire Line
	4000 4250 4400 4250
Wire Wire Line
	4000 4350 4400 4350
Wire Wire Line
	4000 4450 4400 4450
Wire Wire Line
	4000 4550 4400 4550
Wire Wire Line
	4000 4650 4400 4650
Wire Wire Line
	4000 4750 4400 4750
Wire Wire Line
	4000 4850 4400 4850
$Comp
L DTLib:LTD-2601G U3
U 1 1 5D5C61AA
P 9250 2750
F 0 "U3" H 9250 3417 50  0000 C CNN
F 1 "LTD-2601G" H 9250 3326 50  0000 C CNN
F 2 "DTLib:LTD-2601G" H 9250 2150 50  0001 C CNN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-30-95-286/D2601G.pdf" H 9030 2850 50  0001 C CNN
	1    9250 2750
	1    0    0    -1  
$EndComp
Text GLabel 9850 3050 2    50   Input ~ 0
D2
Text GLabel 9850 3150 2    50   Input ~ 0
D3
Text GLabel 8650 2450 0    50   Input ~ 0
SEG_A
Text GLabel 8650 2550 0    50   Input ~ 0
SEG_B
Text GLabel 8650 2650 0    50   Input ~ 0
SEG_C
Text GLabel 8650 2750 0    50   Input ~ 0
SEG_D
Text GLabel 8650 2850 0    50   Input ~ 0
SEG_E
Text GLabel 8650 2950 0    50   Input ~ 0
SEG_F
Text GLabel 8650 3050 0    50   Input ~ 0
SEG_G
Text GLabel 4250 1750 2    50   Output ~ 0
D2
Text GLabel 4250 1850 2    50   Output ~ 0
D3
Wire Wire Line
	4000 1750 4250 1750
Wire Wire Line
	4000 1850 4250 1850
Entry Wire Line
	4550 2850 4650 2950
Entry Wire Line
	4550 2950 4650 3050
Entry Wire Line
	4550 3050 4650 3150
Wire Wire Line
	4650 2950 5000 2950
Wire Wire Line
	4650 3050 5000 3050
Wire Wire Line
	4650 3150 5000 3150
Text Label 4750 2950 0    50   ~ 0
IN5
Text Label 4750 3050 0    50   ~ 0
IN6
Text Label 4750 3150 0    50   ~ 0
IN7
Wire Wire Line
	2150 1550 2050 1550
$Comp
L DTLib:LTD-2601G U4
U 1 1 5D6022C5
P 9250 4000
F 0 "U4" H 9250 4667 50  0000 C CNN
F 1 "LTD-2601G" H 9250 4576 50  0000 C CNN
F 2 "DTLib:LTD-2601G" H 9250 3400 50  0001 C CNN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-30-95-286/D2601G.pdf" H 9030 4100 50  0001 C CNN
	1    9250 4000
	1    0    0    -1  
$EndComp
Text GLabel 9850 4300 2    50   Input ~ 0
D4
Text GLabel 9850 4400 2    50   Input ~ 0
D5
Text GLabel 8650 3700 0    50   Input ~ 0
SEG_A
Text GLabel 8650 3800 0    50   Input ~ 0
SEG_B
Text GLabel 8650 3900 0    50   Input ~ 0
SEG_C
Text GLabel 8650 4000 0    50   Input ~ 0
SEG_D
Text GLabel 8650 4100 0    50   Input ~ 0
SEG_E
Text GLabel 8650 4200 0    50   Input ~ 0
SEG_F
Text GLabel 8650 4300 0    50   Input ~ 0
SEG_G
Text GLabel 4250 1950 2    50   Output ~ 0
D4
Text GLabel 4250 2050 2    50   Output ~ 0
D5
Wire Wire Line
	4000 1950 4250 1950
Wire Wire Line
	4000 2050 4250 2050
$Comp
L Jumper:Jumper_3_Bridged12 JP2
U 1 1 5D5BA122
P 4350 6700
F 0 "JP2" V 4304 6767 50  0000 L CNN
F 1 "BIN/DEC" V 4395 6767 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4350 6700 50  0001 C CNN
F 3 "~" H 4350 6700 50  0001 C CNN
	1    4350 6700
	0    -1   1    0   
$EndComp
$Comp
L Jumper:Jumper_3_Bridged12 JP1
U 1 1 5D5BA129
P 3650 6750
F 0 "JP1" V 3604 6817 50  0000 L CNN
F 1 "LATCH MODE" V 3695 6817 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3650 6750 50  0001 C CNN
F 3 "~" H 3650 6750 50  0001 C CNN
	1    3650 6750
	0    -1   1    0   
$EndComp
Text GLabel 4800 6250 2    50   Output ~ 0
SEL_NUMBERBASE
Text GLabel 4800 7400 2    50   Output ~ 0
SEL_LATCHMODE
$Comp
L Device:R_Pack04 RN3
U 1 1 5D5BA132
P 5050 6750
F 0 "RN3" V 5375 6750 50  0000 C CNN
F 1 "10K" V 5284 6750 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 5325 6750 50  0001 C CNN
F 3 "~" H 5050 6750 50  0001 C CNN
	1    5050 6750
	0    1    -1   0   
$EndComp
Wire Wire Line
	4850 6650 4750 6650
Wire Wire Line
	4750 6650 4750 6700
Wire Wire Line
	4750 6750 4850 6750
Wire Wire Line
	4850 6850 4750 6850
Wire Wire Line
	4750 6850 4750 6900
Wire Wire Line
	4750 6950 4850 6950
$Comp
L power:VCC #PWR09
U 1 1 5D5BA13F
P 5450 6600
F 0 "#PWR09" H 5450 6450 50  0001 C CNN
F 1 "VCC" H 5467 6773 50  0000 C CNN
F 2 "" H 5450 6600 50  0001 C CNN
F 3 "" H 5450 6600 50  0001 C CNN
	1    5450 6600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5D5BA145
P 5400 7050
F 0 "#PWR08" H 5400 6800 50  0001 C CNN
F 1 "GND" H 5405 6877 50  0000 C CNN
F 2 "" H 5400 7050 50  0001 C CNN
F 3 "" H 5400 7050 50  0001 C CNN
	1    5400 7050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5450 6600 5450 6650
Wire Wire Line
	5450 6650 5250 6650
Wire Wire Line
	5250 6850 5450 6850
Wire Wire Line
	5450 6850 5450 6650
Connection ~ 5450 6650
Wire Wire Line
	5250 6750 5400 6750
Wire Wire Line
	5250 6950 5400 6950
Wire Wire Line
	5400 6750 5400 6950
Connection ~ 5400 6950
Wire Wire Line
	5400 6950 5400 7050
Wire Wire Line
	4750 6700 4500 6700
Connection ~ 4750 6700
Wire Wire Line
	4750 6700 4750 6750
Wire Wire Line
	3800 6750 3800 6900
Wire Wire Line
	3800 6900 4750 6900
Connection ~ 4750 6900
Wire Wire Line
	4750 6900 4750 6950
$Comp
L power:GND #PWR02
U 1 1 5D5BA15C
P 3650 7000
F 0 "#PWR02" H 3650 6750 50  0001 C CNN
F 1 "GND" H 3655 6827 50  0000 C CNN
F 2 "" H 3650 7000 50  0001 C CNN
F 3 "" H 3650 7000 50  0001 C CNN
	1    3650 7000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5D5BA162
P 4350 6950
F 0 "#PWR06" H 4350 6700 50  0001 C CNN
F 1 "GND" H 4355 6777 50  0000 C CNN
F 2 "" H 4350 6950 50  0001 C CNN
F 3 "" H 4350 6950 50  0001 C CNN
	1    4350 6950
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5D5BA168
P 3650 6500
F 0 "#PWR01" H 3650 6350 50  0001 C CNN
F 1 "VCC" H 3667 6673 50  0000 C CNN
F 2 "" H 3650 6500 50  0001 C CNN
F 3 "" H 3650 6500 50  0001 C CNN
	1    3650 6500
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 5D5BA16E
P 4350 6450
F 0 "#PWR05" H 4350 6300 50  0001 C CNN
F 1 "VCC" H 4367 6623 50  0000 C CNN
F 2 "" H 4350 6450 50  0001 C CNN
F 3 "" H 4350 6450 50  0001 C CNN
	1    4350 6450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4800 6250 4750 6250
Wire Wire Line
	4750 6250 4750 6650
Connection ~ 4750 6650
Wire Wire Line
	4800 7400 4750 7400
Wire Wire Line
	4750 7400 4750 6950
Connection ~ 4750 6950
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 5D5CF319
P 8000 5750
F 0 "J3" H 8200 5750 50  0000 R CNN
F 1 "VCC" H 8050 5650 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8000 5750 50  0001 C CNN
F 3 "~" H 8000 5750 50  0001 C CNN
	1    8000 5750
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 5D5CF320
P 8000 6050
F 0 "J5" H 8200 6050 50  0000 R CNN
F 1 "GND" H 8050 6150 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8000 6050 50  0001 C CNN
F 3 "~" H 8000 6050 50  0001 C CNN
	1    8000 6050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5D5CF327
P 10000 6150
F 0 "#PWR011" H 10000 5900 50  0001 C CNN
F 1 "GND" H 10005 5977 50  0000 C CNN
F 2 "" H 10000 6150 50  0001 C CNN
F 3 "" H 10000 6150 50  0001 C CNN
	1    10000 6150
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D5CF32D
P 9450 6050
F 0 "#FLG02" H 9450 6125 50  0001 C CNN
F 1 "PWR_FLAG" H 9250 6200 50  0000 L CNN
F 2 "" H 9450 6050 50  0001 C CNN
F 3 "~" H 9450 6050 50  0001 C CNN
	1    9450 6050
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 5D5CF333
P 9150 5900
F 0 "C1" H 9265 5946 50  0000 L CNN
F 1 "0.1uF" H 9265 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9188 5750 50  0001 C CNN
F 3 "~" H 9150 5900 50  0001 C CNN
	1    9150 5900
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D5CF33A
P 9450 5750
F 0 "#FLG01" H 9450 5825 50  0001 C CNN
F 1 "PWR_FLAG" H 9300 5900 50  0000 L CNN
F 2 "" H 9450 5750 50  0001 C CNN
F 3 "~" H 9450 5750 50  0001 C CNN
	1    9450 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5D5CF340
P 9650 5900
F 0 "C2" H 9765 5946 50  0000 L CNN
F 1 "0.1uF" H 9765 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9688 5750 50  0001 C CNN
F 3 "~" H 9650 5900 50  0001 C CNN
	1    9650 5900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR010
U 1 1 5D5CF347
P 10000 5750
F 0 "#PWR010" H 10000 5600 50  0001 C CNN
F 1 "VCC" H 10017 5923 50  0000 C CNN
F 2 "" H 10000 5750 50  0001 C CNN
F 3 "" H 10000 5750 50  0001 C CNN
	1    10000 5750
	1    0    0    -1  
$EndComp
Connection ~ 9150 5750
Wire Wire Line
	9150 5750 9450 5750
Connection ~ 9650 5750
Wire Wire Line
	9650 5750 10000 5750
Wire Wire Line
	10000 6050 10000 6150
Connection ~ 9150 6050
Wire Wire Line
	9150 6050 9450 6050
Connection ~ 9650 6050
Wire Wire Line
	9650 6050 10000 6050
Wire Wire Line
	8950 5750 9150 5750
$Comp
L Diode:MBR0520LT D1
U 1 1 5D5CF357
P 8800 5750
F 0 "D1" H 8800 5534 50  0000 C CNN
F 1 "MBR0520LT" H 8800 5625 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 8800 5575 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MBR0520LT1-D.PDF" H 8800 5750 50  0001 C CNN
	1    8800 5750
	-1   0    0    1   
$EndComp
Connection ~ 9450 5750
Wire Wire Line
	9450 5750 9650 5750
Wire Wire Line
	8200 5750 8650 5750
Connection ~ 9450 6050
Wire Wire Line
	9450 6050 9650 6050
Wire Wire Line
	8200 6050 9150 6050
Text Label 8300 5750 0    50   ~ 0
VIN
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 5D5CF365
P 6750 5350
F 0 "J1" H 6950 5350 50  0000 R CNN
F 1 "RESET" H 6800 5250 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6750 5350 50  0001 C CNN
F 3 "~" H 6750 5350 50  0001 C CNN
	1    6750 5350
	1    0    0    -1  
$EndComp
Text GLabel 6550 5350 0    50   Input ~ 0
~RESET
Wire Wire Line
	2800 2150 2700 2150
$Comp
L power:GND #PWR0101
U 1 1 5D5F2B47
P 2200 2250
F 0 "#PWR0101" H 2200 2000 50  0001 C CNN
F 1 "GND" H 2205 2077 50  0000 C CNN
F 2 "" H 2200 2250 50  0001 C CNN
F 3 "" H 2200 2250 50  0001 C CNN
	1    2200 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2150 2200 2250
$Comp
L Device:C C3
U 1 1 5D5F2B4E
P 2550 2150
F 0 "C3" V 2802 2150 50  0000 C CNN
F 1 "0.1uF" V 2711 2150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2588 2000 50  0001 C CNN
F 3 "~" H 2550 2150 50  0001 C CNN
	1    2550 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 2150 2200 2150
NoConn ~ 2800 1750
NoConn ~ 2800 1950
Text GLabel 4650 2150 2    50   Input ~ 0
SEL_NUMBERBASE
Text GLabel 4650 2250 2    50   Input ~ 0
SEL_LATCHMODE
Wire Wire Line
	4650 2150 4000 2150
Wire Wire Line
	4650 2250 4000 2250
NoConn ~ 8650 1900
NoConn ~ 8650 3150
NoConn ~ 8650 4400
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5D5D3B84
P 4550 5350
F 0 "J?" H 4750 5350 50  0000 R CNN
F 1 "LATCH" H 4600 5250 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 4550 5350 50  0001 C CNN
F 3 "~" H 4550 5350 50  0001 C CNN
	1    4550 5350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5D5D3C76
P 4550 5550
F 0 "J?" H 4750 5550 50  0000 R CNN
F 1 "LATCH" H 4600 5450 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 4550 5550 50  0001 C CNN
F 3 "~" H 4550 5550 50  0001 C CNN
	1    4550 5550
	1    0    0    -1  
$EndComp
NoConn ~ 4400 4950
NoConn ~ 4800 4950
Wire Wire Line
	4350 5550 4200 5550
Wire Wire Line
	4200 5550 4200 5350
Wire Wire Line
	4200 4950 4000 4950
Wire Wire Line
	4350 5350 4200 5350
Wire Bus Line
	4550 700  4550 3950
Wire Bus Line
	1700 700  1700 5850
Connection ~ 4200 5350
Wire Wire Line
	4200 5350 4200 4950
$EndSCHEMATC
