EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
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
LIBS:valves
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
L SW_PUSH SW2
U 1 1 55FA5FB1
P 6100 7200
F 0 "SW2" H 6250 7310 50  0000 C CNN
F 1 "SW_PUSH" H 6100 7120 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_EVQPE1" H 6100 7200 60  0001 C CNN
F 3 "" H 6100 7200 60  0000 C CNN
	1    6100 7200
	1    0    0    -1  
$EndComp
$Comp
L SPST SW1
U 1 1 55FA5FF3
P 1900 6900
F 0 "SW1" H 1900 7000 50  0000 C CNN
F 1 "SPST" H 1900 6800 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_EVQPE1" H 1900 6900 60  0001 C CNN
F 3 "" H 1900 6900 60  0000 C CNN
	1    1900 6900
	1    0    0    -1  
$EndComp
Text Label 6600 7200 0    60   ~ 0
BTN
$Comp
L Battery BT1
U 1 1 55FC17E6
P 1200 7250
F 0 "BT1" H 1300 7300 50  0000 L CNN
F 1 "9V Battery" H 1300 7200 50  0000 L CNN
F 2 "Connect:GS2" V 1200 7290 60  0001 C CNN
F 3 "" V 1200 7290 60  0000 C CNN
	1    1200 7250
	1    0    0    -1  
$EndComp
$Comp
L LM7805 U1
U 1 1 55FC1876
P 3200 6950
F 0 "U1" H 3350 6754 60  0000 C CNN
F 1 "LM7805" H 3200 7150 60  0000 C CNN
F 2 "Power_Integrations:TO-220" H 3200 6950 60  0001 C CNN
F 3 "" H 3200 6950 60  0000 C CNN
	1    3200 6950
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 55FC19A1
P 3800 7250
F 0 "C2" H 3825 7350 50  0000 L CNN
F 1 "0.1uF" H 3825 7150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3838 7100 30  0001 C CNN
F 3 "" H 3800 7250 60  0000 C CNN
	1    3800 7250
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 55FC1C19
P 2600 7250
F 0 "C1" H 2625 7350 50  0000 L CNN
F 1 "0.33uF" H 2625 7150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2638 7100 30  0001 C CNN
F 3 "" H 2600 7250 60  0000 C CNN
	1    2600 7250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR01
U 1 1 5606514A
P 10400 2900
F 0 "#PWR01" H 10400 2750 50  0001 C CNN
F 1 "+5V" H 10400 3040 50  0000 C CNN
F 2 "" H 10400 2900 60  0000 C CNN
F 3 "" H 10400 2900 60  0000 C CNN
	1    10400 2900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 5606519A
P 4200 6900
F 0 "#PWR02" H 4200 6750 50  0001 C CNN
F 1 "+5V" H 4200 7040 50  0000 C CNN
F 2 "" H 4200 6900 60  0000 C CNN
F 3 "" H 4200 6900 60  0000 C CNN
	1    4200 6900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 560656A2
P 4200 7600
F 0 "#PWR03" H 4200 7350 50  0001 C CNN
F 1 "GND" H 4200 7450 50  0000 C CNN
F 2 "" H 4200 7600 60  0000 C CNN
F 3 "" H 4200 7600 60  0000 C CNN
	1    4200 7600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR04
U 1 1 5606587A
P 10400 5700
F 0 "#PWR04" H 10400 5450 50  0001 C CNN
F 1 "GND" H 10400 5550 50  0000 C CNN
F 2 "" H 10400 5700 60  0000 C CNN
F 3 "" H 10400 5700 60  0000 C CNN
	1    10400 5700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 56065D8C
P 5600 7200
F 0 "#PWR05" H 5600 6950 50  0001 C CNN
F 1 "GND" H 5600 7050 50  0000 C CNN
F 2 "" H 5600 7200 60  0000 C CNN
F 3 "" H 5600 7200 60  0000 C CNN
	1    5600 7200
	1    0    0    -1  
