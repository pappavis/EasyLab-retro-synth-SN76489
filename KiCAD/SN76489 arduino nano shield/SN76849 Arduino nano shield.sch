EESchema Schematic File Version 2
LIBS:SN76849 Arduino nano shield-rescue
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
LIBS:arduino
LIBS:easylab4kids
LIBS:SN76849 Arduino nano shield-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "SN76489 geluid shield vir Arduino Nano"
Date "2018-05-16"
Rev "20180601 0.5"
Comp "EasyLab4Kids"
Comment1 "Ontwerp: Michiel Erasmus"
Comment2 "Webwerf: https://www.facebook.com/EasyBlocks4Kids/"
Comment3 "gebruik mxUnifiedSN76489 en Arduino  as clock"
Comment4 "Geluidskaart vir Arduino met Sega Genisis geluidskaart"
$EndDescr
Text Label 5850 1210 0    32   ~ 0
P6
Text Label 5850 1110 0    32   ~ 0
P5
Text Label 5850 1310 0    32   ~ 0
P7
Text Label 5850 1510 0    32   ~ 0
WE
Text Label 5850 1810 0    36   ~ 0
VSS
Text Label 7150 1210 0    36   ~ 0
P4
Text Label 7150 1310 0    36   ~ 0
Clock
Text Label 7150 1410 0    32   ~ 0
P3
Text Label 7150 1510 0    32   ~ 0
P2
Text Label 7150 1610 0    32   ~ 0
P1
Text Label 7150 1710 0    32   ~ 0
P0
Entry Wire Line
	5500 1910 5600 1810
Entry Wire Line
	7450 1110 7550 1210
Entry Wire Line
	7450 1210 7550 1310
Entry Wire Line
	7450 1310 7550 1410
Entry Wire Line
	7450 1410 7550 1510
Entry Wire Line
	7450 1510 7550 1610
Entry Wire Line
	7450 1610 7550 1710
Entry Wire Line
	7450 1710 7550 1810
Entry Wire Line
	5500 1210 5600 1110
Entry Wire Line
	5500 1310 5600 1210
Entry Wire Line
	5500 1410 5600 1310
Entry Wire Line
	5500 1610 5600 1510
Entry Wire Line
	3550 1380 3650 1480
Entry Wire Line
	5300 1880 5400 1780
Entry Wire Line
	5300 1780 5400 1680
Entry Wire Line
	5300 1380 5400 1280
Entry Wire Line
	5300 1480 5400 1380
Entry Wire Line
	5300 2080 5400 1980
Entry Wire Line
	5300 1580 5400 1480
Entry Wire Line
	3550 2500 3650 2600
Entry Wire Line
	3550 1280 3650 1380
Text Label 5110 2080 0    36   ~ 0
P7
Text Label 5100 1480 0    36   ~ 0
P1
Text Label 5110 1880 0    36   ~ 0
P5
Text Label 5110 1580 0    36   ~ 0
P2
Text Label 5110 1780 0    36   ~ 0
P4
Text Label 5110 1680 0    36   ~ 0
P3
Entry Wire Line
	3450 2260 3550 2160
Entry Wire Line
	3450 2360 3550 2260
Entry Wire Line
	3450 2460 3550 2360
Text Label 3180 2260 0    36   ~ 0
Clock
Entry Wire Line
	3450 1710 3550 1610
Entry Wire Line
	3450 1810 3550 1710
Entry Wire Line
	3450 1910 3550 1810
Text Label 3180 2360 0    32   ~ 0
WE
Text Label 3180 2460 0    36   ~ 0
VCC
Text Label 5110 1380 0    36   ~ 0
P0
Entry Wire Line
	5300 1680 5400 1580
$Comp
L CONN_01X03 P1
U 1 1 5A6AC6F8
P 8470 4180
F 0 "P1" H 8470 4380 50  0000 C CNN
F 1 "Audio_uit" H 8460 3980 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x03_Pitch2.54mm" H 8470 4180 50  0001 C CNN
F 3 "" H 8470 4180 50  0000 C CNN
	1    8470 4180
	1    0    0    -1  
