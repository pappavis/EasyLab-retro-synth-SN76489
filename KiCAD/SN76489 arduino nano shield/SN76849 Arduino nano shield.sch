EESchema Schematic File Version 4
LIBS:SN76849 Arduino nano shield-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "SN76489 geluid shield vir Arduino Nano"
Date "2018-09-05"
Rev "20180905 0.7.06"
Comp "EasyLab4Kids"
Comment1 "Ontwerp: Michiel Erasmus"
Comment2 "Webwerf: https://www.facebook.com/EasyBlocks4Kids/"
Comment3 "gebruik mxUnifiedSN76489"
Comment4 "Geluidskaart vir Arduino met Sega Genisis geluidskaart"
$EndDescr
Text Label 5850 1210 0    32   ~ 0
P6
Text Label 5850 1110 0    32   ~ 0
P5
Text Label 5850 1310 0    32   ~ 0
P7
Text Label 5850 1510 0    32   ~ 0
~WE
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
	3450 2010 3550 1910
Entry Wire Line
	3450 1710 3550 1610
Entry Wire Line
	3450 1810 3550 1710
Entry Wire Line
	3450 1910 3550 1810
Text Label 3180 2010 0    32   ~ 0
~WE
Text Label 5110 1380 0    36   ~ 0
P0
Entry Wire Line
	5300 1680 5400 1580
Text Label 8210 4480 2    36   ~ 0
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
Text Label 3180 1710 0    28   ~ 0
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
L philips:PCF8574 U1
U 1 1 5A7F2E84
P 4550 1780
F 0 "U1" H 4200 2380 50  0000 L CNN
F 1 "PCF8574" H 4580 2380 50  0000 L CNN
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
Entry Wire Line
	5500 1810 5600 1710
Text Label 5750 3120 2    36   ~ 0
VSS
$Comp
L SN76849-Arduino-nano-shield-rescue:POT-RESCUE-SN76849_Arduino_nano_shield RV1
U 1 1 5A96DB87
P 7490 4390
F 0 "RV1" H 7490 4310 38  0000 C CNN
F 1 "POT_50k" H 7490 4390 30  0000 C CNN
F 2 "w_pth_resistors:trimmer_ecp_ca9-h2,5" H 7490 4390 50  0001 C CNN
F 3 "" H 7490 4390 50  0000 C CNN
	1    7490 4390
	0    -1   -1   0   
$EndComp
Text Notes 3980 3380 0    44   ~ 0
SN76849 WE --> Arduino D8\nSN76489 CLOCK --> Arduino Nano D3\n
Text Label 5850 1710 0    36   ~ 0
Audio
$Comp
L easylab4kids:SN76489 U3
U 1 1 5A902B70
P 6600 1460
F 0 "U3" H 6600 2010 60  0000 C CNN
F 1 "SN76489" H 6600 960 60  0000 C CNN
F 2 "w_pth_circuits:dil_16-300_socket" H 6600 1160 60  0001 C CNN
F 3 "" H 6600 1160 60  0001 C CNN
	1    6600 1460
	1    0    0    -1  
$EndComp
Text Label 5780 3740 2    36   ~ 0
Audio
$Comp
L power:GND #PWR01
U 1 1 5A9BDD7A
P 5740 1960
F 0 "#PWR01" H 5740 1710 28  0001 C CNN
F 1 "GND" V 5770 1970 34  0000 C CNN
F 2 "" H 5740 1960 50  0000 C CNN
F 3 "" H 5740 1960 50  0000 C CNN
	1    5740 1960
	1    0    0    -1  
$EndComp
Entry Wire Line
	3450 1610 3550 1510
Text Label 3170 1610 0    28   ~ 0
VSS
$Comp
L Device:LED_Small D1
U 1 1 5B26D96D
P 7280 4830
F 0 "D1" H 7250 4940 30  0000 L CNN
F 1 "Liggie" H 7220 4760 30  0000 L CNN
F 2 "LEDs:LED_D3.0mm" V 7280 4830 50  0001 C CNN
F 3 "" V 7280 4830 50  0001 C CNN
	1    7280 4830
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5B26DBB3
P 7280 4550
F 0 "R3" V 7330 4550 30  0000 L CNN
F 1 "R1k" V 7280 4510 30  0000 L CNN
F 2 "w_pth_resistors:RC03" H 7280 4550 50  0001 C CNN
F 3 "" H 7280 4550 50  0000 C CNN
	1    7280 4550
	-1   0    0    1   
$EndComp
$Comp
L conn:Conn_01x01 J5
U 1 1 5B26F111
P 780 1030
F 0 "J5" H 780 1130 50  0000 C CNN
F 1 "LOGO" H 780 930 50  0000 C CNN
F 2 "lib_michiel:Sovjet_simpits_logo01" H 780 1030 50  0001 C CNN
F 3 "" H 780 1030 50  0001 C CNN
	1    780  1030
	-1   0    0    1   