$EndComp
$Comp
L LED_RABG D3
U 1 1 5606A103
P 3300 1900
F 0 "D3" H 3375 2250 50  0000 C CNN
F 1 "LED_RABG" H 3325 1550 50  0000 C CNN
F 2 "" H 3250 1850 50  0000 C CNN
F 3 "" H 3250 1850 50  0000 C CNN
	1    3300 1900
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR06
U 1 1 5606A1B0
P 2300 2400
F 0 "#PWR06" H 2300 2250 50  0001 C CNN
F 1 "+5V" H 2300 2540 50  0000 C CNN
F 2 "" H 2300 2400 60  0000 C CNN
F 3 "" H 2300 2400 60  0000 C CNN
	1    2300 2400
	-1   0    0    1   
$EndComp
$Comp
L LED_RABG D2
U 1 1 5606A5B2
P 2300 1900
F 0 "D2" H 2375 2250 50  0000 C CNN
F 1 "LED_RABG" H 2325 1550 50  0000 C CNN
F 2 "" H 2250 1850 50  0000 C CNN
F 3 "" H 2250 1850 50  0000 C CNN
	1    2300 1900
	0    1    1    0   
$EndComp
$Comp
L LED_RABG D1
U 1 1 5606A612
P 1300 1900
F 0 "D1" H 1375 2250 50  0000 C CNN
F 1 "LED_RABG" H 1325 1550 50  0000 C CNN
F 2 "" H 1250 1850 50  0000 C CNN
F 3 "" H 1250 1850 50  0000 C CNN
	1    1300 1900
	0    1    1    0   
$EndComp
$Comp
L LED D4
U 1 1 5606B07D
P 5400 4700
F 0 "D4" H 5400 4800 50  0000 C CNN
F 1 "LED" H 5400 4600 50  0000 C CNN
F 2 "" H 5400 4700 60  0000 C CNN
F 3 "" H 5400 4700 60  0000 C CNN
	1    5400 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5606B107
P 5000 4700
F 0 "#PWR07" H 5000 4450 50  0001 C CNN
F 1 "GND" H 5000 4550 50  0000 C CNN
F 2 "" H 5000 4700 60  0000 C CNN
F 3 "" H 5000 4700 60  0000 C CNN
	1    5000 4700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 5606B166
P 6300 4700
F 0 "#PWR08" H 6300 4550 50  0001 C CNN
F 1 "+5V" H 6300 4840 50  0000 C CNN
F 2 "" H 6300 4700 60  0000 C CNN
F 3 "" H 6300 4700 60  0000 C CNN
	1    6300 4700
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 5606B21A
P 5950 4700
F 0 "R16" V 6030 4700 50  0000 C CNN
F 1 "120" V 5950 4700 50  0000 C CNN
F 2 "" V 5880 4700 30  0000 C CNN
F 3 "" H 5950 4700 30  0000 C CNN
	1    5950 4700
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 5606B47B
P 4050 1300
F 0 "R8" V 4130 1300 50  0000 C CNN
F 1 "39" V 4050 1300 50  0000 C CNN
F 2 "" V 3980 1300 30  0000 C CNN
F 3 "" H 4050 1300 30  0000 C CNN
	1    4050 1300
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 5606B591
P 4050 1500
F 0 "R9" V 4130 1500 50  0000 C CNN
F 1 "82" V 4050 1500 50  0000 C CNN
F 2 "" V 3980 1500 30  0000 C CNN
F 3 "" H 4050 1500 30  0000 C CNN
	1    4050 1500
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 5606B5F5
P 4050 1100
F 0 "R7" V 4130 1100 50  0000 C CNN
F 1 "47" V 4050 1100 50  0000 C CNN
F 2 "" V 3980 1100 30  0000 C CNN
F 3 "" H 4050 1100 30  0000 C CNN
	1    4050 1100
	0    1    1    0   
$EndComp
Text Notes 3700 800  0    60   ~ 0
OUTPUT
Text Label 4300 1500 0    60   ~ 0
LED_R
Text Label 4300 1100 0    60   ~ 0
LED_G
Text Label 4300 1300 0    60   ~ 0
LED_B
$Comp
L SPEAKER SP1
U 1 1 560725F8
P 4600 2300
F 0 "SP1" H 4500 2550 50  0000 C CNN
F 1 "SPEAKER" H 4500 2050 50  0000 C CNN
F 2 "" H 4600 2300 60  0000 C CNN
F 3 "" H 4600 2300 60  0000 C CNN
	1    4600 2300
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5607288B
P 5600 2600
F 0 "#PWR09" H 5600 2350 50  0001 C CNN
F 1 "GND" H 5600 2450 50  0000 C CNN
F 2 "" H 5600 2600 60  0000 C CNN
F 3 "" H 5600 2600 60  0000 C CNN
	1    5600 2600
	-1   0    0    -1  