$EndComp
Text Label 8070 4280 2    36   ~ 0
VSS
Text Label 5110 1980 0    36   ~ 0
P6
Entry Wire Line
	5300 1980 5400 1880
Text Label 3710 1380 0    28   ~ 0
SCL
Text Label 4420 2600 0    36   ~ 0
VSS
Text Notes 500  580  0    60   ~ 0
Arduino geluidskaart met SN76489\n
Text Notes 500  700  0    32   ~ 0
Let op!! 4Mhz clock signaal deur Arduino gegenereert\nGebruikt https://github.com/maxint-rd/mxUnifiedSN76489
Text Label 7140 1110 0    28   ~ 0
VCC
Entry Bus Bus
	5300 840  5400 940 
Text Label 5850 1610 0    36   ~ 0
CE
Text Label 3190 1710 0    28   ~ 0
VCC
Text Label 3180 1810 0    28   ~ 0
SCL
Text Label 3180 1910 0    28   ~ 0
SDA
Entry Bus Bus
	5400 650  5500 750 
Text Notes 3980 3020 0    52   ~ 0
PCF8574 I2C pin verbindinge
NoConn ~ 6050 1410
$Comp
L Conn_01x03 J1
U 1 1 5A72FDF5
P 2800 2360
F 0 "J1" H 2800 2560 50  0000 C CNN
F 1 "Arduino_sn" H 2800 2160 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x03_Pitch2.54mm" H 2800 2360 50  0001 C CNN
F 3 "" H 2800 2360 50  0001 C CNN
	1    2800 2360
	-1   0    0    1   
$EndComp
$Comp
L PCF8574 U1
U 1 1 5A7F2E84
P 4550 1780
F 0 "U1" H 4200 2380 50  0000 L CNN
F 1 "PCF8574" H 4650 2380 50  0000 L CNN
F 2 "w_pth_circuits:dil_16-300_socket" H 4550 1780 50  0001 C CNN
F 3 "" H 4550 1780 50  0001 C CNN
	1    4550 1780
	1    0    0    -1  
$EndComp
NoConn ~ 7100 1810
NoConn ~ 4050 2180
Text Label 3700 1480 0    28   ~ 0
SDA
Entry Wire Line
	4450 840  4550 940 
Text Label 4550 1070 1    36   ~ 0
VCC
$Comp
L CP1_Small C3
U 1 1 5A7F5319
P 7100 4390
F 0 "C3" H 7110 4460 38  0000 L CNN
F 1 "CP_220uF" V 6990 4240 30  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P2.50mm" H 7100 4390 50  0001 C CNN
F 3 "" H 7100 4390 50  0001 C CNN
	1    7100 4390
	0    -1   -1   0   
$EndComp
Entry Wire Line
	5500 2840 5600 2940
Entry Wire Line
	5500 1810 5600 1710
Text Label 5750 3120 2    36   ~ 0
VSS
Entry Wire Line
	5500 3020 5600 3120
Text Label 5640 2940 0    36   ~ 0
VCC
$Comp
L POT-RESCUE-SN76849_Arduino_nano_shield RV1
U 1 1 5A96DB87
P 7490 4390
F 0 "RV1" H 7490 4310 38  0000 C CNN
F 1 "POT_50k" H 7490 4390 30  0000 C CNN
F 2 "w_pth_resistors:trimmer_ecp_ca9-v10" H 7490 4390 50  0001 C CNN
F 3 "" H 7490 4390 50  0000 C CNN
	1    7490 4390
	1    0    0    -1  
$EndComp
Text Notes 3980 3380 0    44   ~ 0
SN76849 WE --> Arduino D8\nSN76489 CLOCK --> Arduino Nano D3\n
$Comp
L CONN_01X03 P3
U 1 1 5A977E81
P 2800 1810
F 0 "P3" H 2800 2010 50  0000 C CNN
F 1 "I2C" H 2790 1610 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x03_Pitch2.54mm" H 2800 1810 50  0001 C CNN
F 3 "" H 2800 1810 50  0000 C CNN
	1    2800 1810
	-1   0    0    1   
