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
LIBS:trs_jack
LIBS:SN76849 Arduino nano shield-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "SN76489 geluid shield vir Arduino Nano"
Date "2001-01-01"
Rev "20180807 0.7.05"
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
	3450 2010 3550 1910
Entry Wire Line
	3450 2110 3550 2010
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
L PCF8574 U1
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
	5500 2840 5600 2940
Entry Wire Line
	5500 1810 5600 1710
Text Label 5750 3120 2    36   ~ 0
VSS
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
	0    -1   -1   0   
$EndComp
Text Notes 3980 3380 0    44   ~ 0
SN76849 WE --> Arduino D8\nSN76489 CLOCK --> Arduino Nano D3\n
Text Label 5850 1710 0    36   ~ 0
Audio
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
Text Label 5670 4120 1    36   ~ 0
Audio
$Comp
L GND #PWR1
U 1 1 5A9BDD7A
P 5740 1960
F 0 "#PWR1" H 5740 1710 28  0001 C CNN
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
Text Notes 7410 3810 0    60   ~ 0
OpAmp1
$Comp
L LED_Small D1
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
L R_Small R3
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
L Conn_01x01 J5
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
L Conn_01x01 J6
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
L Conn_01x01 J7
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
L Audio-Jack-5 J8
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
L CP1_Small C1
U 1 1 5B26BD41
P 6990 4390
F 0 "C1" H 7000 4460 38  0000 L CNN
F 1 "CP_220uF" V 6890 4300 30  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P2.50mm" H 6990 4390 50  0001 C CNN
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
L Conn_01x04 J3
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
	7550 610  7550 1210
Wire Bus Line
	7550 1210 7550 1310
Wire Bus Line
	7550 1310 7550 1410
Wire Bus Line
	7550 1410 7550 1510
Wire Bus Line
	7550 1510 7550 1610
Wire Bus Line
	7550 1610 7550 1710
Wire Bus Line
	7550 1710 7550 1810
Wire Bus Line
	7550 1810 7550 2060
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
Wire Bus Line
	5400 630  5400 650 
Wire Bus Line
	5400 650  5400 940 
Wire Bus Line
	5400 940  5400 1280
Wire Bus Line
	5400 1280 5400 1380
Wire Bus Line
	5400 1380 5400 1480
Wire Bus Line
	5400 1480 5400 1580
Wire Bus Line
	5400 1580 5400 1680
Wire Bus Line
	5400 1680 5400 1780
Wire Bus Line
	5400 1780 5400 1880
Wire Bus Line
	5400 1880 5400 1980
Wire Bus Line
	5400 1980 5400 2180
Wire Bus Line
	3550 780  3550 1280
Wire Bus Line
	3550 1280 3550 1380
Wire Bus Line
	3550 1380 3550 1510
Wire Bus Line
	3550 1510 3550 1610
Wire Bus Line
	3550 1610 3550 1710
Wire Bus Line
	3550 1710 3550 1810
Wire Bus Line
	3550 1810 3550 2160
Wire Bus Line
	3550 2160 3550 2260
Wire Bus Line
	3550 2260 3550 2360
Wire Bus Line
	3550 2360 3550 2500
Wire Bus Line
	3550 2500 3550 2530
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
Wire Bus Line
	3540 840  4450 840 
Wire Bus Line
	4450 840  5280 840 
Wire Bus Line
	5270 840  5300 840 
Wire Bus Line
	5300 840  5360 840 
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
	3850 1680 3850 1780
Wire Wire Line
	3850 1780 3850 1880
Wire Wire Line
	3850 1880 3850 2600
Connection ~ 3850 2600
Wire Notes Line
	7560 5280 5740 5280
Wire Wire Line
	5600 1710 6050 1710
Wire Wire Line
	5950 3120 5950 4530
Wire Wire Line
	5950 4530 5950 5120
Wire Wire Line
	5600 2940 6390 2940
Wire Wire Line
	6390 2940 6390 4090
Wire Wire Line
	5950 3120 5600 3120
Wire Wire Line
	5950 5120 6390 5120
Wire Wire Line
	6390 5120 7280 5120