$EndComp
Text Notes 7400 7500 0    60   ~ 0
Pomodoro Timer
Text Label 6600 1800 0    60   ~ 0
SPEAKER
$Comp
L C C3
U 1 1 5607462F
P 5250 2200
F 0 "C3" H 5275 2300 50  0000 L CNN
F 1 "1uF" H 5275 2100 50  0000 L CNN
F 2 "" H 5288 2050 30  0000 C CNN
F 3 "" H 5250 2200 60  0000 C CNN
	1    5250 2200
	0    -1   1    0   
$EndComp
$Comp
L ATTINY48-MM IC1
U 1 1 56080815
P 9350 4250
F 0 "IC1" H 8600 5550 40  0000 C CNN
F 1 "ATTINY48-MM" H 9950 2850 40  0000 C CNN
F 2 "MLF/QFN28" H 9350 4250 35  0000 C CIN
F 3 "" H 9350 4250 60  0000 C CNN
	1    9350 4250
	-1   0    0    -1  
$EndComp
$Comp
L CA56-12 AFF1
U 1 1 56081DB9
P 3100 4800
F 0 "AFF1" H 3100 5600 50  0000 C CNN
F 1 "CA56-12" H 3100 5500 50  0000 C CNN
F 2 "" H 2600 4800 60  0000 C CNN
F 3 "" H 2600 4800 60  0000 C CNN
	1    3100 4800
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 560826BE
P 1650 5600
F 0 "R3" V 1730 5600 50  0000 C CNN
F 1 "39" V 1650 5600 50  0000 C CNN
F 2 "" V 1580 5600 30  0000 C CNN
F 3 "" H 1650 5600 30  0000 C CNN
	1    1650 5600
	0    -1   1    0   
$EndComp
Text Label 1300 5600 2    60   ~ 0
7SEG_A
$Comp
L R R4
U 1 1 56082B7A
P 1650 5800
F 0 "R4" V 1730 5800 50  0000 C CNN
F 1 "39" V 1650 5800 50  0000 C CNN
F 2 "" V 1580 5800 30  0000 C CNN
F 3 "" H 1650 5800 30  0000 C CNN
	1    1650 5800
	0    -1   1    0   
$EndComp
Text Label 1300 5800 2    60   ~ 0
7SEG_B
$Comp
L R R5
U 1 1 56082BCB
P 1650 6000
F 0 "R5" V 1730 6000 50  0000 C CNN
F 1 "39" V 1650 6000 50  0000 C CNN
F 2 "" V 1580 6000 30  0000 C CNN
F 3 "" H 1650 6000 30  0000 C CNN
	1    1650 6000
	0    -1   1    0   
$EndComp
Text Label 1300 6000 2    60   ~ 0
7SEG_C
$Comp
L R R6
U 1 1 56082C1F
P 1650 6200
F 0 "R6" V 1730 6200 50  0000 C CNN
F 1 "39" V 1650 6200 50  0000 C CNN
F 2 "" V 1580 6200 30  0000 C CNN
F 3 "" H 1650 6200 30  0000 C CNN
	1    1650 6200
	0    -1   1    0   
$EndComp
Text Label 1300 6200 2    60   ~ 0
7SEG_D
$Comp
L R R12
U 1 1 56082C74
P 4550 5600
F 0 "R12" V 4630 5600 50  0000 C CNN
F 1 "39" V 4550 5600 50  0000 C CNN
F 2 "" V 4480 5600 30  0000 C CNN
F 3 "" H 4550 5600 30  0000 C CNN
	1    4550 5600
	0    1    1    0   