$EndComp
NoConn ~ 670  1130
Text Label 5850 1710 0    36   ~ 0
Audio
$Comp
L LM358 U2
U 1 1 5A9B1A8C
P 6490 4390
F 0 "U2" H 6490 4590 50  0000 L CNN
F 1 "LM358" H 6490 4190 50  0000 L CNN
F 2 "w_pth_circuits:dil_8-300_socket" H 6490 4390 50  0001 C CNN
F 3 "" H 6490 4390 50  0000 C CNN
	1    6490 4390
	1    0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 5A9B7BDC
P 6060 4600
F 0 "R2" H 6090 4620 38  0000 L CNN
F 1 "R1k" V 6060 4560 30  0000 L CNN
F 2 "w_pth_resistors:RC03" H 6060 4600 50  0001 C CNN
F 3 "" H 6060 4600 50  0000 C CNN
	1    6060 4600
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C2
U 1 1 5A9B9E55
P 6060 4920
F 0 "C2" H 6070 4990 38  0000 L CNN
F 1 "CP_10uF" V 5950 4770 30  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P2.50mm" H 6060 4920 50  0001 C CNN
F 3 "" H 6060 4920 50  0001 C CNN
	1    6060 4920
	-1   0    0    1   
$EndComp
$Comp
L SN76489 U3
U 1 1 5A902B70
P 6600 1460
F 0 "U3" H 6600 2010 60  0000 C CNN
F 1 "SN76489" H 6600 960 60  0000 C CNN
F 2 "w_pth_circuits:dil_16-300_socket" H 6600 1160 60  0001 C CNN
F 3 "" H 6600 1160 60  0001 C CNN
	1    6600 1460
	1    0    0    -1  
$EndComp
Text Notes 5770 5350 0    32   ~ 0
https://lowvoltage.wordpress.com/2011/05/21/lm358-mic-amp/
Entry Wire Line
	5500 3640 5600 3740
Text Label 5770 5070 0    36   ~ 0
Audio
$Comp
L GND #PWR01
U 1 1 5A9BDD7A
P 5730 1880
F 0 "#PWR01" H 5730 1630 50  0001 C CNN
F 1 "GND" V 5760 1890 34  0000 C CNN
F 2 "" H 5730 1880 50  0000 C CNN
F 3 "" H 5730 1880 50  0000 C CNN
	1    5730 1880
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J2
U 1 1 5AEF7BF4
P 5140 4730
F 0 "J2" H 5140 4830 50  0000 C CNN
F 1 "audio_debug" H 5140 4530 30  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 5140 4730 50  0001 C CNN
F 3 "" H 5140 4730 50  0001 C CNN
	1    5140 4730
	-1   0    0    1   
$EndComp
Wire Wire Line
	5600 1110 6050 1110
Wire Wire Line
	5600 1210 6050 1210
Wire Wire Line
	5600 1310 6050 1310
Wire Wire Line
	5600 1510 6050 1510
Wire Wire Line
	5600 1810 6050 1810
Wire Wire Line
	7100 1210 7450 1210
Wire Wire Line
	7100 1310 7450 1310
Wire Wire Line
	7100 1410 7450 1410
Wire Wire Line
	7100 1510 7450 1510
Wire Wire Line
	7100 1610 7450 1610
Wire Wire Line
	7100 1710 7450 1710
Wire Bus Line
	5500 610  5500 2650
Wire Bus Line
	7550 610  7550 2060
Wire Bus Line
	5500 610  7550 610 
Wire Wire Line
	5650 1610 6050 1610
Wire Wire Line
	3650 2600 4550 2600
Wire Wire Line
	3650 1380 4050 1380
Wire Bus Line
	5400 630  5400 2180
Wire Bus Line
	3550 780  3550 2530
Wire Wire Line
	3000 2260 3450 2260
Wire Wire Line
	3000 2360 3450 2360