Wire Wire Line
	7280 5120 7710 5120
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
	5630 4530 5950 4530
Wire Notes Line
	7370 3700 7370 3860
Wire Notes Line
	7370 3860 7780 3860
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
	5670 3740 5670 3920
Wire Wire Line
	5670 3920 5670 4330
Wire Wire Line
	5670 4330 5670 4430
Wire Bus Line
	5500 610  5500 750 
Wire Bus Line
	5500 750  5500 1210
Wire Bus Line
	5500 1210 5500 1310
Wire Bus Line
	5500 1310 5500 1410
Wire Bus Line
	5500 1410 5500 1610
Wire Bus Line
	5500 1610 5500 1810
Wire Bus Line
	5500 1810 5500 1910
Wire Bus Line
	5500 1910 5500 2190
Wire Bus Line
	5500 2190 5500 2290
Wire Bus Line
	5500 2290 5500 2390
Wire Bus Line
	5500 2390 5500 2490
Wire Bus Line
	5500 2490 5500 2650
Wire Wire Line
	5600 3740 5670 3740
Wire Bus Line
	5500 2630 5500 2840
Wire Bus Line
	5500 2840 5500 3020
Wire Bus Line
	5500 3020 5500 3640
Wire Bus Line
	5500 3640 5500 3940
Wire Wire Line
	5650 1610 5650 1810
Connection ~ 5650 1810
Wire Wire Line
	5740 1810 5740 1960
Connection ~ 5740 1810
Wire Wire Line
	3000 2110 3450 2110
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
$Comp
L R_Small R2
U 1 1 5A9B7BDC
P 6090 4610
F 0 "R2" V 6140 4610 30  0000 L CNN
F 1 "330" V 6090 4560 30  0000 L CNN
F 2 "w_pth_resistors:RC03" H 6090 4610 50  0001 C CNN
F 3 "" H 6090 4610 50  0000 C CNN
	1    6090 4610
	-1   0    0    1   
$EndComp
$Comp
L LM358 U2
U 1 1 5B4FA1EF
P 6490 4390
F 0 "U2" H 6490 4590 50  0000 L CNN
F 1 "LM358" H 6490 4190 50  0000 L CNN
F 2 "w_pth_circuits:dil_8-300_socket" H 6490 4390 50  0001 C CNN
F 3 "" H 6490 4390 50  0001 C CNN
	1    6490 4390
	1    0    0    -1  
$EndComp
$Comp
L LM358 U2
U 2 1 5B4FA234
P 6700 6080
F 0 "U2" H 6700 6230 50  0000 L CNN
F 1 "LM358" H 6700 5880 50  0000 L CNN
F 2 "w_pth_circuits:dil_8-300_socket" H 6700 6080 50  0001 C CNN
F 3 "" H 6700 6080 50  0001 C CNN
	2    6700 6080
	1    0    0    -1  
$EndComp
Wire Bus Line
	5500 3940 4940 3940
Wire Bus Line
	4940 3940 4940 5690
Wire Bus Line
	4940 5690 5810 5690
Wire Bus Line
	5810 5690 5810 5730
Wire Bus Line
	5810 5730 5810 6080
Wire Bus Line
	5810 6080 5810 6540
Wire Bus Line
	5810 6540 5810 6570
Entry Wire Line
	5810 5730 5910 5630
Wire Wire Line
	6600 5780 6600 5630
Wire Wire Line
	6600 5630 5910 5630
Entry Wire Line
	5810 6080 5910 5980
Wire Wire Line
	6400 5980 5910 5980
Wire Wire Line
	7000 6080 7050 6080
Wire Wire Line
	7050 6080 7160 6080
Entry Wire Line
	5810 6540 5910 6440
Wire Wire Line
	5910 6440 6600 6440
Wire Wire Line
	6600 6440 6600 6380
Text Label 6090 6440 0    36   ~ 0
VSS
Text Label 6060 5630 0    36   ~ 0
VCC
Text Label 3180 2110 0    32   ~ 0
PWM
Text Label 6070 5980 0    32   ~ 0
PWM
Wire Wire Line
	5600 1810 5650 1810
Wire Wire Line
	5650 1810 5740 1810