$EndComp
Text Label 4900 6200 0    60   ~ 0
7SEG_E
$Comp
L R R13
U 1 1 56082CCB
P 4550 5800
F 0 "R13" V 4630 5800 50  0000 C CNN
F 1 "39" V 4550 5800 50  0000 C CNN
F 2 "" V 4480 5800 30  0000 C CNN
F 3 "" H 4550 5800 30  0000 C CNN
	1    4550 5800
	0    1    1    0   
$EndComp
Text Label 4900 6000 0    60   ~ 0
7SEG_F
$Comp
L R R14
U 1 1 56082D24
P 4550 6000
F 0 "R14" V 4630 6000 50  0000 C CNN
F 1 "39" V 4550 6000 50  0000 C CNN
F 2 "" V 4480 6000 30  0000 C CNN
F 3 "" H 4550 6000 30  0000 C CNN
	1    4550 6000
	0    1    1    0   
$EndComp
Text Label 4900 5800 0    60   ~ 0
7SEG_G
$Comp
L R R15
U 1 1 56082D7F
P 4550 6200
F 0 "R15" V 4630 6200 50  0000 C CNN
F 1 "39" V 4550 6200 50  0000 C CNN
F 2 "" V 4480 6200 30  0000 C CNN
F 3 "" H 4550 6200 30  0000 C CNN
	1    4550 6200
	0    1    1    0   
$EndComp
Text Label 4900 5600 0    60   ~ 0
7SEG_DP
$Comp
L +5V #PWR010
U 1 1 560848D5
P 2400 2900
F 0 "#PWR010" H 2400 2750 50  0001 C CNN
F 1 "+5V" H 2400 3040 50  0000 C CNN
F 2 "" H 2400 2900 60  0000 C CNN
F 3 "" H 2400 2900 60  0000 C CNN
	1    2400 2900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR011
U 1 1 56084941
P 2900 2900
F 0 "#PWR011" H 2900 2750 50  0001 C CNN
F 1 "+5V" H 2900 3040 50  0000 C CNN
F 2 "" H 2900 2900 60  0000 C CNN
F 3 "" H 2900 2900 60  0000 C CNN
	1    2900 2900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR012
U 1 1 560849A6
P 3400 2900
F 0 "#PWR012" H 3400 2750 50  0001 C CNN
F 1 "+5V" H 3400 3040 50  0000 C CNN
F 2 "" H 3400 2900 60  0000 C CNN
F 3 "" H 3400 2900 60  0000 C CNN
	1    3400 2900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR013
U 1 1 56084A0B
P 3900 2900
F 0 "#PWR013" H 3900 2750 50  0001 C CNN
F 1 "+5V" H 3900 3040 50  0000 C CNN
F 2 "" H 3900 2900 60  0000 C CNN
F 3 "" H 3900 2900 60  0000 C CNN
	1    3900 2900
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 56084C8C
P 4550 3700
F 0 "R11" V 4630 3700 50  0000 C CNN
F 1 "4.7k" V 4550 3700 50  0000 C CNN
F 2 "" V 4480 3700 30  0000 C CNN
F 3 "" H 4550 3700 30  0000 C CNN
	1    4550 3700
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 56084D63
P 4550 3300
F 0 "R10" V 4630 3300 50  0000 C CNN
F 1 "4.7k" V 4550 3300 50  0000 C CNN
F 2 "" V 4480 3300 30  0000 C CNN
F 3 "" H 4550 3300 30  0000 C CNN
	1    4550 3300
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 56084DD1
P 1650 3700
F 0 "R2" V 1730 3700 50  0000 C CNN
F 1 "4.7k" V 1650 3700 50  0000 C CNN
F 2 "" V 1580 3700 30  0000 C CNN
F 3 "" H 1650 3700 30  0000 C CNN
	1    1650 3700
	0    -1   1    0   
$EndComp
$Comp
L R R1
U 1 1 56084E48
P 1650 3300
F 0 "R1" V 1730 3300 50  0000 C CNN
F 1 "4.7k" V 1650 3300 50  0000 C CNN
F 2 "" V 1580 3300 30  0000 C CNN
F 3 "" H 1650 3300 30  0000 C CNN
	1    1650 3300
	0    -1   1    0   