Wire Wire Line
	3000 2460 3450 2460
Wire Wire Line
	3450 1710 3000 1710
Wire Wire Line
	3000 1810 3450 1810
Wire Wire Line
	3450 1910 3000 1910
Wire Wire Line
	5050 1680 5300 1680
Wire Wire Line
	7710 4280 8270 4280
Wire Wire Line
	7490 4180 8270 4180
Wire Wire Line
	8270 4080 7880 4080
Wire Wire Line
	7880 4080 7880 4180
Connection ~ 7880 4180
Wire Wire Line
	5050 1980 5300 1980
Wire Notes Line
	2100 480  2100 810 
Wire Notes Line
	2100 810  470  810 
Wire Wire Line
	7100 1110 7450 1110
Wire Wire Line
	5050 1580 5300 1580
Wire Wire Line
	5300 1380 5050 1380
Wire Wire Line
	5300 1480 5050 1480
Wire Wire Line
	5300 1880 5050 1880
Wire Wire Line
	5300 2080 5050 2080
Wire Bus Line
	3540 840  5280 840 
Wire Bus Line
	5270 840  5360 840 
Wire Bus Line
	5400 2170 5400 2360
Wire Notes Line
	3930 2910 5350 2910
Wire Notes Line
	5350 2910 5350 3410
Wire Notes Line
	5350 3410 3930 3410
Wire Notes Line
	3930 3410 3930 2910
Wire Wire Line
	5300 1780 5050 1780
Wire Wire Line
	4550 2600 4550 2480
Wire Wire Line
	4050 1480 3650 1480
Wire Wire Line
	4550 940  4550 1080
Wire Wire Line
	4050 1670 4050 1680
Wire Wire Line
	4050 1680 3850 1680
Wire Wire Line
	4050 1780 3850 1780
Connection ~ 3850 1780
Wire Wire Line
	3850 1880 4050 1880
Connection ~ 3850 1880
Wire Wire Line
	3850 1680 3850 2600
Connection ~ 3850 2600
Wire Bus Line
	5500 2630 5500 3770
Wire Notes Line
	7560 5280 5740 5280
Wire Wire Line
	5600 1710 6050 1710
Wire Wire Line
	6790 4390 7000 4390
Wire Wire Line
	5950 3120 5950 5120
Wire Wire Line
	7490 4180 7490 4240
Wire Wire Line
	7710 5120 7710 4280
Wire Wire Line
	5600 2940 6390 2940
Wire Wire Line
	6390 2940 6390 4090
Wire Wire Line
	6190 4290 5950 4290
Connection ~ 5950 4290
Wire Wire Line
	6190 4490 6060 4490
Wire Wire Line
	6060 4490 6060 4500
Wire Wire Line
	6060 4700 6060 4820
Wire Wire Line
	5950 3120 5600 3120
Wire Wire Line
	6390 5120 6390 4690
Wire Wire Line
	5950 5120 7710 5120
Connection ~ 6390 5120
Wire Wire Line
	7200 4390 7340 4390
Wire Wire Line
	7640 4390 7710 4390
Connection ~ 7710 4390
Wire Notes Line
	5740 3700 7790 3700
Wire Notes Line
	7790 3700 7790 5280
Wire Notes Line
	7790 5280 7550 5280
Wire Notes Line
	5740 3700 5740 5360
Wire Notes Line
	5740 5360 7490 5360
Wire Notes Line
	7490 5360 7490 5280
Wire Wire Line
	6060 5020 6060 5070
Wire Wire Line
	6060 5070 5660 5070
Wire Wire Line
	5660 5070 5660 3740
Wire Wire Line
	5660 3740 5600 3740
Wire Wire Line
	5730 1880 5730 1810
Connection ~ 5730 1810
Wire Wire Line
	5650 1610 5650 1810
Connection ~ 5650 1810
Wire Wire Line
	5340 4730 6060 4730
Connection ~ 6060 4730
Wire Wire Line
	5340 4630 5950 4630
Connection ~ 5950 4630
$EndSCHEMATC