Wire Wire Line
	5740 1810 6050 1810
Wire Wire Line
	7100 1110 7450 1110
Wire Wire Line
	6390 4690 6390 5120
Wire Wire Line
	5670 4430 5630 4430
Connection ~ 5950 4530
$Comp
L R_Small R4
U 1 1 5B510C1C
P 6230 6280
F 0 "R4" V 6280 6280 30  0000 L CNN
F 1 "330" V 6230 6230 30  0000 L CNN
F 2 "w_pth_resistors:RC03" H 6230 6280 50  0001 C CNN
F 3 "" H 6230 6280 50  0000 C CNN
	1    6230 6280
	-1   0    0    1   
$EndComp
Wire Wire Line
	6400 6180 6230 6180
Wire Wire Line
	6140 3920 6140 4290
Wire Wire Line
	6140 3920 5670 3920
Connection ~ 5670 3920
$Comp
L CP1_Small C2
U 1 1 5B51233C
P 7260 6080
F 0 "C2" H 7270 6150 38  0000 L CNN
F 1 "CP_220uF" V 7160 5990 30  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P2.50mm" H 7260 6080 50  0001 C CNN
F 3 "" H 7260 6080 50  0001 C CNN
	1    7260 6080
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6790 4390 6840 4390
Wire Wire Line
	6840 4390 6890 4390
Wire Wire Line
	7360 6080 7360 5430
Wire Wire Line
	7360 5430 7130 5430
Wire Wire Line
	7130 5430 7130 4390
$Comp
L Conn_01x03 J2
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
	5630 4330 5670 4330
Connection ~ 5670 4330
Connection ~ 6390 5120
Wire Wire Line
	7710 5120 7710 4480
Wire Wire Line
	7090 4390 7130 4390
Wire Wire Line
	7130 4390 7280 4390
Wire Wire Line
	7280 4390 7340 4390
Connection ~ 7130 4390
Wire Wire Line
	7280 4450 7280 4390
Connection ~ 7280 4390
Wire Wire Line
	7490 4240 7490 4120
Wire Wire Line
	7490 4120 7900 4120
NoConn ~ 7490 4540
Wire Wire Line
	6190 4490 6090 4490
Wire Wire Line
	6090 4490 6090 4510
Wire Wire Line
	6090 4710 6090 4730
Wire Wire Line
	6090 4730 6840 4730
Wire Wire Line
	6840 4730 6840 4390
Connection ~ 6840 4390
Wire Wire Line
	6140 4290 6190 4290
Wire Wire Line
	6230 6380 6230 6410
Wire Wire Line
	6230 6410 7050 6410
Wire Wire Line
	7050 6410 7050 6080
Connection ~ 7050 6080
$Comp
L Crystal Y1
U 1 1 5B69193B
P 8220 1220
F 0 "Y1" H 8220 1370 50  0000 C CNN
F 1 "4Mhz_Crystal" H 8220 1070 30  0000 C CNN
F 2 "" H 8220 1220 50  0001 C CNN
F 3 "" H 8220 1220 50  0001 C CNN
	1    8220 1220
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5B691BA9
P 8100 1700
F 0 "C3" H 8125 1800 50  0000 L CNN
F 1 "C_10uF" H 8125 1600 30  0000 L CNN
F 2 "" H 8138 1550 50  0001 C CNN
F 3 "" H 8100 1700 50  0001 C CNN
	1    8100 1700
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5B691CB5
P 8400 1700
F 0 "C4" H 8425 1800 50  0000 L CNN
F 1 "C_10uF" H 8425 1600 30  0000 L CNN
F 2 "" H 8438 1550 50  0001 C CNN
F 3 "" H 8400 1700 50  0001 C CNN
	1    8400 1700
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x06 J1
U 1 1 5B6930F1
P 2800 1910
F 0 "J1" H 2800 2210 50  0000 C CNN
F 1 "Arduino_in" H 2800 1510 38  0000 C CNN
F 2 "" H 2800 1910 50  0001 C CNN
F 3 "" H 2800 1910 50  0001 C CNN
	1    2800 1910
	-1   0    0    1   
$EndComp
$EndSCHEMATC