$EndComp
Text Label 4900 3700 0    60   ~ 0
7SEG_4
Text Label 4900 3300 0    60   ~ 0
7SEG_3
Text Label 1300 3700 2    60   ~ 0
7SEG_2
Text Label 1300 3300 2    60   ~ 0
7SEG_1
Text Notes 900  7550 1    60   ~ 0
POWER SUPPLY
Text Notes 6000 6900 0    60   ~ 0
INPUT
$Comp
L BC558 Q4
U 1 1 56087A15
P 4000 3700
F 0 "Q4" H 4200 3775 50  0000 L CNN
F 1 "FCX717TA" H 4200 3700 50  0000 L CNN
F 2 "TO-92" H 4200 3625 50  0000 L CIN
F 3 "" H 4000 3700 50  0000 L CNN
	1    4000 3700
	-1   0    0    1   
$EndComp
$Comp
L BC558 Q3
U 1 1 56087FF9
P 3500 3300
F 0 "Q3" H 3700 3375 50  0000 L CNN
F 1 "FCX717TA" H 3700 3300 50  0000 L CNN
F 2 "TO-92" H 3700 3225 50  0000 L CIN
F 3 "" H 3500 3300 50  0000 L CNN
	1    3500 3300
	-1   0    0    1   
$EndComp
$Comp
L BC558 Q2
U 1 1 56088071
P 2800 3700
F 0 "Q2" H 3000 3775 50  0000 L CNN
F 1 "FCX717TA" H 3000 3700 50  0000 L CNN
F 2 "TO-92" H 3000 3625 50  0000 L CIN
F 3 "" H 2800 3700 50  0000 L CNN
	1    2800 3700
	1    0    0    1   
$EndComp
$Comp
L BC558 Q1
U 1 1 560880F1
P 2300 3300
F 0 "Q1" H 2500 3375 50  0000 L CNN
F 1 "FCX717TA" H 2500 3300 50  0000 L CNN
F 2 "TO-92" H 2500 3225 50  0000 L CIN
F 3 "" H 2300 3300 50  0000 L CNN
	1    2300 3300
	1    0    0    1   
$EndComp
Text Label 8400 3200 2    60   ~ 0
SPEAKER
Text Label 8400 3300 2    60   ~ 0
LED_B
Text Label 8400 3400 2    60   ~ 0
MOSI
Text Label 8400 3500 2    60   ~ 0
MISO
Text Label 8400 3600 2    60   ~ 0
SCK
Text Label 8400 4050 2    60   ~ 0
LED_G
Text Label 8400 4150 2    60   ~ 0
LED_R
Text Label 8400 4650 2    60   ~ 0
BTN
Text Label 8400 3100 2    60   ~ 0
7SEG_B
Text Label 8400 5500 2    60   ~ 0
7SEG_4
Text Label 8400 5400 2    60   ~ 0
7SEG_G
Text Label 8400 5300 2    60   ~ 0
7SEG_C
Text Label 8400 3800 2    60   ~ 0
7SEG_DP
Text Label 8400 5200 2    60   ~ 0
7SEG_D
Text Label 8400 5100 2    60   ~ 0
7SEG_E
Text Label 8400 5000 2    60   ~ 0
7SEG_1
Text Label 8400 4900 2    60   ~ 0
7SEG_A
Text Label 8400 4800 2    60   ~ 0
7SEG_F
Text Label 8400 4450 2    60   ~ 0
7SEG_2
Text Label 8400 4550 2    60   ~ 0
RESET
Text Label 8400 4350 2    60   ~ 0
7SEG_3
Text Notes 9200 800  0    60   ~ 0
ISP
NoConn ~ 8400 4250
NoConn ~ 8400 3950
NoConn ~ 8400 3700
$Comp
L CONN_02X03 P1
U 1 1 5609622A
P 9250 1300
F 0 "P1" H 9250 1500 50  0000 C CNN
F 1 "CONN_02X03" H 9250 1100 50  0000 C CNN
F 2 "" H 9250 100 60  0000 C CNN
F 3 "" H 9250 100 60  0000 C CNN
	1    9250 1300
	1    0    0    -1  