$EndComp
$Comp
L conn:Conn_01x01 J6
U 1 1 5B26F3ED
P 1260 1010
F 0 "J6" H 1260 1110 50  0000 C CNN
F 1 "gat1" H 1260 910 30  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.5mm_Pad" H 1260 1010 50  0001 C CNN
F 3 "" H 1260 1010 50  0001 C CNN
	1    1260 1010
	-1   0    0    1   
$EndComp
$Comp
L conn:Conn_01x01 J7
U 1 1 5B26F4E1
P 1260 1290
F 0 "J7" H 1260 1390 50  0000 C CNN
F 1 "gat2" H 1260 1190 30  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.5mm_Pad" H 1260 1290 50  0001 C CNN
F 3 "" H 1260 1290 50  0001 C CNN
	1    1260 1290
	-1   0    0    1   
$EndComp
$Comp
L conn:Audio-Jack-5 J8
U 1 1 5B26D965
P 8490 4680
F 0 "J8" H 8440 4890 50  0000 C CNN
F 1 "geluid_uit" H 8410 4320 30  0000 C CNN
F 2 "lib_michiel:3.5mm_stereo_TRS_jack_A-853_Tayda_" H 8740 4780 50  0001 C CNN
F 3 "" H 8740 4780 50  0001 C CNN
	1    8490 4680
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1_Small C1
U 1 1 5B26BD41
P 6990 4390
F 0 "C1" H 7000 4460 38  0000 L CNN
F 1 "CP_220uF" V 6890 4300 30  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D10.0mm_P3.50mm" H 6990 4390 50  0001 C CNN
F 3 "" H 6990 4390 50  0001 C CNN
	1    6990 4390
	0    -1   -1   0   
$EndComp
Entry Wire Line
	5500 3640 5600 3740
Entry Wire Line
	5500 3020 5600 3120
NoConn ~ 1460 1010
NoConn ~ 1460 1290
NoConn ~ 980  1030
$Comp
L conn:Conn_01x04 J3
U 1 1 5B43DC64
P 6120 2390
F 0 "J3" H 6120 2590 50  0000 C CNN
F 1 "OLED_wit" V 6220 2340 30  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x04_Pitch2.54mm" H 6120 2390 50  0001 C CNN
F 3 "" H 6120 2390 50  0001 C CNN
	1    6120 2390
	1    0    0    -1  
$EndComp
Entry Wire Line
	5500 2190 5600 2290
Entry Wire Line
	5500 2290 5600 2390
Entry Wire Line
	5500 2390 5600 2490
Entry Wire Line
	5500 2490 5600 2590
Text Label 5760 2390 0    28   ~ 0
VCC
Text Label 5760 2290 0    28   ~ 0
VSS
Text Label 5760 2490 0    28   ~ 0
SCL
Text Label 5760 2590 0    28   ~ 0
SDA
Text Notes 8250 5060 0    36   ~ 0
PJ307 3.5mm uitgang
Wire Wire Line
	5600 1110 6050 1110
Wire Wire Line
	5600 1210 6050 1210
Wire Wire Line
	5600 1310 6050 1310
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
	5500 610  7550 610 
Wire Wire Line
	5650 1610 6050 1610
Wire Wire Line
	3650 2600 3850 2600
Wire Wire Line
	3850 2600 4550 2600
Wire Wire Line
	3650 1380 4050 1380
Wire Wire Line
	3000 2010 3450 2010
Wire Wire Line
	3450 1710 3000 1710
Wire Wire Line
	3000 1810 3450 1810
Wire Wire Line
	3450 1910 3000 1910
Wire Wire Line
	5050 1680 5300 1680
Wire Wire Line
	5050 1980 5300 1980
Wire Notes Line
	2100 480  2100 810 
Wire Notes Line
	2100 810  470  810 
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
	3850 1680 3850 1780
Wire Wire Line
	3850 1780 3850 1880
Wire Wire Line
	3850 1880 3850 2600
Connection ~ 3850 2600
Wire Wire Line
	5600 1710 6050 1710
Wire Wire Line
	5950 3120 5600 3120
Wire Wire Line
	7280 5120 7710 5120
Wire Wire Line
	7280 4650 7280 4730
Wire Wire Line
	7280 4930 7280 5120
Connection ~ 7280 5120
Wire Wire Line
	7900 4120 7900 4580
Wire Wire Line
	7900 4580 7900 4680
Wire Wire Line
	7900 4680 7900 4780
Wire Wire Line
	7900 4780 7900 4950
Wire Wire Line
	7900 4580 8290 4580
Wire Wire Line
	7900 4680 8290 4680