$EndComp
Text Label 9000 1200 2    60   ~ 0
MISO
Text Label 9000 1300 2    60   ~ 0
SCK
Text Label 9000 1400 2    60   ~ 0
RESET
Text Label 9500 1300 0    60   ~ 0
MOSI
$Comp
L +5V #PWR014
U 1 1 560969A4
P 9600 1100
F 0 "#PWR014" H 9600 950 50  0001 C CNN
F 1 "+5V" H 9600 1240 50  0000 C CNN
F 2 "" H 9600 1100 60  0000 C CNN
F 3 "" H 9600 1100 60  0000 C CNN
	1    9600 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 56096A21
P 9600 1500
F 0 "#PWR015" H 9600 1250 50  0001 C CNN
F 1 "GND" H 9600 1350 50  0000 C CNN
F 2 "" H 9600 1500 60  0000 C CNN
F 3 "" H 9600 1500 60  0000 C CNN
	1    9600 1500
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG016
U 1 1 56099277
P 4800 7250
F 0 "#FLG016" H 4800 7345 50  0001 C CNN
F 1 "PWR_FLAG" H 4800 7430 50  0000 C CNN
F 2 "" H 4800 7250 60  0000 C CNN
F 3 "" H 4800 7250 60  0000 C CNN
	1    4800 7250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 56099681
P 4800 7250
F 0 "#PWR017" H 4800 7000 50  0001 C CNN
F 1 "GND" H 4800 7100 50  0000 C CNN
F 2 "" H 4800 7250 60  0000 C CNN
F 3 "" H 4800 7250 60  0000 C CNN
	1    4800 7250
	1    0    0    -1  
$EndComp
Text Notes 9200 2300 0    60   ~ 0
MCU
Wire Wire Line
	5800 7200 5600 7200
Wire Wire Line
	10300 3100 10400 3100
Wire Wire Line
	10400 3400 10300 3400
Wire Wire Line
	10300 5500 10400 5500
Wire Wire Line
	10400 5400 10400 5700
Wire Wire Line
	10300 5400 10400 5400
Connection ~ 10400 5500
Wire Wire Line
	10400 2900 10400 3400
Connection ~ 10400 3100
Wire Wire Line
	3600 6900 4200 6900
Wire Wire Line
	3800 6900 3800 7100
Wire Wire Line
	2400 6900 2800 6900
Wire Wire Line
	2600 6900 2600 7100
Connection ~ 2600 6900
Wire Wire Line
	1200 7600 4200 7600
Wire Wire Line
	2600 7600 2600 7400
Wire Wire Line
	3800 7600 3800 7400
Connection ~ 2600 7600
Wire Wire Line
	3200 7200 3200 7600
Connection ~ 3200 7600
Connection ~ 3800 6900
Connection ~ 3800 7600
Wire Wire Line
	1400 6900 1200 6900
Wire Wire Line
	1200 6900 1200 7100
Wire Wire Line
	1200 7400 1200 7600
Wire Wire Line
	1500 1600 1500 1500
Wire Wire Line
	1500 1500 3900 1500
Wire Wire Line
	3500 1500 3500 1600
Wire Wire Line
	2500 1600 2500 1500
Connection ~ 2500 1500
Connection ~ 3500 1500
Wire Wire Line
	1300 2200 1300 2300
Wire Wire Line
	1300 2300 3300 2300
Wire Wire Line
	3300 2300 3300 2200
Wire Wire Line
	2300 2200 2300 2400
Connection ~ 2300 2300
Wire Wire Line
	6300 4700 6100 4700
Wire Wire Line
	5800 4700 5600 4700
Wire Wire Line
	5200 4700 5000 4700
Wire Wire Line
	1300 1300 3900 1300
Wire Wire Line
	3300 1300 3300 1600
Wire Wire Line
	2300 1300 2300 1600
Connection ~ 3300 1300
Wire Wire Line
	1300 1300 1300 1600
Connection ~ 2300 1300
Wire Wire Line
	1100 1100 3900 1100
Wire Wire Line
	3100 1100 3100 1600
Wire Wire Line
	2100 1100 2100 1600
Connection ~ 3100 1100
Wire Wire Line
	1100 1100 1100 1600
Connection ~ 2100 1100
Wire Wire Line
	4200 1500 4300 1500
Wire Wire Line
	4200 1300 4300 1300
Wire Wire Line
	4200 1100 4300 1100
Wire Wire Line
	6400 7200 6600 7200
Wire Wire Line
	5600 2400 4900 2400
Wire Wire Line
	4900 2200 5100 2200
Wire Wire Line
	5400 2200 5600 2200
Wire Wire Line
	1500 5600 1300 5600
Wire Wire Line
	1500 5800 1300 5800
Wire Wire Line
	1500 6000 1300 6000
Wire Wire Line
	1500 6200 1300 6200
Wire Wire Line
	4700 5600 4900 5600
Wire Wire Line
	4700 5800 4900 5800
Wire Wire Line
	4700 6000 4900 6000
Wire Wire Line
	4700 6200 4900 6200
Wire Wire Line
	3400 3500 3400 4100
Wire Wire Line
	3900 3900 3900 4100
Wire Wire Line
	3700 3300 4400 3300
Wire Wire Line
	4200 3700 4400 3700
Wire Wire Line
	1500 3300 1300 3300
Wire Wire Line
	1500 3700 1300 3700
Wire Wire Line
	4700 3300 4900 3300
Wire Wire Line
	4700 3700 4900 3700
Wire Notes Line
	6950 6550 500  6550
Wire Notes Line
	5300 7800 5300 6550
Wire Wire Line
	2900 4100 2900 3900
Wire Wire Line
	2900 3500 2900 2900
Wire Wire Line
	1800 3700 2600 3700
Wire Wire Line
	1800 3300 2100 3300
Wire Wire Line
	2400 3100 2400 2900
Wire Wire Line
	2400 3500 2400 4100
Wire Wire Line
	3400 3100 3400 2900
Wire Wire Line
	3900 2900 3900 3500
Wire Wire Line
	1800 5600 2800 5600
Wire Wire Line
	2800 5600 2800 5500
Wire Wire Line
	1800 5800 2900 5800
Wire Wire Line
	2900 5800 2900 5500
Wire Wire Line
	1800 6000 3000 6000
Wire Wire Line
	3000 6000 3000 5500
Wire Wire Line
	1800 6200 3100 6200
Wire Wire Line
	3100 6200 3100 5500
Wire Wire Line
	4400 5600 3500 5600
Wire Wire Line
	3500 5600 3500 5500
Wire Wire Line
	4400 5800 3400 5800
Wire Wire Line
	3400 5800 3400 5500
Wire Wire Line
	4400 6000 3300 6000
Wire Wire Line
	3300 6000 3300 5500
Wire Wire Line
	4400 6200 3200 6200
Wire Wire Line
	3200 6200 3200 5500
Wire Notes Line
	7300 6500 7300 500 
Wire Wire Line
	9500 1400 9600 1400
Wire Wire Line
	9600 1400 9600 1500
Wire Wire Line
	9500 1200 9600 1200
Wire Wire Line
	9600 1200 9600 1100
Wire Notes Line
	7300 2000 11200 2000
$Comp
L BC558 Q?
U 1 1 56095CFB
P 5700 1800
F 0 "Q?" H 5900 1875 50  0000 L CNN
F 1 "FCX717TA" H 5900 1800 50  0000 L CNN
F 2 "TO-92" H 5900 1725 50  0000 L CIN
F 3 "" H 5700 1800 50  0000 L CNN
	1    5700 1800
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 56095F68
P 6250 1800
F 0 "R?" V 6330 1800 50  0000 C CNN
F 1 "680" V 6250 1800 50  0000 C CNN
F 2 "" V 6180 1800 30  0000 C CNN
F 3 "" H 6250 1800 30  0000 C CNN
	1    6250 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 1800 6400 1800
Wire Wire Line
	6100 1800 5900 1800
$Comp
L +5V #PWR?
U 1 1 56096292
P 5600 1400
F 0 "#PWR?" H 5600 1250 50  0001 C CNN
F 1 "+5V" H 5600 1540 50  0000 C CNN
F 2 "" H 5600 1400 60  0000 C CNN
F 3 "" H 5600 1400 60  0000 C CNN
	1    5600 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1600 5600 1400
Wire Wire Line
	5600 2200 5600 2000
Wire Wire Line
	5600 2600 5600 2400
$EndSCHEMATC