Connection ~ 7900 4580
Wire Wire Line
	7900 4780 8290 4780
Connection ~ 7900 4680
Wire Wire Line
	5650 1610 5650 1810
Connection ~ 5650 1810
Wire Wire Line
	5740 1810 5740 1960
Connection ~ 5740 1810
Wire Wire Line
	5600 1510 6050 1510
Wire Wire Line
	3000 1610 3450 1610
Wire Wire Line
	8790 4280 8790 4200
Wire Wire Line
	8790 4200 8860 4200
Wire Wire Line
	8860 4200 8860 4950
Wire Wire Line
	8860 4950 7900 4950
Connection ~ 7900 4780
Wire Wire Line
	7710 4480 8290 4480
Wire Wire Line
	5600 2290 5920 2290
Wire Wire Line
	5920 2390 5600 2390
Wire Wire Line
	5600 2490 5920 2490
Wire Wire Line
	5920 2590 5600 2590
Wire Wire Line
	5600 1810 5650 1810
Wire Wire Line
	5650 1810 5740 1810
Wire Wire Line
	5740 1810 6050 1810
Wire Wire Line
	7100 1110 7450 1110
$Comp
L conn:Conn_01x03 J2
U 1 1 5B513BA6
P 5430 4430
F 0 "J2" H 5430 4630 50  0000 C CNN
F 1 "audio_debug" H 5430 4230 30  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03_Pitch2.54mm" H 5430 4430 50  0001 C CNN
F 3 "" H 5430 4430 50  0001 C CNN
	1    5430 4430
	-1   0    0    1   
$EndComp
Wire Wire Line
	7710 5120 7710 4480
Wire Wire Line
	7280 4390 7340 4390
Wire Wire Line
	7280 4450 7280 4390
Connection ~ 7280 4390
Wire Wire Line
	7490 4240 7490 4120
Wire Wire Line
	7490 4120 7900 4120
NoConn ~ 7490 4540
Wire Wire Line
	7090 4390 7280 4390
$Comp
L Oscillator:CXO_DIP14 X1
U 1 1 5B9072D5
P 2800 2670
F 0 "X1" H 2610 2930 50  0000 L CNN
F 1 "CLK_DIP14_4Mhz" H 2620 2370 30  0000 L CNN
F 2 "Oscillators:Oscillator_DIP-14_LargePads" H 3250 2320 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 2700 2670 50  0001 C CNN
	1    2800 2670
	1    0    0    -1  
$EndComp
Entry Wire Line
	3450 2310 3550 2210
Entry Wire Line
	3450 2980 3550 2880
Entry Wire Line
	3450 2520 3550 2420
Wire Wire Line
	3450 2520 3310 2520
Wire Wire Line
	3310 2520 3310 2670
NoConn ~ 2500 2670
Text Label 3160 2670 0    32   ~ 0
Clock
Wire Wire Line
	3100 2670 3310 2670
Wire Wire Line
	3450 2310 2800 2310
Wire Wire Line
	2800 2310 2800 2370
Wire Wire Line
	2800 3090 3450 3090
Wire Wire Line
	3450 3090 3450 2980
$Comp
L conn:Conn_01x05 J1
U 1 1 5B92749F
P 2800 1810
F 0 "J1" H 2720 1403 50  0000 C CNN
F 1 "Arduino_in" H 2800 1500 38  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x05_Pitch2.54mm" H 2800 1810 50  0001 C CNN
F 3 "~" H 2800 1810 50  0001 C CNN
	1    2800 1810
	-1   0    0    1   
$EndComp
Text Label 3160 2310 0    28   ~ 0
VCC
Text Label 3180 3090 0    28   ~ 0
VSS
Wire Wire Line
	5950 5120 7280 5120
Wire Wire Line
	6140 4390 6890 4390
Wire Wire Line
	5600 3740 5810 3740
Wire Wire Line
	6140 3740 6140 4390
Wire Wire Line
	5950 3120 5950 4530
Wire Wire Line
	5630 4430 5730 4430
Wire Wire Line
	5730 4430 5730 4330
Wire Wire Line
	5730 4330 5630 4330
Wire Wire Line
	5730 4330 5810 4330
Wire Wire Line
	5810 4330 5810 3740
Connection ~ 5730 4330
Connection ~ 5810 3740
Wire Wire Line
	5810 3740 6140 3740
Wire Wire Line
	5630 4530 5950 4530
Connection ~ 5950 4530
Wire Wire Line
	5950 4530 5950 5120
Wire Wire Line
	2800 2970 2800 3090
Wire Bus Line
	3540 840  5360 840 
Wire Bus Line
	7550 610  7550 2060
Wire Bus Line
	5400 630  5400 2360
Wire Bus Line
	3550 780  3550 2920
Wire Bus Line
	5500 610  5500 3940
$EndSCHEMATC
