EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLegal 14000 8500
encoding utf-8
Sheet 1 1
Title "Shot Timer"
Date "2021-02-24"
Rev "1.1"
Comp ""
Comment1 "Shot Timer PCB"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ShotTimerLibs:MAX4466EXK U8
U 1 1 60174C6B
P 11750 1650
F 0 "U8" H 11750 2220 50  0000 C CNN
F 1 "MAX4466EXK" H 11750 2129 50  0000 C CNN
F 2 "SOT65P210X110-5N" H 11750 1650 50  0001 L BNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX4465-MAX4469.pdf" H 11750 1650 50  0001 L BNN
F 4 "Microphone Op Amp" H 11750 1650 50  0001 C CNN "Description"
F 5 "MAX4466EXK+CT-ND" H 11750 1650 50  0001 C CNN "Digi-Key Part Number"
F 6 "Maxim Integrated" H 11750 1650 50  0001 C CNN "Manufacturer"
F 7 "MAX4466EXK+T" H 11750 1650 50  0001 C CNN "Manufacturer Part Number"
	1    11750 1650
	1    0    0    -1  
$EndComp
$Comp
L ShotTimerLibs:CMA-4544PF-W MK1
U 1 1 60175B73
P 9550 1650
F 0 "MK1" H 9657 1931 50  0000 C CNN
F 1 "CMA-4544PF-W" H 9657 1840 50  0000 C CNN
F 2 "MIC_CMA-4544PF-W" H 9550 1650 50  0001 L BNN
F 3 "https://www.cuidevices.com/product/resource/cma-4544pf-w.pdf" H 9550 1650 50  0001 L BNN
F 4 "9.7 mm, Omnidirectional, PCB Mount, 3.0 Vdc, Electret Condenser Microphone" H 9550 1650 50  0001 L BNN "Description"
F 5 "102-1721-ND" H 9550 1650 50  0001 C CNN "Digi-Key Part Number"
F 6 "CUI Devices" H 9550 1650 50  0001 C CNN "Manufacturer"
F 7 "CMA-4544PF-W" H 9550 1650 50  0001 C CNN "Manufacturer Part Number"
	1    9550 1650
	1    0    0    -1  
$EndComp
Text Notes 2350 7850 0    50   ~ 10
Step-Up Power Regulator 5V
Text Notes 800  7150 0    79   ~ 16
+
Text Notes 800  7250 0    79   ~ 16
-
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 601AA27B
P 1000 7100
F 0 "J1" V 1350 7050 50  0000 C CNN
F 1 "SYS_PWR" V 1250 7050 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1000 7100 50  0001 C CNN
F 3 "https://www.we-online.de/katalog/datasheet/691137710002.pdf" H 1000 7100 50  0001 C CNN
F 4 "732-10955-ND" H 1000 7100 50  0001 C CNN "Digi-Key Part Number"
F 5 "Würth Elektronik" H 1000 7100 50  0001 C CNN "Manufacturer"
F 6 "691137710002" H 1000 7100 50  0001 C CNN "Manufacturer Part Number"
	1    1000 7100
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 601AA281
P 2150 7150
F 0 "R5" H 2218 7104 50  0000 L CNN
F 1 "412K 1%" H 2218 7195 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2190 7140 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 2150 7150 50  0001 C CNN
F 4 "RNF14FTD412KCT-ND" H 2150 7150 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 2150 7150 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD412K" H 2150 7150 50  0001 C CNN "Manufacturer Part Number"
	1    2150 7150
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R15
U 1 1 601AA287
P 3550 7100
F 0 "R15" V 3663 7100 50  0000 C CNN
F 1 "100K" V 3754 7100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3590 7090 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 3550 7100 50  0001 C CNN
F 4 "RNF14FTD100KCT-ND" H 3550 7100 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 3550 7100 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD100K" H 3550 7100 50  0001 C CNN "Manufacturer Part Number"
	1    3550 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C5
U 1 1 601AA290
P 1600 7150
F 0 "C5" H 1486 7196 50  0000 R CNN
F 1 "220uF" H 1486 7105 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 1600 7150 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/AAB8000/AAB8000C247.pdf" H 1600 7150 50  0001 C CNN
F 4 "P16296-ND" H 1600 7150 50  0001 C CNN "Digi-Key Part Number"
F 5 "Panasonic Electronic Components" H 1600 7150 50  0001 C CNN "Manufacturer"
F 6 "16SEPC220MD" H 1600 7150 50  0001 C CNN "Manufacturer Part Number"
	1    1600 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 601AA2BC
P 2200 7500
F 0 "R6" H 2132 7454 50  0000 R CNN
F 1 "10K" H 2132 7545 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2240 7490 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 2200 7500 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 2200 7500 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 2200 7500 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 2200 7500 50  0001 C CNN "Manufacturer Part Number"
	1    2200 7500
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1 C7
U 1 1 601AA2C7
P 3850 7500
F 0 "C7" V 4010 7500 50  0000 C CNN
F 1 "220uF" V 4101 7500 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 3850 7500 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/AAB8000/AAB8000C247.pdf" H 3850 7500 50  0001 C CNN
F 4 "P16296-ND" H 3850 7500 50  0001 C CNN "Digi-Key Part Number"
F 5 "Panasonic Electronic Components" H 3850 7500 50  0001 C CNN "Manufacturer"
F 6 "16SEPC220MD" H 3850 7500 50  0001 C CNN "Manufacturer Part Number"
	1    3850 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 601AA2EB
P 2150 6750
F 0 "R4" H 2218 6704 50  0000 L CNN
F 1 "316K 1%" H 2218 6795 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2190 6740 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 2150 6750 50  0001 C CNN
F 4 "RNF14FTD316KCT-ND" H 2150 6750 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 2150 6750 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD316K" H 2150 6750 50  0001 C CNN "Manufacturer Part Number"
	1    2150 6750
	-1   0    0    1   
$EndComp
$Comp
L Device:L L1
U 1 1 601AA2FA
P 2900 6450
F 0 "L1" V 3090 6450 50  0000 C CNN
F 1 "33uH" V 2999 6450 50  0000 C CNN
F 2 "Inductor_THT:L_Radial_D7.8mm_P5.00mm_Fastron_07HCP" H 2900 6450 50  0001 C CNN
F 3 "http://products.sumida.com/products/pdf/RCH-895.pdf" H 2900 6450 50  0001 C CNN
F 4 "308-2103-ND" H 2900 6450 50  0001 C CNN "Digi-Key Part Number"
F 5 "Sumida America Components Inc." H 2900 6450 50  0001 C CNN "Manufacturer"
F 6 "RCH895NP-330K" H 2900 6450 50  0001 C CNN "Manufacturer Part Number"
	1    2900 6450
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N5817 D9
U 1 1 601AA303
P 3450 6450
F 0 "D9" H 3450 6233 50  0000 C CNN
F 1 "1N5817" H 3450 6324 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3450 6275 50  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/26/db/14/60/52/47/47/5b/CD00001625.pdf/files/CD00001625.pdf/jcr:content/translations/en.CD00001625.pdf" H 3450 6450 50  0001 C CNN
F 4 "497-4547-1-ND" H 3450 6450 50  0001 C CNN "Digi-Key Part Number"
F 5 "STMicroelectronics" H 3450 6450 50  0001 C CNN "Manufacturer"
F 6 "1N5817" H 3450 6450 50  0001 C CNN "Manufacturer Part Number"
	1    3450 6450
	-1   0    0    1   
$EndComp
Wire Wire Line
	1200 7200 1200 7700
Wire Wire Line
	1600 7300 1600 7700
Wire Wire Line
	1600 7700 1200 7700
Wire Wire Line
	2150 6900 2150 6950
Wire Wire Line
	2350 6950 2150 6950
Connection ~ 2150 6950
Wire Wire Line
	2150 6950 2150 7000
Wire Wire Line
	2150 7300 2150 7700
Wire Wire Line
	2150 7700 1600 7700
Connection ~ 1600 7700
$Comp
L ShotTimerLibs:LT1303CN8-5#PBF-UserLibrary U4
U 1 1 6021D475
P 2950 6600
F 0 "U4" H 2850 6200 50  0000 L CNN
F 1 "LT1303CN8-5#PBF" H 2550 6100 50  0000 L CNN
F 2 "ShotTimer:PDIP-8_N" H 2950 6750 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/lt1303.pdf" H 2950 6600 50  0001 C CNN
F 4 "LT1303CN8-5#PBF-ND" H 2950 6600 50  0001 C CNN "Digi-Key Part Number"
F 5 "Analog Devices Inc." H 2950 6600 50  0001 C CNN "Manufacturer"
F 6 "LT1303CN8-5#PBF" H 2950 6600 50  0001 C CNN "Manufacturer Part Number"
	1    2950 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 6450 1600 6450
Wire Wire Line
	1600 6450 1600 7000
Wire Wire Line
	1600 6450 2150 6450
Wire Wire Line
	2150 6450 2150 6600
Connection ~ 1600 6450
Wire Wire Line
	2150 6450 2750 6450
Connection ~ 2150 6450
Wire Wire Line
	2750 6550 2750 6450
Connection ~ 2750 6450
Wire Wire Line
	3050 6550 3050 6450
Wire Wire Line
	3050 6450 3300 6450
Connection ~ 3050 6450
Wire Wire Line
	3450 6950 3550 6950
Wire Wire Line
	3850 6450 3850 6950
Wire Wire Line
	3600 6450 3850 6450
Connection ~ 3850 6950
Connection ~ 3550 6950
Wire Wire Line
	3550 6950 3850 6950
Wire Wire Line
	3450 7250 3550 7250
Connection ~ 3550 7250
Wire Wire Line
	3850 6950 3850 7350
Wire Wire Line
	2350 7250 2200 7250
Wire Wire Line
	2200 7250 2200 7350
Wire Wire Line
	2150 7700 2200 7700
Wire Wire Line
	2750 7700 2750 7650
Connection ~ 2150 7700
Wire Wire Line
	2200 7650 2200 7700
Connection ~ 2200 7700
Wire Wire Line
	2200 7700 2750 7700
Wire Wire Line
	2750 7700 3050 7700
Wire Wire Line
	3050 7700 3050 7650
Connection ~ 2750 7700
Wire Wire Line
	3050 7700 3850 7700
Wire Wire Line
	3850 7700 3850 7650
Connection ~ 3050 7700
Connection ~ 3850 7700
Wire Notes Line
	550  6100 550  7950
Wire Notes Line
	4750 7950 550  7950
Text GLabel 12850 1550 2    50   Output ~ 0
MIC_AMP_OUT
Wire Notes Line
	550  6100 4750 6100
Wire Notes Line
	4750 7950 4750 6100
$Comp
L power:GNDA #PWR084
U 1 1 6038B0AA
P 12550 2050
F 0 "#PWR084" H 12550 1800 50  0001 C CNN
F 1 "GNDA" H 12555 1877 50  0000 C CNN
F 2 "" H 12550 2050 50  0001 C CNN
F 3 "" H 12550 2050 50  0001 C CNN
	1    12550 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	12450 1550 12800 1550
Wire Wire Line
	12450 1950 12550 1950
Wire Wire Line
	12550 1950 12550 2050
$Comp
L Device:R_US R29
U 1 1 60393575
P 10050 1050
F 0 "R29" H 9981 1096 50  0000 R CNN
F 1 "2K" H 9981 1005 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9980 1050 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 10050 1050 50  0001 C CNN
F 4 "RNF14FTD2K00CT-ND" H 10050 1050 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 10050 1050 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD2K00" H 10050 1050 50  0001 C CNN "Manufacturer Part Number"
	1    10050 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R30
U 1 1 60393DD2
P 10250 650
F 0 "R30" V 10350 600 50  0000 C CNN
F 1 "2K" V 10350 750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10180 650 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 10250 650 50  0001 C CNN
F 4 "RNF14FTD2K00CT-ND" H 10250 650 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 10250 650 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD2K00" H 10250 650 50  0001 C CNN "Manufacturer Part Number"
	1    10250 650 
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R33
U 1 1 60394190
P 10800 1300
F 0 "R33" H 10870 1346 50  0000 L CNN
F 1 "1M" H 10870 1255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10730 1300 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 10800 1300 50  0001 C CNN
F 4 "RNF14FTD1M00CT-ND" H 10800 1300 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 10800 1300 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD1M00" H 10800 1300 50  0001 C CNN "Manufacturer Part Number"
	1    10800 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R34
U 1 1 603945D2
P 10800 1800
F 0 "R34" H 10870 1846 50  0000 L CNN
F 1 "1M" H 10870 1755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10730 1800 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 10800 1800 50  0001 C CNN
F 4 "RNF14FTD1M00CT-ND" H 10800 1800 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 10800 1800 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD1M00" H 10800 1800 50  0001 C CNN "Manufacturer Part Number"
	1    10800 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1550 10050 1550
$Comp
L power:+5VA #PWR073
U 1 1 6039AA56
P 10500 650
F 0 "#PWR073" H 10500 500 50  0001 C CNN
F 1 "+5VA" V 10515 778 50  0000 L CNN
F 2 "" H 10500 650 50  0001 C CNN
F 3 "" H 10500 650 50  0001 C CNN
	1    10500 650 
	0    1    1    0   
$EndComp
Wire Wire Line
	10400 650  10500 650 
$Comp
L Device:C C22
U 1 1 603A9370
P 10300 1000
F 0 "C22" H 10415 1046 50  0000 L CNN
F 1 "0.1uF" H 10415 955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 10338 850 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1050_GOLDMAX_X7R.pdf" H 10300 1000 50  0001 C CNN
F 4 "399-13932-ND" H 10300 1000 50  0001 C CNN "Digi-Key Part Number"
F 5 "KEMET" H 10300 1000 50  0001 C CNN "Manufacturer"
F 6 "C322C104J5R5TA" H 10300 1000 50  0001 C CNN "Manufacturer Part Number"
	1    10300 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR070
U 1 1 603AA89C
P 10300 1200
F 0 "#PWR070" H 10300 950 50  0001 C CNN
F 1 "GNDA" H 10305 1027 50  0000 C CNN
F 2 "" H 10300 1200 50  0001 C CNN
F 3 "" H 10300 1200 50  0001 C CNN
	1    10300 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 1550 10050 1200
Wire Wire Line
	10050 900  10050 850 
Wire Wire Line
	10300 850  10050 850 
Connection ~ 10050 850 
Wire Wire Line
	10300 1150 10300 1200
$Comp
L Device:C C23
U 1 1 603C7D59
P 10550 1550
F 0 "C23" V 10298 1550 50  0000 C CNN
F 1 "10nF" V 10389 1550 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 10588 1400 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/leadmlcc_halogenfree_fg_en.pdf" H 10550 1550 50  0001 C CNN
F 4 "445-173474-1-ND" H 10550 1550 50  0001 C CNN "Digi-Key Part Number"
F 5 "TDK Corporation" H 10550 1550 50  0001 C CNN "Manufacturer"
F 6 "FG28C0G1H103JNT06" H 10550 1550 50  0001 C CNN "Manufacturer Part Number"
	1    10550 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	10050 1550 10400 1550
Connection ~ 10050 1550
Wire Wire Line
	10700 1550 10800 1550
Wire Wire Line
	10800 1450 10800 1550
Connection ~ 10800 1550
Wire Wire Line
	10800 1550 11050 1550
Wire Wire Line
	10800 1650 10800 1550
$Comp
L power:GNDA #PWR078
U 1 1 603D5B99
P 10800 2000
F 0 "#PWR078" H 10800 1750 50  0001 C CNN
F 1 "GNDA" H 10723 1963 50  0000 R CNN
F 2 "" H 10800 2000 50  0001 C CNN
F 3 "" H 10800 2000 50  0001 C CNN
	1    10800 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR077
U 1 1 603D8484
P 10800 1100
F 0 "#PWR077" H 10800 950 50  0001 C CNN
F 1 "+5VA" H 10815 1273 50  0000 C CNN
F 2 "" H 10800 1100 50  0001 C CNN
F 3 "" H 10800 1100 50  0001 C CNN
	1    10800 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR068
U 1 1 603DB38A
P 10050 1850
F 0 "#PWR068" H 10050 1600 50  0001 C CNN
F 1 "GNDA" H 10055 1677 50  0000 C CNN
F 2 "" H 10050 1850 50  0001 C CNN
F 3 "" H 10050 1850 50  0001 C CNN
	1    10050 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1750 10050 1750
Wire Wire Line
	10050 1750 10050 1850
$Comp
L Device:C C25
U 1 1 603DE3A1
P 11750 2800
F 0 "C25" V 11910 2800 50  0000 C CNN
F 1 "100pF" V 12001 2800 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 11788 2650 50  0001 C CNN
F 3 "https://www.vishay.com/docs/45171/kseries.pdf" H 11750 2800 50  0001 C CNN
F 4 "BC1013CT-ND" H 11750 2800 50  0001 C CNN "Digi-Key Part Number"
F 5 "Vishay Beyschlag/Draloric/BC Components" H 11750 2800 50  0001 C CNN "Manufacturer"
F 6 "K101J15C0GF5TL2" H 11750 2800 50  0001 C CNN "Manufacturer Part Number"
	1    11750 2800
	0    1    1    0   
$EndComp
$Comp
L Device:C C24
U 1 1 603DF607
P 10600 2600
F 0 "C24" H 10390 2650 50  0000 L CNN
F 1 "1uF" H 10310 2570 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.5mm_W4.4mm_P5.00mm" H 10638 2450 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/leadmlcc_halogenfree_fg_en.pdf" H 10600 2600 50  0001 C CNN
F 4 "399-13901-ND" H 10600 2600 50  0001 C CNN "Digi-Key Part Number"
F 5 "KEMET" H 10600 2600 50  0001 C CNN "Manufacturer"
F 6 "C330C105J5R5TA" H 10600 2600 50  0001 C CNN "Manufacturer Part Number"
	1    10600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 2350 12800 1550
Connection ~ 12800 2350
Wire Wire Line
	11900 2800 12800 2800
Wire Wire Line
	11600 2800 11050 2800
Wire Wire Line
	11050 2800 11050 2350
Connection ~ 11050 2350
Wire Wire Line
	11050 2350 11050 1650
Wire Wire Line
	11000 2350 11050 2350
Wire Wire Line
	10700 2350 10600 2350
Wire Wire Line
	10600 2350 10600 2450
$Comp
L power:GNDA #PWR074
U 1 1 60402E08
P 10600 2850
F 0 "#PWR074" H 10600 2600 50  0001 C CNN
F 1 "GNDA" H 10605 2677 50  0000 C CNN
F 2 "" H 10600 2850 50  0001 C CNN
F 3 "" H 10600 2850 50  0001 C CNN
	1    10600 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 2750 10600 2850
Wire Wire Line
	10800 1950 10800 2000
Wire Wire Line
	10800 1100 10800 1150
Wire Notes Line
	9250 550  9250 3200
Wire Notes Line
	9250 3200 13450 3200
Text Notes 12350 3100 0    50   ~ 10
Mic/Amp Module
Wire Notes Line
	6900 7950 6900 7150
Wire Notes Line
	9250 550  13450 550 
Wire Notes Line
	13450 3200 13450 550 
Wire Notes Line
	9200 550  6950 550 
Text Notes 7200 1100 0    50   ~ 10
12 Bit ADC
Wire Wire Line
	8700 1800 8700 1850
$Comp
L power:+5VA #PWR065
U 1 1 602AC966
P 8700 2200
F 0 "#PWR065" H 8700 2050 50  0001 C CNN
F 1 "+5VA" V 8715 2328 50  0000 L CNN
F 2 "" H 8700 2200 50  0001 C CNN
F 3 "" H 8700 2200 50  0001 C CNN
	1    8700 2200
	0    1    1    0   
$EndComp
Connection ~ 8700 1800
Wire Wire Line
	8700 2150 8700 2200
$Comp
L Device:R_US R28
U 1 1 602A76AC
P 8700 2000
F 0 "R28" H 8768 2046 50  0000 L CNN
F 1 "10K" H 8768 1955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8630 2000 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 8700 2000 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 8700 2000 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 8700 2000 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 8700 2000 50  0001 C CNN "Manufacturer Part Number"
	1    8700 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR062
U 1 1 6026FF6F
P 8350 1300
F 0 "#PWR062" H 8350 1050 50  0001 C CNN
F 1 "GNDA" H 8438 1263 50  0000 L CNN
F 2 "" H 8350 1300 50  0001 C CNN
F 3 "" H 8350 1300 50  0001 C CNN
	1    8350 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 1250 8350 1250
Wire Wire Line
	8350 1250 8350 1300
Connection ~ 8350 1250
Wire Wire Line
	8150 1350 8250 1350
Connection ~ 8150 1350
Connection ~ 8150 950 
Wire Wire Line
	8150 950  8150 1350
Wire Wire Line
	8050 1350 8150 1350
Wire Wire Line
	7550 1550 7650 1550
Text GLabel 7550 1550 0    50   Input ~ 0
MIC_AMP_OUT
Connection ~ 8350 950 
Wire Wire Line
	8150 950  8150 850 
Wire Wire Line
	8350 950  8150 950 
Wire Wire Line
	8350 950  8800 950 
Wire Wire Line
	7300 1750 7650 1750
$Comp
L power:GNDA #PWR054
U 1 1 602368F8
P 7300 1750
F 0 "#PWR054" H 7300 1500 50  0001 C CNN
F 1 "GNDA" V 7305 1623 50  0000 R CNN
F 2 "" H 7300 1750 50  0001 C CNN
F 3 "" H 7300 1750 50  0001 C CNN
	1    7300 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 1950 8050 2050
Wire Wire Line
	8700 1800 8800 1800
Wire Wire Line
	8700 1750 8700 1800
Wire Wire Line
	8650 1750 8700 1750
Wire Wire Line
	8650 1650 8800 1650
Wire Wire Line
	8700 1500 8800 1500
Wire Wire Line
	8700 1550 8700 1500
Wire Wire Line
	8650 1550 8700 1550
Text GLabel 8800 1800 2    50   Output ~ 0
SS_ADC
Text GLabel 8800 1650 2    50   3State ~ 0
MISO
Text GLabel 8800 1500 2    50   Input ~ 0
SCK
$Comp
L power:+5VA #PWR059
U 1 1 6020D397
P 8150 850
F 0 "#PWR059" H 8150 700 50  0001 C CNN
F 1 "+5VA" H 8165 1023 50  0000 C CNN
F 2 "" H 8150 850 50  0001 C CNN
F 3 "" H 8150 850 50  0001 C CNN
	1    8150 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR058
U 1 1 6020BFD9
P 8050 2050
F 0 "#PWR058" H 8050 1800 50  0001 C CNN
F 1 "GNDA" V 8055 1923 50  0000 R CNN
F 2 "" H 8050 2050 50  0001 C CNN
F 3 "" H 8050 2050 50  0001 C CNN
	1    8050 2050
	0    1    1    0   
$EndComp
$Comp
L Device:C C14
U 1 1 6020A87D
P 8350 1100
F 0 "C14" H 8465 1146 50  0000 L CNN
F 1 "0.1uF" H 8465 1055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 8388 950 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1050_GOLDMAX_X7R.pdf" H 8350 1100 50  0001 C CNN
F 4 "399-13932-ND" H 8350 1100 50  0001 C CNN "Digi-Key Part Number"
F 5 "KEMET" H 8350 1100 50  0001 C CNN "Manufacturer"
F 6 "C322C104J5R5TA" H 8350 1100 50  0001 C CNN "Manufacturer Part Number"
	1    8350 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C18
U 1 1 6020916A
P 8800 1100
F 0 "C18" H 8915 1146 50  0000 L CNN
F 1 "10uF" H 8915 1055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 8800 1100 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/leadmlcc_halogenfree_fg_en.pdf" H 8800 1100 50  0001 C CNN
F 4 "445-173370-1-ND" H 8800 1100 50  0001 C CNN "Digi-Key Part Number"
F 5 "TDK Corporation" H 8800 1100 50  0001 C CNN "Manufacturer"
F 6 "FG24X7R1A106KRT06" H 8800 1100 50  0001 C CNN "Manufacturer Part Number"
	1    8800 1100
	1    0    0    -1  
$EndComp
$Comp
L ShotTimerLibs:MCP3201_TriStateMISO-UserLibrary U6
U 1 1 6020673D
P 8150 1650
F 0 "U6" H 8350 1350 50  0000 C CNN
F 1 "MCP3201" H 8350 1250 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8900 1300 50  0001 C CNN
F 3 "https://ww1.microchip.com/downloads/en/DeviceDoc/21290F.pdf" H 8950 1550 50  0001 C CNN
F 4 "MCP3201-CI/P-ND" H 8150 1650 50  0001 C CNN "Digi-Key Part Number"
F 5 "Microchip Technology" H 8150 1650 50  0001 C CNN "Manufacturer"
F 6 "MCP3201-CI/P" H 8150 1650 50  0001 C CNN "Manufacturer Part Number"
	1    8150 1650
	1    0    0    -1  
$EndComp
Wire Notes Line
	6900 7000 6900 6200
Wire Notes Line
	6950 2300 9200 2300
Wire Notes Line
	9200 550  9200 2300
Wire Notes Line
	6950 2300 6950 550 
$Comp
L Device:LED LED1
U 1 1 601ADFD9
P 5150 6550
F 0 "LED1" H 5143 6295 50  0000 C CNN
F 1 "Green" H 5143 6386 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 5150 6550 50  0001 C CNN
F 3 "https://www.we-online.de/katalog/datasheet/151031VS04000.pdf" H 5150 6550 50  0001 C CNN
F 4 "732-5007-ND" H 5150 6550 50  0001 C CNN "Digi-Key Part Number"
F 5 "Würth Elektronik" H 5150 6550 50  0001 C CNN "Manufacturer"
F 6 "151031VS04000" H 5150 6550 50  0001 C CNN "Manufacturer Part Number"
	1    5150 6550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 6550 5400 6550
$Comp
L power:GND #PWR043
U 1 1 601E3E80
P 5700 6650
F 0 "#PWR043" H 5700 6400 50  0001 C CNN
F 1 "GND" H 5705 6477 50  0000 C CNN
F 2 "" H 5700 6650 50  0001 C CNN
F 3 "" H 5700 6650 50  0001 C CNN
	1    5700 6650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR038
U 1 1 601E4D88
P 5000 6650
F 0 "#PWR038" H 5000 6500 50  0001 C CNN
F 1 "+5V" H 5015 6823 50  0000 C CNN
F 2 "" H 5000 6650 50  0001 C CNN
F 3 "" H 5000 6650 50  0001 C CNN
	1    5000 6650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 6550 5000 6650
Wire Wire Line
	5700 6550 5700 6650
Wire Notes Line
	4850 6200 4850 7000
Wire Notes Line
	4850 7000 5850 7000
Wire Notes Line
	5850 7000 5850 6200
Wire Notes Line
	5850 6200 4850 6200
Text Notes 5200 6950 0    50   ~ 10
Power
$Comp
L Device:LED LED3
U 1 1 601F6C4D
P 6200 6550
F 0 "LED3" H 6193 6295 50  0000 C CNN
F 1 "Red" H 6193 6386 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6200 6550 50  0001 C CNN
F 3 "https://katalog.we-online.de/led/datasheet/151031SS04000.pdf" H 6200 6550 50  0001 C CNN
F 4 "732-5005-ND" H 6200 6550 50  0001 C CNN "Digi-Key Part Number"
F 5 "Würth Elektronik" H 6200 6550 50  0001 C CNN "Manufacturer"
F 6 "151031SS04000" H 6200 6550 50  0001 C CNN "Manufacturer Part Number"
	1    6200 6550
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 6550 6450 6550
$Comp
L power:GND #PWR052
U 1 1 601F6C5A
P 6750 6650
F 0 "#PWR052" H 6750 6400 50  0001 C CNN
F 1 "GND" H 6755 6477 50  0000 C CNN
F 2 "" H 6750 6650 50  0001 C CNN
F 3 "" H 6750 6650 50  0001 C CNN
	1    6750 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 6550 6750 6650
Wire Notes Line
	5900 6200 5900 7000
Wire Notes Line
	5900 7000 6900 7000
Wire Notes Line
	6900 6200 5900 6200
Text Notes 6200 6950 0    50   ~ 10
Low Battery
Wire Wire Line
	6050 6550 6050 6750
Text GLabel 6150 6750 2    50   Input ~ 0
LBO
Wire Wire Line
	6150 6750 6050 6750
$Comp
L Device:R_US R21
U 1 1 6010F7F1
P 5550 6550
F 0 "R21" V 5345 6550 50  0000 C CNN
F 1 "330" V 5436 6550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5590 6540 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 5550 6550 50  0001 C CNN
F 4 "S330CACT-ND" H 5550 6550 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 5550 6550 50  0001 C CNN "Manufacturer"
F 6 "RNMF14FTC330R" H 5550 6550 50  0001 C CNN "Manufacturer Part Number"
	1    5550 6550
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R23
U 1 1 60112350
P 6600 6550
F 0 "R23" V 6395 6550 50  0000 C CNN
F 1 "330" V 6486 6550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6640 6540 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 6600 6550 50  0001 C CNN
F 4 "S330CACT-ND" H 6600 6550 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 6600 6550 50  0001 C CNN "Manufacturer"
F 6 "RNMF14FTC330R" H 6600 6550 50  0001 C CNN "Manufacturer Part Number"
	1    6600 6550
	0    1    1    0   
$EndComp
Wire Notes Line
	5850 7150 4850 7150
Wire Notes Line
	4850 7950 5850 7950
Wire Notes Line
	4850 7150 4850 7950
Wire Wire Line
	6750 2000 6750 1900
Wire Wire Line
	6450 2000 6450 1900
$Comp
L Device:Ferrite_Bead FB2
U 1 1 6033E1BB
P 6600 1900
F 0 "FB2" V 6326 1900 50  0000 C CNN
F 1 "Ferrite_Bead" V 6417 1900 50  0000 C CNN
F 2 "Ferrite_THT:LairdTech_28C0236-0JW-10" V 6530 1900 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Steward%20PDFs/Part%20Number%20Guide.pdf" H 6600 1900 50  0001 C CNN
F 4 "240-2493-ND" H 6600 1900 50  0001 C CNN "Digi-Key Part Number"
F 5 "Laird-Signal Integrity Products" H 6600 1900 50  0001 C CNN "Manufacturer"
F 6 "28C0236-0JW-10" H 6600 1900 50  0001 C CNN "Manufacturer Part Number"
	1    6600 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 850  6750 950 
Wire Wire Line
	6450 850  6450 950 
$Comp
L Device:Ferrite_Bead FB1
U 1 1 60335FE1
P 6600 950
F 0 "FB1" V 6782 950 50  0000 C CNN
F 1 "Ferrite_Bead" V 6873 950 50  0000 C CNN
F 2 "Ferrite_THT:LairdTech_28C0236-0JW-10" V 6530 950 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Steward%20PDFs/Part%20Number%20Guide.pdf" H 6600 950 50  0001 C CNN
F 4 "240-2493-ND" H 6600 950 50  0001 C CNN "Digi-Key Part Number"
F 5 "Laird-Signal Integrity Products" H 6600 950 50  0001 C CNN "Manufacturer"
F 6 "28C0236-0JW-10" H 6600 950 50  0001 C CNN "Manufacturer Part Number"
	1    6600 950 
	0    1    1    0   
$EndComp
$Comp
L power:+5VA #PWR050
U 1 1 60333A0D
P 6750 850
F 0 "#PWR050" H 6750 700 50  0001 C CNN
F 1 "+5VA" H 6765 1023 50  0000 C CNN
F 2 "" H 6750 850 50  0001 C CNN
F 3 "" H 6750 850 50  0001 C CNN
	1    6750 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR051
U 1 1 6033293E
P 6750 2000
F 0 "#PWR051" H 6750 1750 50  0001 C CNN
F 1 "GNDA" H 6755 1827 50  0000 C CNN
F 2 "" H 6750 2000 50  0001 C CNN
F 3 "" H 6750 2000 50  0001 C CNN
	1    6750 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR049
U 1 1 603316BC
P 6450 2000
F 0 "#PWR049" H 6450 1750 50  0001 C CNN
F 1 "GND" H 6455 1827 50  0000 C CNN
F 2 "" H 6450 2000 50  0001 C CNN
F 3 "" H 6450 2000 50  0001 C CNN
	1    6450 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR048
U 1 1 60330935
P 6450 850
F 0 "#PWR048" H 6450 700 50  0001 C CNN
F 1 "+5V" H 6465 1023 50  0000 C CNN
F 2 "" H 6450 850 50  0001 C CNN
F 3 "" H 6450 850 50  0001 C CNN
	1    6450 850 
	1    0    0    -1  
$EndComp
Text Notes 6350 1450 0    50   ~ 10
Analog Zone
$Comp
L Device:LED LED2
U 1 1 6036AA47
P 5150 7500
F 0 "LED2" H 5143 7245 50  0000 C CNN
F 1 "Yellow" H 5143 7336 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 5150 7500 50  0001 C CNN
F 3 "https://www.we-online.de/katalog/datasheet/151031YS06000.pdf" H 5150 7500 50  0001 C CNN
F 4 "732-5010-ND" H 5150 7500 50  0001 C CNN "Digi-Key Part Number"
F 5 "Würth Elektronik" H 5150 7500 50  0001 C CNN "Manufacturer"
F 6 "151031YS06000" H 5150 7500 50  0001 C CNN "Manufacturer Part Number"
	1    5150 7500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 7500 5000 7700
Wire Wire Line
	5100 7700 5000 7700
Text GLabel 5100 7700 2    50   Input ~ 0
ACTIVITY
$Comp
L Device:R_US R22
U 1 1 6036AA5D
P 5550 7500
F 0 "R22" V 5345 7500 50  0000 C CNN
F 1 "330" V 5436 7500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5590 7490 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 5550 7500 50  0001 C CNN
F 4 "S330CACT-ND" H 5550 7500 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 5550 7500 50  0001 C CNN "Manufacturer"
F 6 "RNMF14FTC330R" H 5550 7500 50  0001 C CNN "Manufacturer Part Number"
	1    5550 7500
	0    1    1    0   
$EndComp
Text Notes 5200 7900 0    50   ~ 10
Activity
Wire Notes Line
	5850 7950 5850 7150
Wire Wire Line
	5700 7500 5700 7600
$Comp
L power:GND #PWR044
U 1 1 6036AA4E
P 5700 7600
F 0 "#PWR044" H 5700 7350 50  0001 C CNN
F 1 "GND" H 5705 7427 50  0000 C CNN
F 2 "" H 5700 7600 50  0001 C CNN
F 3 "" H 5700 7600 50  0001 C CNN
	1    5700 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 7500 5400 7500
$Comp
L Device:LED LED4
U 1 1 60448015
P 6200 7500
F 0 "LED4" H 6193 7245 50  0000 C CNN
F 1 "Yellow" H 6193 7336 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6200 7500 50  0001 C CNN
F 3 "https://www.we-online.de/katalog/datasheet/151031YS06000.pdf" H 6200 7500 50  0001 C CNN
F 4 "732-5010-ND" H 6200 7500 50  0001 C CNN "Digi-Key Part Number"
F 5 "Würth Elektronik" H 6200 7500 50  0001 C CNN "Manufacturer"
F 6 "151031YS06000" H 6200 7500 50  0001 C CNN "Manufacturer Part Number"
	1    6200 7500
	-1   0    0    1   
$EndComp
Wire Notes Line
	5900 7150 5900 7950
Wire Notes Line
	5900 7950 6900 7950
Wire Wire Line
	6050 7500 6050 7700
Wire Wire Line
	6150 7700 6050 7700
Text GLabel 6150 7700 2    50   Input ~ 0
PGML1
$Comp
L Device:R_US R24
U 1 1 60448020
P 6600 7500
F 0 "R24" V 6395 7500 50  0000 C CNN
F 1 "330" V 6486 7500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6640 7490 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 6600 7500 50  0001 C CNN
F 4 "S330CACT-ND" H 6600 7500 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 6600 7500 50  0001 C CNN "Manufacturer"
F 6 "RNMF14FTC330R" H 6600 7500 50  0001 C CNN "Manufacturer Part Number"
	1    6600 7500
	0    1    1    0   
$EndComp
Text Notes 6250 7900 0    50   ~ 10
PGML1
Wire Notes Line
	6900 7150 5900 7150
Wire Wire Line
	6750 7500 6750 7600
$Comp
L power:GND #PWR053
U 1 1 6044802A
P 6750 7600
F 0 "#PWR053" H 6750 7350 50  0001 C CNN
F 1 "GND" H 6755 7427 50  0000 C CNN
F 2 "" H 6750 7600 50  0001 C CNN
F 3 "" H 6750 7600 50  0001 C CNN
	1    6750 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 7500 6450 7500
Wire Wire Line
	12800 1550 12850 1550
Connection ~ 12800 1550
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J2
U 1 1 601EEA95
P 4300 1300
F 0 "J2" V 4304 1113 50  0000 R CNN
F 1 "ISP" V 4395 1113 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 4300 1300 50  0001 C CNN
F 3 "~" H 4300 1300 50  0001 C CNN
F 4 "2057-PH2-06-UA-ND" H 4300 1300 50  0001 C CNN "Digi-Key Part Number"
F 5 "Adam Tech" H 4300 1300 50  0001 C CNN "Manufacturer"
F 6 "PH2-06-UA" H 4300 1300 50  0001 C CNN "Manufacturer Part Number"
	1    4300 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 1600 4200 1700
Text Label 4550 1800 0    50   ~ 0
VCC
Wire Wire Line
	4400 1050 4450 1050
Text GLabel 4450 1050 2    50   Input ~ 0
MISO
Text GLabel 4350 850  2    50   Output ~ 0
SCK
Text GLabel 4250 1850 0    50   Output ~ 0
MOSI
$Comp
L Device:Jumper_NC_Dual JP2
U 1 1 602D346B
P 4850 1500
F 0 "JP2" V 4896 1601 50  0000 L CNN
F 1 "ISP_PWR" V 4805 1601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4850 1500 50  0001 C CNN
F 3 "~" H 4850 1500 50  0001 C CNN
F 4 "2057-PH1-03-UA-ND" H 4850 1500 50  0001 C CNN "Digi-Key Part Number"
F 5 "Adam Tech" H 4850 1500 50  0001 C CNN "Manufacturer"
F 6 "PH1-03-UA" H 4850 1500 50  0001 C CNN "Manufacturer Part Number"
	1    4850 1500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR035
U 1 1 603569D2
P 4850 850
F 0 "#PWR035" H 4850 600 50  0001 C CNN
F 1 "GND" H 4855 677 50  0000 C CNN
F 2 "" H 4850 850 50  0001 C CNN
F 3 "" H 4850 850 50  0001 C CNN
	1    4850 850 
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R19
U 1 1 60357830
P 4850 1050
F 0 "R19" H 4782 1004 50  0000 R CNN
F 1 "10K" H 4782 1095 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4780 1050 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 4850 1050 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 4850 1050 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 4850 1050 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 4850 1050 50  0001 C CNN "Manufacturer Part Number"
	1    4850 1050
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N5817 D10
U 1 1 60481EC1
P 5300 2100
F 0 "D10" H 5300 1883 50  0000 C CNN
F 1 "1N5817" H 5300 1974 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5300 1925 50  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/26/db/14/60/52/47/47/5b/CD00001625.pdf/files/CD00001625.pdf/jcr:content/translations/en.CD00001625.pdf" H 5300 2100 50  0001 C CNN
F 4 "497-4547-1-ND" H 5300 2100 50  0001 C CNN "Digi-Key Part Number"
F 5 "STMicroelectronics" H 5300 2100 50  0001 C CNN "Manufacturer"
F 6 "1N5817" H 5300 2100 50  0001 C CNN "Manufacturer Part Number"
	1    5300 2100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR030
U 1 1 604C4C8A
P 4150 1700
F 0 "#PWR030" H 4150 1450 50  0001 C CNN
F 1 "GND" V 4155 1572 50  0000 R CNN
F 2 "" H 4150 1700 50  0001 C CNN
F 3 "" H 4150 1700 50  0001 C CNN
	1    4150 1700
	0    1    1    0   
$EndComp
Text GLabel 5650 900  0    50   Input ~ 0
SYS_PWR
Text GLabel 4150 900  0    50   Input ~ 0
ISP_RESET
Text Notes 4100 7200 0    39   ~ 0
Low Battery\nGoes Low at 2.2V
Wire Wire Line
	3550 7250 4250 7250
Text GLabel 4250 7250 2    50   Output ~ 0
LBO
Wire Wire Line
	3850 7700 4250 7700
$Comp
L power:GND #PWR033
U 1 1 601AA2B6
P 4250 7700
F 0 "#PWR033" H 4250 7450 50  0001 C CNN
F 1 "GND" V 4255 7572 50  0000 R CNN
F 2 "" H 4250 7700 50  0001 C CNN
F 3 "" H 4250 7700 50  0001 C CNN
	1    4250 7700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 6950 4250 6950
$Comp
L power:+5V #PWR032
U 1 1 601AA2DA
P 4250 6950
F 0 "#PWR032" H 4250 6800 50  0001 C CNN
F 1 "+5V" V 4265 7078 50  0000 L CNN
F 2 "" H 4250 6950 50  0001 C CNN
F 3 "" H 4250 6950 50  0001 C CNN
	1    4250 6950
	0    1    1    0   
$EndComp
Text GLabel 1150 6800 0    50   Output ~ 0
SYS_PWR
Wire Wire Line
	1200 6800 1150 6800
Wire Wire Line
	1200 6800 1200 7100
Text GLabel 5800 2100 2    50   Output ~ 0
PWR
Text GLabel 1150 6450 0    50   Input ~ 0
PWR
Wire Notes Line
	6250 550  6250 2300
Wire Notes Line
	3600 2300 6250 2300
Text Notes 4200 2150 0    50   ~ 10
AVR ISP
$Comp
L Device:Buzzer BZ1
U 1 1 6020715B
P 5000 3550
F 0 "BZ1" H 4750 3650 50  0000 L CNN
F 1 "Speaker" H 4700 3550 50  0000 L CNN
F 2 "ShotTimer:PS1420P02CT" V 4975 3650 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/piezoelectronic_buzzer_ps_en.pdf" V 4975 3650 50  0001 C CNN
F 4 "445-2526-1-ND" H 5000 3550 50  0001 C CNN "Digi-Key Part Number"
F 5 "TDK Corporation" H 5000 3550 50  0001 C CNN "Manufacturer"
F 6 "PS1420P02CT" H 5000 3550 50  0001 C CNN "Manufacturer Part Number"
	1    5000 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R17
U 1 1 6021237C
P 4650 3550
F 0 "R17" H 4581 3596 50  0000 R CNN
F 1 "1K" H 4581 3505 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4580 3550 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 4650 3550 50  0001 C CNN
F 4 "RNF14FTD1K00CT-ND" H 4650 3550 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 4650 3550 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD1K00" H 4650 3550 50  0001 C CNN "Manufacturer Part Number"
	1    4650 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3450 4900 3350
Wire Wire Line
	4900 3350 4650 3350
Wire Wire Line
	4650 3350 4650 3400
Wire Wire Line
	5050 3350 4900 3350
Connection ~ 4900 3350
Wire Wire Line
	4650 3700 4650 3750
Wire Wire Line
	4900 3650 4900 3750
Wire Wire Line
	4900 3750 4650 3750
Connection ~ 4650 3750
$Comp
L Device:Q_NPN_EBC Q1
U 1 1 602959E2
P 4550 4000
F 0 "Q1" H 4741 4046 50  0000 L CNN
F 1 "Q_NPN_EBC" H 4741 3955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 4750 4100 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/KSP2222A-D.PDF" H 4550 4000 50  0001 C CNN
F 4 "KSP2222ABUFS-ND" H 4550 4000 50  0001 C CNN "Digi-Key Part Number"
F 5 "ON Semiconductor" H 4550 4000 50  0001 C CNN "Manufacturer"
F 6 "KSP2222ABU" H 4550 4000 50  0001 C CNN "Manufacturer Part Number"
	1    4550 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3750 4650 3800
$Comp
L power:GND #PWR034
U 1 1 603003AA
P 4650 4450
F 0 "#PWR034" H 4650 4200 50  0001 C CNN
F 1 "GND" H 4655 4277 50  0000 C CNN
F 2 "" H 4650 4450 50  0001 C CNN
F 3 "" H 4650 4450 50  0001 C CNN
	1    4650 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4200 4650 4400
Text GLabel 4200 3900 1    50   Input ~ 0
SPEAKER_PWM
Wire Wire Line
	4200 3900 4200 4000
Wire Wire Line
	4200 4050 4200 4000
Wire Wire Line
	4200 4000 4350 4000
Wire Wire Line
	4200 4350 4200 4400
Wire Wire Line
	4200 4400 4650 4400
Connection ~ 4650 4400
Wire Wire Line
	4650 4400 4650 4450
Connection ~ 4200 4000
$Comp
L Device:R_US R16
U 1 1 603C861E
P 4200 4200
F 0 "R16" H 4133 4246 50  0000 R CNN
F 1 "10K" H 4133 4155 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4130 4200 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 4200 4200 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 4200 4200 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 4200 4200 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 4200 4200 50  0001 C CNN "Manufacturer Part Number"
	1    4200 4200
	1    0    0    -1  
$EndComp
Wire Notes Line
	3900 4750 3900 2650
Wire Notes Line
	3900 2650 5250 2650
Wire Notes Line
	5250 2650 5250 4750
Wire Notes Line
	3900 4750 5250 4750
Text Notes 4800 4550 0    50   ~ 10
Speaker
$Comp
L Memory_EEPROM:25LCxxx U7
U 1 1 60988DE0
P 8200 7350
F 0 "U7" H 8050 7650 50  0000 C CNN
F 1 "25LC1024-I/P" H 8550 7650 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8200 7350 50  0001 C CNN
F 3 "https://ww1.microchip.com/downloads/en/DeviceDoc/22064D.pdf" H 8200 7350 50  0001 C CNN
F 4 "25LC1024-I/P-ND" H 8200 7350 50  0001 C CNN "Digi-Key Part Number"
F 5 "Microchip Technology" H 8200 7350 50  0001 C CNN "Manufacturer"
F 6 "25LC1024-I/P" H 8200 7350 50  0001 C CNN "Manufacturer Part Number"
	1    8200 7350
	1    0    0    -1  
$EndComp
Text GLabel 8650 7250 2    50   Input ~ 0
SCK
Wire Wire Line
	8650 7250 8600 7250
Text GLabel 8650 7350 2    50   Input ~ 0
MOSI
Wire Wire Line
	8600 7350 8650 7350
Text GLabel 8650 7450 2    50   Output ~ 0
MISO
Wire Wire Line
	8600 7450 8650 7450
Text GLabel 7700 7450 0    50   Output ~ 0
SS_EEPROM
$Comp
L Device:R_US R27
U 1 1 60A21303
P 7750 7650
F 0 "R27" H 7818 7696 50  0000 L CNN
F 1 "10K" H 7818 7605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7680 7650 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 7750 7650 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 7750 7650 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 7750 7650 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 7750 7650 50  0001 C CNN "Manufacturer Part Number"
	1    7750 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 7850 7750 7800
Wire Wire Line
	7750 7500 7750 7450
Wire Wire Line
	7750 7450 7800 7450
$Comp
L power:+5V #PWR057
U 1 1 60ABAFC5
P 7700 7850
F 0 "#PWR057" H 7700 7700 50  0001 C CNN
F 1 "+5V" V 7715 7978 50  0000 L CNN
F 2 "" H 7700 7850 50  0001 C CNN
F 3 "" H 7700 7850 50  0001 C CNN
	1    7700 7850
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C17
U 1 1 60ABF837
P 8550 6800
F 0 "C17" H 8665 6846 50  0000 L CNN
F 1 "0.1uF" H 8665 6755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 8588 6650 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1050_GOLDMAX_X7R.pdf" H 8550 6800 50  0001 C CNN
F 4 "399-13932-ND" H 8550 6800 50  0001 C CNN "Digi-Key Part Number"
F 5 "KEMET" H 8550 6800 50  0001 C CNN "Manufacturer"
F 6 "C322C104J5R5TA" H 8550 6800 50  0001 C CNN "Manufacturer Part Number"
	1    8550 6800
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR060
U 1 1 60AFE5FC
P 8200 6550
F 0 "#PWR060" H 8200 6400 50  0001 C CNN
F 1 "+5V" H 8215 6723 50  0000 C CNN
F 2 "" H 8200 6550 50  0001 C CNN
F 3 "" H 8200 6550 50  0001 C CNN
	1    8200 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 6600 8550 6650
$Comp
L Device:CP1 C19
U 1 1 60ABF831
P 9000 6800
F 0 "C19" H 9115 6846 50  0000 L CNN
F 1 "10uF" H 9115 6755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9000 6800 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/leadmlcc_halogenfree_fg_en.pdf" H 9000 6800 50  0001 C CNN
F 4 "445-173370-1-ND" H 9000 6800 50  0001 C CNN "Digi-Key Part Number"
F 5 "TDK Corporation" H 9000 6800 50  0001 C CNN "Manufacturer"
F 6 "FG24X7R1A106KRT06" H 9000 6800 50  0001 C CNN "Manufacturer Part Number"
	1    9000 6800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8550 6600 9000 6600
Wire Wire Line
	9000 6600 9000 6650
Connection ~ 8550 6600
Wire Wire Line
	9000 6950 9000 7000
Wire Wire Line
	9000 7000 8550 7000
Wire Wire Line
	8550 7000 8550 6950
$Comp
L power:GND #PWR066
U 1 1 60B9A1AD
P 9000 7050
F 0 "#PWR066" H 9000 6800 50  0001 C CNN
F 1 "GND" H 9005 6877 50  0000 C CNN
F 2 "" H 9000 7050 50  0001 C CNN
F 3 "" H 9000 7050 50  0001 C CNN
	1    9000 7050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9000 7000 9000 7050
Connection ~ 9000 7000
$Comp
L Device:R_US R25
U 1 1 60BDD104
P 7550 7350
F 0 "R25" V 7755 7350 50  0000 C CNN
F 1 "10K" V 7664 7350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7480 7350 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 7550 7350 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 7550 7350 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 7550 7350 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 7550 7350 50  0001 C CNN "Manufacturer Part Number"
	1    7550 7350
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR055
U 1 1 60BDD10B
P 7350 7350
F 0 "#PWR055" H 7350 7200 50  0001 C CNN
F 1 "+5V" V 7365 7478 50  0000 L CNN
F 2 "" H 7350 7350 50  0001 C CNN
F 3 "" H 7350 7350 50  0001 C CNN
	1    7350 7350
	0    -1   -1   0   
$EndComp
Text GLabel 7750 6950 1    50   Input ~ 0
Write_Protection
$Comp
L Device:R_US R26
U 1 1 60CFA45F
P 7600 6800
F 0 "R26" H 7533 6846 50  0000 R CNN
F 1 "10K" H 7533 6755 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7530 6800 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 7600 6800 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 7600 6800 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 7600 6800 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 7600 6800 50  0001 C CNN "Manufacturer Part Number"
	1    7600 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 6550 8200 6600
Wire Wire Line
	8200 6600 8550 6600
Connection ~ 8200 6600
Wire Wire Line
	8200 6600 8200 7050
$Comp
L power:GND #PWR056
U 1 1 60DA45EF
P 7600 6600
F 0 "#PWR056" H 7600 6350 50  0001 C CNN
F 1 "GND" H 7605 6427 50  0000 C CNN
F 2 "" H 7600 6600 50  0001 C CNN
F 3 "" H 7600 6600 50  0001 C CNN
	1    7600 6600
	1    0    0    1   
$EndComp
Wire Wire Line
	7700 7350 7800 7350
Wire Wire Line
	7350 7350 7400 7350
Wire Wire Line
	7700 7450 7750 7450
Connection ~ 7750 7450
$Comp
L power:GND #PWR061
U 1 1 60EA6D83
P 8200 7700
F 0 "#PWR061" H 8200 7450 50  0001 C CNN
F 1 "GND" H 8205 7527 50  0000 C CNN
F 2 "" H 8200 7700 50  0001 C CNN
F 3 "" H 8200 7700 50  0001 C CNN
	1    8200 7700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8200 7650 8200 7700
Wire Wire Line
	7750 7250 7800 7250
Wire Wire Line
	7600 6600 7600 6650
Wire Wire Line
	7750 6950 7750 7000
Wire Wire Line
	7600 6950 7600 7000
Wire Wire Line
	7600 7000 7750 7000
Connection ~ 7750 7000
Wire Wire Line
	7750 7000 7750 7250
Wire Notes Line
	7000 7950 7000 6200
Wire Notes Line
	7000 6200 9200 6200
Wire Notes Line
	9200 6200 9200 7950
Wire Notes Line
	7000 7950 9200 7950
Text Notes 8550 7900 0    50   ~ 10
EEPROM
Wire Notes Line
	6300 2300 6300 550 
Wire Notes Line
	6300 550  6900 550 
Wire Notes Line
	6900 550  6900 2300
Wire Notes Line
	6300 2300 6900 2300
Wire Wire Line
	10100 650  10050 650 
Wire Wire Line
	10050 650  10050 850 
Wire Notes Line
	3600 550  6250 550 
Wire Notes Line
	3600 2300 3600 550 
Text Notes 9850 6350 0    50   ~ 10
Serial\nCOM
Wire Notes Line
	9800 6150 9800 6650
Wire Notes Line
	10600 6650 9800 6650
Wire Notes Line
	10600 6150 10600 6650
Wire Notes Line
	9800 6150 10600 6150
Text Notes 10400 6600 0    50   ~ 10
RX
Text Notes 10400 6500 0    50   ~ 10
TX
Wire Wire Line
	10050 6550 10100 6550
Wire Wire Line
	10100 6450 10050 6450
Text GLabel 10050 6450 0    50   Output ~ 0
RX
Text GLabel 10050 6550 0    50   Input ~ 0
TX
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 605404DD
P 10300 6450
F 0 "J3" H 10218 6667 50  0000 C CNN
F 1 "SERIAL" H 10218 6576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10300 6450 50  0001 C CNN
F 3 "~" H 10300 6450 50  0001 C CNN
F 4 "2057-PH1-02-UA-ND" H 10300 6450 50  0001 C CNN "Digi-Key Part Number"
F 5 "Adam Tech" H 10300 6450 50  0001 C CNN "Manufacturer"
F 6 "PH1-02-UA" H 10300 6450 50  0001 C CNN "Manufacturer Part Number"
	1    10300 6450
	1    0    0    -1  
$EndComp
Text Notes 1350 5750 0    50   ~ 10
Button Interface
Wire Notes Line
	550  2850 3800 2850
Wire Wire Line
	1400 4150 1450 4150
Wire Wire Line
	1400 4050 1450 4050
Text GLabel 1400 4150 0    50   Output ~ 0
~Y
Text GLabel 1400 4050 0    50   Output ~ 0
Y
Text GLabel 1650 3000 0    50   Output ~ 0
BUTTON_PUSHED
Wire Wire Line
	2450 3000 1650 3000
Wire Wire Line
	1400 5450 1450 5450
$Comp
L power:GND #PWR07
U 1 1 608205B6
P 1150 4750
F 0 "#PWR07" H 1150 4500 50  0001 C CNN
F 1 "GND" H 1155 4577 50  0000 C CNN
F 2 "" H 1150 4750 50  0001 C CNN
F 3 "" H 1150 4750 50  0001 C CNN
	1    1150 4750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 6081F88A
P 1400 5450
F 0 "#PWR08" H 1400 5200 50  0001 C CNN
F 1 "GND" V 1405 5322 50  0000 R CNN
F 2 "" H 1400 5450 50  0001 C CNN
F 3 "" H 1400 5450 50  0001 C CNN
	1    1400 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 4350 7750 4350
Text GLabel 7750 4350 2    50   Input ~ 0
BUTTON_PUSHED
Wire Wire Line
	7600 5150 7700 5150
Wire Wire Line
	7600 5050 7700 5050
Text GLabel 7700 5150 2    50   Input ~ 0
~Y
Text GLabel 7700 5050 2    50   Input ~ 0
Y
Wire Wire Line
	7700 5350 7600 5350
Wire Wire Line
	7700 5250 7600 5250
Text GLabel 7700 5350 2    50   Output ~ 0
S1
Text GLabel 7700 5250 2    50   Output ~ 0
S0
Wire Wire Line
	7600 5550 7700 5550
Text GLabel 7700 5550 2    50   Input ~ 0
Write_Protection
Wire Wire Line
	7600 3150 7750 3150
Text GLabel 7750 3150 2    50   Input ~ 0
SS_EEPROM
Wire Wire Line
	7600 4950 7700 4950
Wire Wire Line
	7700 4850 7600 4850
Text GLabel 7700 4850 2    50   Input ~ 0
RX
Text GLabel 7700 4950 2    50   Output ~ 0
TX
Wire Wire Line
	4250 5100 4300 5100
Text GLabel 7750 4550 2    50   Output ~ 0
SPEAKER_PWM
Wire Wire Line
	7600 5450 7700 5450
Connection ~ 4300 5300
Text GLabel 4350 5650 2    50   Output ~ 0
ISP_RESET
Wire Wire Line
	7600 3250 7750 3250
Text GLabel 7750 3250 2    50   Input ~ 0
SS_DS
$Comp
L Device:C C16
U 1 1 60191B03
P 8500 4000
F 0 "C16" V 8650 4000 50  0000 C CNN
F 1 "22pF" V 8750 4000 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 8538 3850 50  0001 C CNN
F 3 "https://www.vishay.com/docs/45171/kseries.pdf" H 8500 4000 50  0001 C CNN
F 4 "BC1005CT-ND" H 8500 4000 50  0001 C CNN "Digi-Key Part Number"
F 5 "Vishay Beyschlag/Draloric/BC Components" H 8500 4000 50  0001 C CNN "Manufacturer"
F 6 "K220J15C0GF5TL2" H 8500 4000 50  0001 C CNN "Manufacturer Part Number"
	1    8500 4000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR064
U 1 1 60198976
P 8650 4000
F 0 "#PWR064" H 8650 3750 50  0001 C CNN
F 1 "GND" V 8655 3872 50  0000 R CNN
F 2 "" H 8650 4000 50  0001 C CNN
F 3 "" H 8650 4000 50  0001 C CNN
	1    8650 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8300 4000 8350 4000
Wire Wire Line
	8300 3950 8300 4000
Connection ~ 8200 3950
Wire Wire Line
	8200 3950 8300 3950
Connection ~ 8200 3650
Wire Wire Line
	8300 3600 8350 3600
Wire Wire Line
	8300 3650 8300 3600
Wire Wire Line
	8200 3650 8300 3650
$Comp
L power:GND #PWR063
U 1 1 601978FA
P 8650 3600
F 0 "#PWR063" H 8650 3350 50  0001 C CNN
F 1 "GND" V 8655 3472 50  0000 R CNN
F 2 "" H 8650 3600 50  0001 C CNN
F 3 "" H 8650 3600 50  0001 C CNN
	1    8650 3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C15
U 1 1 60190586
P 8500 3600
F 0 "C15" V 8248 3600 50  0000 C CNN
F 1 "22pF" V 8339 3600 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 8538 3450 50  0001 C CNN
F 3 "https://www.vishay.com/docs/45171/kseries.pdf" H 8500 3600 50  0001 C CNN
F 4 "BC1005CT-ND" H 8500 3600 50  0001 C CNN "Digi-Key Part Number"
F 5 "Vishay Beyschlag/Draloric/BC Components" H 8500 3600 50  0001 C CNN "Manufacturer"
F 6 "K220J15C0GF5TL2" H 8500 3600 50  0001 C CNN "Manufacturer Part Number"
	1    8500 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 3850 7600 3850
Wire Wire Line
	8050 3950 8050 3850
Wire Wire Line
	8050 3650 8200 3650
Wire Wire Line
	8050 3750 7600 3750
Wire Wire Line
	8050 3650 8050 3750
$Comp
L Device:Crystal Y1
U 1 1 6018DF4E
P 8200 3800
F 0 "Y1" V 8154 3931 50  0000 L CNN
F 1 "16MHz" V 8245 3931 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 8200 3800 50  0001 C CNN
F 3 "http://www.txccrystal.com/images/pdf/9b-accuracy.pdf" H 8200 3800 50  0001 C CNN
F 4 "887-1244-ND" H 8200 3800 50  0001 C CNN "Digi-Key Part Number"
F 5 "TXC CORPORATION" H 8200 3800 50  0001 C CNN "Manufacturer"
F 6 "9B-16.000MEEJ-B" H 8200 3800 50  0001 C CNN "Manufacturer Part Number"
	1    8200 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 4250 7750 4250
Wire Wire Line
	7600 4050 7750 4050
Wire Wire Line
	7600 3350 7750 3350
Text GLabel 7750 3350 2    50   Input ~ 0
SS_ADC
Wire Wire Line
	7600 3450 7750 3450
Text GLabel 7750 3450 2    50   Output ~ 0
MOSI
Wire Wire Line
	7600 3550 7750 3550
Wire Wire Line
	7600 3650 7750 3650
Text GLabel 7750 3650 2    50   Output ~ 0
SCK
Text GLabel 7750 3550 2    50   Input ~ 0
MISO
Wire Wire Line
	8200 3950 8050 3950
Text GLabel 7750 4250 2    50   Output ~ 0
PGML1
Wire Wire Line
	7600 4150 7750 4150
Text GLabel 7750 4150 2    50   Input ~ 0
MIC_AMP_OUT
Wire Notes Line
	9000 5850 9000 2650
Text GLabel 7750 4050 2    50   Output ~ 0
ACTIVITY
Text Notes 7650 5800 0    50   ~ 10
MCU
$Comp
L Device:R_US R18
U 1 1 60114061
P 4650 5100
F 0 "R18" V 4445 5100 50  0000 C CNN
F 1 "10K" V 4536 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4690 5090 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 4650 5100 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 4650 5100 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 4650 5100 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 4650 5100 50  0001 C CNN "Manufacturer Part Number"
	1    4650 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 5300 4950 5300
Wire Wire Line
	4800 5100 4950 5100
Connection ~ 4300 5100
Wire Wire Line
	4300 5300 4300 5100
Wire Wire Line
	4450 5300 4300 5300
Wire Wire Line
	4500 5100 4300 5100
$Comp
L power:+5V #PWR036
U 1 1 601A6796
P 4950 5100
F 0 "#PWR036" H 4950 4950 50  0001 C CNN
F 1 "+5V" V 4965 5228 50  0000 L CNN
F 2 "" H 4950 5100 50  0001 C CNN
F 3 "" H 4950 5100 50  0001 C CNN
	1    4950 5100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR037
U 1 1 6019F0F1
P 4950 5300
F 0 "#PWR037" H 4950 5050 50  0001 C CNN
F 1 "GND" V 4955 5172 50  0000 R CNN
F 2 "" H 4950 5300 50  0001 C CNN
F 3 "" H 4950 5300 50  0001 C CNN
	1    4950 5300
	0    -1   -1   0   
$EndComp
$Comp
L ShotTimerLibs:SW_Push_1-3 SW9
U 1 1 6019939D
P 4650 5300
F 0 "SW9" H 4650 5207 50  0000 C CNN
F 1 "Reset" H 4650 5116 50  0000 C CNN
F 2 "ShotTimer:SW_B3F-10xx" H 4650 5500 50  0001 C CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-b3f.pdf" H 4650 5500 50  0001 C CNN
F 4 "SW950-ND" H 4650 5300 50  0001 C CNN "Digi-Key Part Number"
F 5 "Omron Electronics Inc-EMC Div" H 4650 5300 50  0001 C CNN "Manufacturer"
F 6 "B3F-1006" H 4650 5300 50  0001 C CNN "Manufacturer Part Number"
	1    4650 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR046
U 1 1 6018BBD1
P 6350 3900
F 0 "#PWR046" H 6350 3650 50  0001 C CNN
F 1 "GND" V 6355 3772 50  0000 R CNN
F 2 "" H 6350 3900 50  0001 C CNN
F 3 "" H 6350 3900 50  0001 C CNN
	1    6350 3900
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR045
U 1 1 60189D8E
P 6150 3250
F 0 "#PWR045" H 6150 3100 50  0001 C CNN
F 1 "+5V" H 6165 3423 50  0000 C CNN
F 2 "" H 6150 3250 50  0001 C CNN
F 3 "" H 6150 3250 50  0001 C CNN
	1    6150 3250
	-1   0    0    1   
$EndComp
Wire Notes Line
	9000 2650 5350 2650
Wire Notes Line
	5350 5850 9000 5850
Wire Notes Line
	5350 2650 5350 5850
$Comp
L ShotTimerLibs:ATmega328P-PU-UserLibrary U5
U 1 1 601251A6
P 7000 4350
F 0 "U5" H 7000 5917 50  0000 C CNN
F 1 "ATmega328P-PU" H 7000 5826 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 7000 4350 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 7000 4350 50  0001 C CNN
F 4 "ATMEGA328P-PU-ND" H 7000 4350 50  0001 C CNN "Digi-Key Part Number"
F 5 "Microchip Technology" H 7000 4350 50  0001 C CNN "Manufacturer"
F 6 "ATMEGA328P-PU" H 7000 4350 50  0001 C CNN "Manufacturer Part Number"
	1    7000 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 6035EC8E
P 2650 2450
F 0 "#PWR012" H 2650 2200 50  0001 C CNN
F 1 "GND" H 2572 2413 50  0000 R CNN
F 2 "" H 2650 2450 50  0001 C CNN
F 3 "" H 2650 2450 50  0001 C CNN
	1    2650 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 6035F46D
P 2900 2450
F 0 "#PWR013" H 2900 2200 50  0001 C CNN
F 1 "GND" V 2905 2322 50  0000 R CNN
F 2 "" H 2900 2450 50  0001 C CNN
F 3 "" H 2900 2450 50  0001 C CNN
	1    2900 2450
	0    -1   -1   0   
$EndComp
NoConn ~ 3450 2000
NoConn ~ 3450 1900
NoConn ~ 3450 1600
NoConn ~ 3450 1500
NoConn ~ 3450 2100
Text GLabel 4250 5100 0    50   Output ~ 0
~RESET
Wire Notes Line
	3900 5800 3900 4850
Wire Notes Line
	3900 4850 5250 4850
Wire Notes Line
	5250 4850 5250 5800
Wire Notes Line
	3900 5800 5250 5800
Text Notes 4900 5750 0    50   ~ 10
Reset
Text GLabel 7750 4650 2    50   Input ~ 0
~RESET
Wire Wire Line
	7750 4650 7600 4650
Text GLabel 1750 1800 0    50   Input ~ 0
~RESET
Wire Wire Line
	2000 1500 2050 1500
$Comp
L power:GND #PWR02
U 1 1 602DA4BA
P 700 1300
F 0 "#PWR02" H 700 1050 50  0001 C CNN
F 1 "GND" H 705 1127 50  0000 C CNN
F 2 "" H 700 1300 50  0001 C CNN
F 3 "" H 700 1300 50  0001 C CNN
	1    700  1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  1300 1150 1300
Wire Wire Line
	1150 1300 1150 1250
$Comp
L Device:CP1 C1
U 1 1 602B416A
P 700 1100
F 0 "C1" H 815 1146 50  0000 L CNN
F 1 "10uF" H 815 1055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 700 1100 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/leadmlcc_halogenfree_fg_en.pdf" H 700 1100 50  0001 C CNN
F 4 "445-173370-1-ND" H 700 1100 50  0001 C CNN "Digi-Key Part Number"
F 5 "TDK Corporation" H 700 1100 50  0001 C CNN "Manufacturer"
F 6 "FG24X7R1A106KRT06" H 700 1100 50  0001 C CNN "Manufacturer Part Number"
	1    700  1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 602B4163
P 1150 1100
F 0 "C4" H 1265 1146 50  0000 L CNN
F 1 "0.1uF" H 1265 1055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 1188 950 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1050_GOLDMAX_X7R.pdf" H 1150 1100 50  0001 C CNN
F 4 "399-13932-ND" H 1150 1100 50  0001 C CNN "Digi-Key Part Number"
F 5 "KEMET" H 1150 1100 50  0001 C CNN "Manufacturer"
F 6 "C322C104J5R5TA" H 1150 1100 50  0001 C CNN "Manufacturer Part Number"
	1    1150 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  900  700  950 
Wire Wire Line
	1150 900  1150 950 
Connection ~ 1150 900 
Wire Wire Line
	1150 900  700  900 
$Comp
L power:GND #PWR011
U 1 1 603368AF
P 1750 1300
F 0 "#PWR011" H 1750 1050 50  0001 C CNN
F 1 "GND" H 1672 1263 50  0000 R CNN
F 2 "" H 1750 1300 50  0001 C CNN
F 3 "" H 1750 1300 50  0001 C CNN
	1    1750 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 900  2200 900 
Wire Wire Line
	1750 1200 1750 1250
Wire Wire Line
	1350 900  1150 900 
$Comp
L Regulator_Switching:TSR_1-2433 U2
U 1 1 602B015E
P 1750 1000
F 0 "U2" H 1750 1367 50  0000 C CNN
F 1 "TSR_1-2433" H 1750 1276 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_TRACO_TSR-1_THT" H 1750 850 50  0001 L CIN
F 3 "https://www.tracopower.com/sites/default/files/products/datasheets/tsr1_datasheet.pdf" H 1750 1000 50  0001 C CNN
F 4 "1951-2742-ND" H 1750 1000 50  0001 C CNN "Digi-Key Part Number"
F 5 "Traco Power" H 1750 1000 50  0001 C CNN "Manufacturer"
F 6 "TSR 1-2433" H 1750 1000 50  0001 C CNN "Manufacturer Part Number"
	1    1750 1000
	1    0    0    -1  
$EndComp
Text GLabel 2000 1500 0    50   Input ~ 0
TX
Text GLabel 2000 1600 0    50   Output ~ 0
RX
$Comp
L Device:R_US R1
U 1 1 60A45086
P 1100 2300
F 0 "R1" V 1305 2300 50  0000 C CNN
F 1 "10K" V 1214 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1030 2300 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 1100 2300 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 1100 2300 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 1100 2300 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 1100 2300 50  0001 C CNN "Manufacturer Part Number"
	1    1100 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 60A6FC58
P 900 2300
F 0 "#PWR03" H 900 2050 50  0001 C CNN
F 1 "GND" V 905 2172 50  0000 R CNN
F 2 "" H 900 2300 50  0001 C CNN
F 3 "" H 900 2300 50  0001 C CNN
	1    900  2300
	0    1    1    0   
$EndComp
$Comp
L Jumper:Jumper_2_Open JP1
U 1 1 60A1A33A
P 1500 2300
F 0 "JP1" H 1500 2167 50  0000 C CNN
F 1 "SYS_CFG" H 1500 2076 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1500 2300 50  0001 C CNN
F 3 "~" H 1500 2300 50  0001 C CNN
F 4 "2057-PH1-02-UA-ND" H 1500 2300 50  0001 C CNN "Digi-Key Part Number"
F 5 "Adam Tech" H 1500 2300 50  0001 C CNN "Manufacturer"
F 6 "PH1-02-UA" H 1500 2300 50  0001 C CNN "Manufacturer Part Number"
	1    1500 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 60AA2D6E
P 1850 2000
F 0 "R3" V 1963 2000 50  0000 C CNN
F 1 "10K" V 2054 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1780 2000 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 1850 2000 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 1850 2000 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 1850 2000 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 1850 2000 50  0001 C CNN "Manufacturer Part Number"
	1    1850 2000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 60AA2D74
P 1650 2000
F 0 "#PWR010" H 1650 1750 50  0001 C CNN
F 1 "GND" V 1655 1872 50  0000 R CNN
F 2 "" H 1650 2000 50  0001 C CNN
F 3 "" H 1650 2000 50  0001 C CNN
	1    1650 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 2000 1650 2000
$Comp
L RF_Bluetooth:RN4871 U3
U 1 1 602AF880
P 2750 1800
F 0 "U3" H 2450 2400 50  0000 C CNN
F 1 "RN4871-I/RM140" H 3150 2400 50  0000 C CNN
F 2 "RF_Module:Microchip_RN4871" H 2750 1100 50  0001 C CNN
F 3 "https://ww1.microchip.com/downloads/en/DeviceDoc/RN4870-71-Data-Sheet-DS50002489E.pdf" H 2250 2350 50  0001 C CNN
F 4 "https://ww1.microchip.com/downloads/en/DeviceDoc/RN4870-71-Bluetooth-Low-Energy-Module-User-Guide-DS50002466C.pdf" H 2750 1800 50  0001 C CNN "UserGuide"
F 5 "150-RN4871-I/RM140-ND" H 2750 1800 50  0001 C CNN "Digi-Key Part Number"
F 6 "Microchip Technology" H 2750 1800 50  0001 C CNN "Manufacturer"
F 7 "RN4871-I/RM140" H 2750 1800 50  0001 C CNN "Manufacturer Part Number"
	1    2750 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2000 2050 2000
Wire Wire Line
	1750 1800 1850 1800
Wire Wire Line
	1850 1800 1850 1900
Wire Wire Line
	1850 1900 2050 1900
Wire Wire Line
	2000 2300 1700 2300
NoConn ~ 2050 1700
NoConn ~ 3450 1700
Wire Wire Line
	900  2300 950  2300
Wire Wire Line
	1250 2300 1300 2300
Wire Wire Line
	700  1300 700  1250
Connection ~ 700  1300
NoConn ~ 3450 1800
Wire Notes Line
	550  2750 550  550 
Wire Notes Line
	550  550  3550 550 
Wire Notes Line
	3550 550  3550 2750
Wire Notes Line
	550  2750 3550 2750
Text Notes 2800 2650 0    50   ~ 10
RF - Bluetooth
$Comp
L power:GND #PWR041
U 1 1 6117615F
P 5700 2750
F 0 "#PWR041" H 5700 2500 50  0001 C CNN
F 1 "GND" V 5705 2622 50  0000 R CNN
F 2 "" H 5700 2750 50  0001 C CNN
F 3 "" H 5700 2750 50  0001 C CNN
	1    5700 2750
	0    1    -1   0   
$EndComp
Wire Wire Line
	5700 2750 6150 2750
Wire Wire Line
	6150 2750 6150 2800
$Comp
L Device:CP1 C10
U 1 1 61176167
P 5700 2950
F 0 "C10" H 5586 2904 50  0000 R CNN
F 1 "10uF" H 5586 2995 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 5700 2950 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/leadmlcc_halogenfree_fg_en.pdf" H 5700 2950 50  0001 C CNN
F 4 "445-173370-1-ND" H 5700 2950 50  0001 C CNN "Digi-Key Part Number"
F 5 "TDK Corporation" H 5700 2950 50  0001 C CNN "Manufacturer"
F 6 "FG24X7R1A106KRT06" H 5700 2950 50  0001 C CNN "Manufacturer Part Number"
	1    5700 2950
	1    0    0    1   
$EndComp
$Comp
L Device:C C13
U 1 1 6117616D
P 6150 2950
F 0 "C13" H 6036 2904 50  0000 R CNN
F 1 "0.1uF" H 6036 2995 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 6188 2800 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1050_GOLDMAX_X7R.pdf" H 6150 2950 50  0001 C CNN
F 4 "399-13932-ND" H 6150 2950 50  0001 C CNN "Digi-Key Part Number"
F 5 "KEMET" H 6150 2950 50  0001 C CNN "Manufacturer"
F 6 "C322C104J5R5TA" H 6150 2950 50  0001 C CNN "Manufacturer Part Number"
	1    6150 2950
	1    0    0    1   
$EndComp
Wire Wire Line
	6150 3150 6150 3100
Wire Wire Line
	6150 3150 5700 3150
Wire Wire Line
	5700 2750 5700 2800
Connection ~ 5700 2750
Wire Wire Line
	5700 3100 5700 3150
$Comp
L power:+5V #PWR05
U 1 1 602C471D
P 1150 800
F 0 "#PWR05" H 1150 650 50  0001 C CNN
F 1 "+5V" H 1165 973 50  0000 C CNN
F 2 "" H 1150 800 50  0001 C CNN
F 3 "" H 1150 800 50  0001 C CNN
	1    1150 800 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1150 800  1150 900 
Wire Wire Line
	6250 3400 6400 3400
Wire Wire Line
	6250 3650 6400 3650
Connection ~ 6150 3150
Wire Wire Line
	6150 3250 6150 3150
Wire Wire Line
	6150 3150 6250 3150
Connection ~ 2450 4050
$Comp
L ShotTimerLibs:SW_Push_2-4 SW3
U 1 1 6093DD8A
P 3200 3950
F 0 "SW3" H 3000 4050 50  0000 C CNN
F 1 "BTN" H 3400 4050 50  0000 C CNN
F 2 "ShotTimer:SW_B3F-10xx" H 3200 4150 50  0001 C CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-b3f.pdf" H 3200 4150 50  0001 C CNN
F 4 "SW400-ND" H 3200 3950 50  0001 C CNN "Digi-Key Part Number"
F 5 "Omron Electronics Inc-EMC Div" H 3200 3950 50  0001 C CNN "Manufacturer"
F 6 "B3F-1000" H 3200 3950 50  0001 C CNN "Manufacturer Part Number"
	1    3200 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 6093DD90
P 3450 3950
F 0 "#PWR018" H 3450 3800 50  0001 C CNN
F 1 "+5V" V 3465 4078 50  0000 L CNN
F 2 "" H 3450 3950 50  0001 C CNN
F 3 "" H 3450 3950 50  0001 C CNN
	1    3450 3950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 6093DD96
P 3450 4050
F 0 "#PWR019" H 3450 3800 50  0001 C CNN
F 1 "GND" V 3455 3922 50  0000 R CNN
F 2 "" H 3450 4050 50  0001 C CNN
F 3 "" H 3450 4050 50  0001 C CNN
	1    3450 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 3950 3000 3950
Wire Wire Line
	3400 3950 3450 3950
Wire Wire Line
	3300 4050 3450 4050
Wire Wire Line
	2950 4050 3000 4050
$Comp
L Device:R_US R9
U 1 1 6093DDA3
P 3150 4050
F 0 "R9" V 3100 3750 50  0000 C CNN
F 1 "10K" V 3200 3750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3190 4040 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 3150 4050 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 3150 4050 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 3150 4050 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 3150 4050 50  0001 C CNN "Manufacturer Part Number"
	1    3150 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 3950 2950 4050
Wire Wire Line
	2950 3950 2350 3950
Connection ~ 2950 3950
$Comp
L Diode:1N5817 D3
U 1 1 606A6DC2
P 2600 4050
F 0 "D3" H 2600 3960 50  0000 C CNN
F 1 "1N5817" H 2600 3900 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2600 3875 50  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/26/db/14/60/52/47/47/5b/CD00001625.pdf/files/CD00001625.pdf/jcr:content/translations/en.CD00001625.pdf" H 2600 4050 50  0001 C CNN
F 4 "497-4547-1-ND" H 2600 4050 50  0001 C CNN "Digi-Key Part Number"
F 5 "STMicroelectronics" H 2600 4050 50  0001 C CNN "Manufacturer"
F 6 "1N5817" H 2600 4050 50  0001 C CNN "Manufacturer Part Number"
	1    2600 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4050 2950 4050
Connection ~ 2950 4050
Wire Wire Line
	2450 4050 2450 3750
Connection ~ 2450 3750
$Comp
L ShotTimerLibs:SW_Push_2-4 SW2
U 1 1 6092AAE9
P 3200 3650
F 0 "SW2" H 3000 3750 50  0000 C CNN
F 1 "BTN" H 3400 3750 50  0000 C CNN
F 2 "ShotTimer:SW_B3F-10xx" H 3200 3850 50  0001 C CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-b3f.pdf" H 3200 3850 50  0001 C CNN
F 4 "SW400-ND" H 3200 3650 50  0001 C CNN "Digi-Key Part Number"
F 5 "Omron Electronics Inc-EMC Div" H 3200 3650 50  0001 C CNN "Manufacturer"
F 6 "B3F-1000" H 3200 3650 50  0001 C CNN "Manufacturer Part Number"
	1    3200 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 6092AAEF
P 3450 3650
F 0 "#PWR016" H 3450 3500 50  0001 C CNN
F 1 "+5V" V 3465 3778 50  0000 L CNN
F 2 "" H 3450 3650 50  0001 C CNN
F 3 "" H 3450 3650 50  0001 C CNN
	1    3450 3650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 6092AAF5
P 3450 3750
F 0 "#PWR017" H 3450 3500 50  0001 C CNN
F 1 "GND" V 3455 3622 50  0000 R CNN
F 2 "" H 3450 3750 50  0001 C CNN
F 3 "" H 3450 3750 50  0001 C CNN
	1    3450 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 3650 3450 3650
Wire Wire Line
	3300 3750 3450 3750
$Comp
L Device:R_US R8
U 1 1 6092AB02
P 3150 3750
F 0 "R8" V 3100 3450 50  0000 C CNN
F 1 "10K" V 3200 3450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3190 3740 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 3150 3750 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 3150 3750 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 3150 3750 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 3150 3750 50  0001 C CNN "Manufacturer Part Number"
	1    3150 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 3750 2950 3650
Wire Wire Line
	2950 3650 3000 3650
Wire Wire Line
	3000 3750 2950 3750
Wire Wire Line
	2950 3650 2350 3650
Connection ~ 2950 3650
$Comp
L Diode:1N5817 D2
U 1 1 606AA49C
P 2600 3750
F 0 "D2" H 2600 3660 50  0000 C CNN
F 1 "1N5817" H 2600 3600 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2600 3575 50  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/26/db/14/60/52/47/47/5b/CD00001625.pdf/files/CD00001625.pdf/jcr:content/translations/en.CD00001625.pdf" H 2600 3750 50  0001 C CNN
F 4 "497-4547-1-ND" H 2600 3750 50  0001 C CNN "Digi-Key Part Number"
F 5 "STMicroelectronics" H 2600 3750 50  0001 C CNN "Manufacturer"
F 6 "1N5817" H 2600 3750 50  0001 C CNN "Manufacturer Part Number"
	1    2600 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3750 2950 3750
Connection ~ 2950 3750
Wire Wire Line
	2450 3750 2450 3450
Wire Wire Line
	2450 3450 2450 3000
Connection ~ 2450 3450
$Comp
L power:+5V #PWR014
U 1 1 60657B71
P 3450 3350
F 0 "#PWR014" H 3450 3200 50  0001 C CNN
F 1 "+5V" V 3465 3478 50  0000 L CNN
F 2 "" H 3450 3350 50  0001 C CNN
F 3 "" H 3450 3350 50  0001 C CNN
	1    3450 3350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 6065903F
P 3450 3450
F 0 "#PWR015" H 3450 3200 50  0001 C CNN
F 1 "GND" V 3455 3322 50  0000 R CNN
F 2 "" H 3450 3450 50  0001 C CNN
F 3 "" H 3450 3450 50  0001 C CNN
	1    3450 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 3350 3000 3350
Wire Wire Line
	3400 3350 3450 3350
Wire Wire Line
	3300 3450 3450 3450
Wire Wire Line
	2950 3450 3000 3450
Wire Wire Line
	2950 3350 2950 3450
$Comp
L Device:R_US R7
U 1 1 6065447D
P 3150 3450
F 0 "R7" V 3100 3150 50  0000 C CNN
F 1 "10K" V 3200 3150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3190 3440 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 3150 3450 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 3150 3450 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 3150 3450 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 3150 3450 50  0001 C CNN "Manufacturer Part Number"
	1    3150 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 3350 2350 3350
Connection ~ 2950 3350
$Comp
L Diode:1N5817 D1
U 1 1 606AAB74
P 2600 3450
F 0 "D1" H 2600 3360 50  0000 C CNN
F 1 "1N5817" H 2600 3300 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2600 3275 50  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/26/db/14/60/52/47/47/5b/CD00001625.pdf/files/CD00001625.pdf/jcr:content/translations/en.CD00001625.pdf" H 2600 3450 50  0001 C CNN
F 4 "497-4547-1-ND" H 2600 3450 50  0001 C CNN "Digi-Key Part Number"
F 5 "STMicroelectronics" H 2600 3450 50  0001 C CNN "Manufacturer"
F 6 "1N5817" H 2600 3450 50  0001 C CNN "Manufacturer Part Number"
	1    2600 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3450 2950 3450
Connection ~ 2950 3450
Wire Wire Line
	2450 4350 2450 4050
Connection ~ 2450 4350
$Comp
L ShotTimerLibs:SW_Push_2-4 SW4
U 1 1 6095121F
P 3200 4250
F 0 "SW4" H 3000 4350 50  0000 C CNN
F 1 "BTN" H 3400 4350 50  0000 C CNN
F 2 "ShotTimer:SW_B3F-10xx" H 3200 4450 50  0001 C CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-b3f.pdf" H 3200 4450 50  0001 C CNN
F 4 "SW400-ND" H 3200 4250 50  0001 C CNN "Digi-Key Part Number"
F 5 "Omron Electronics Inc-EMC Div" H 3200 4250 50  0001 C CNN "Manufacturer"
F 6 "B3F-1000" H 3200 4250 50  0001 C CNN "Manufacturer Part Number"
	1    3200 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 60951225
P 3450 4250
F 0 "#PWR020" H 3450 4100 50  0001 C CNN
F 1 "+5V" V 3465 4378 50  0000 L CNN
F 2 "" H 3450 4250 50  0001 C CNN
F 3 "" H 3450 4250 50  0001 C CNN
	1    3450 4250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 6095122B
P 3450 4350
F 0 "#PWR021" H 3450 4100 50  0001 C CNN
F 1 "GND" V 3455 4222 50  0000 R CNN
F 2 "" H 3450 4350 50  0001 C CNN
F 3 "" H 3450 4350 50  0001 C CNN
	1    3450 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 4250 3000 4250
Wire Wire Line
	3400 4250 3450 4250
Wire Wire Line
	3300 4350 3450 4350
Wire Wire Line
	2950 4350 3000 4350
$Comp
L Device:R_US R10
U 1 1 60951238
P 3150 4350
F 0 "R10" V 3100 4050 50  0000 C CNN
F 1 "10K" V 3200 4050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3190 4340 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 3150 4350 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 3150 4350 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 3150 4350 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 3150 4350 50  0001 C CNN "Manufacturer Part Number"
	1    3150 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 4250 2950 4350
Wire Wire Line
	2950 4250 2350 4250
Connection ~ 2950 4250
$Comp
L Diode:1N5817 D4
U 1 1 606A6637
P 2600 4350
F 0 "D4" H 2600 4260 50  0000 C CNN
F 1 "1N5817" H 2600 4200 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2600 4175 50  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/26/db/14/60/52/47/47/5b/CD00001625.pdf/files/CD00001625.pdf/jcr:content/translations/en.CD00001625.pdf" H 2600 4350 50  0001 C CNN
F 4 "497-4547-1-ND" H 2600 4350 50  0001 C CNN "Digi-Key Part Number"
F 5 "STMicroelectronics" H 2600 4350 50  0001 C CNN "Manufacturer"
F 6 "1N5817" H 2600 4350 50  0001 C CNN "Manufacturer Part Number"
	1    2600 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4350 2950 4350
Connection ~ 2950 4350
Wire Wire Line
	2450 4650 2450 4350
Connection ~ 2450 4650
$Comp
L ShotTimerLibs:SW_Push_2-4 SW5
U 1 1 60965375
P 3200 4550
F 0 "SW5" H 3000 4650 50  0000 C CNN
F 1 "BTN" H 3400 4650 50  0000 C CNN
F 2 "ShotTimer:SW_B3F-10xx" H 3200 4750 50  0001 C CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-b3f.pdf" H 3200 4750 50  0001 C CNN
F 4 "SW400-ND" H 3200 4550 50  0001 C CNN "Digi-Key Part Number"
F 5 "Omron Electronics Inc-EMC Div" H 3200 4550 50  0001 C CNN "Manufacturer"
F 6 "B3F-1000" H 3200 4550 50  0001 C CNN "Manufacturer Part Number"
	1    3200 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 6096537B
P 3450 4550
F 0 "#PWR022" H 3450 4400 50  0001 C CNN
F 1 "+5V" V 3465 4678 50  0000 L CNN
F 2 "" H 3450 4550 50  0001 C CNN
F 3 "" H 3450 4550 50  0001 C CNN
	1    3450 4550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 60965381
P 3450 4650
F 0 "#PWR023" H 3450 4400 50  0001 C CNN
F 1 "GND" V 3455 4522 50  0000 R CNN
F 2 "" H 3450 4650 50  0001 C CNN
F 3 "" H 3450 4650 50  0001 C CNN
	1    3450 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 4550 3000 4550
Wire Wire Line
	3400 4550 3450 4550
Wire Wire Line
	3300 4650 3450 4650
Wire Wire Line
	2950 4650 3000 4650
$Comp
L Device:R_US R11
U 1 1 6096538E
P 3150 4650
F 0 "R11" V 3100 4350 50  0000 C CNN
F 1 "10K" V 3200 4350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3190 4640 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 3150 4650 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 3150 4650 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 3150 4650 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 3150 4650 50  0001 C CNN "Manufacturer Part Number"
	1    3150 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 4550 2950 4650
Wire Wire Line
	2950 4550 2350 4550
Connection ~ 2950 4550
$Comp
L Diode:1N5817 D5
U 1 1 606A5ED5
P 2600 4650
F 0 "D5" H 2600 4560 50  0000 C CNN
F 1 "1N5817" H 2600 4500 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2600 4475 50  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/26/db/14/60/52/47/47/5b/CD00001625.pdf/files/CD00001625.pdf/jcr:content/translations/en.CD00001625.pdf" H 2600 4650 50  0001 C CNN
F 4 "497-4547-1-ND" H 2600 4650 50  0001 C CNN "Digi-Key Part Number"
F 5 "STMicroelectronics" H 2600 4650 50  0001 C CNN "Manufacturer"
F 6 "1N5817" H 2600 4650 50  0001 C CNN "Manufacturer Part Number"
	1    2600 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4650 2950 4650
Connection ~ 2950 4650
Wire Wire Line
	2450 4950 2450 4650
Connection ~ 2450 4950
$Comp
L ShotTimerLibs:SW_Push_2-4 SW6
U 1 1 6097A35F
P 3200 4850
F 0 "SW6" H 3000 4950 50  0000 C CNN
F 1 "BTN" H 3400 4950 50  0000 C CNN
F 2 "ShotTimer:SW_B3F-10xx" H 3200 5050 50  0001 C CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-b3f.pdf" H 3200 5050 50  0001 C CNN
F 4 "SW400-ND" H 3200 4850 50  0001 C CNN "Digi-Key Part Number"
F 5 "Omron Electronics Inc-EMC Div" H 3200 4850 50  0001 C CNN "Manufacturer"
F 6 "B3F-1000" H 3200 4850 50  0001 C CNN "Manufacturer Part Number"
	1    3200 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR024
U 1 1 6097A365
P 3450 4850
F 0 "#PWR024" H 3450 4700 50  0001 C CNN
F 1 "+5V" V 3465 4978 50  0000 L CNN
F 2 "" H 3450 4850 50  0001 C CNN
F 3 "" H 3450 4850 50  0001 C CNN
	1    3450 4850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 6097A36B
P 3450 4950
F 0 "#PWR025" H 3450 4700 50  0001 C CNN
F 1 "GND" V 3455 4822 50  0000 R CNN
F 2 "" H 3450 4950 50  0001 C CNN
F 3 "" H 3450 4950 50  0001 C CNN
	1    3450 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 4850 3000 4850
Wire Wire Line
	3400 4850 3450 4850
Wire Wire Line
	3300 4950 3450 4950
Wire Wire Line
	2950 4950 3000 4950
$Comp
L Device:R_US R12
U 1 1 6097A378
P 3150 4950
F 0 "R12" V 3100 4650 50  0000 C CNN
F 1 "10K" V 3200 4650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3190 4940 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 3150 4950 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 3150 4950 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 3150 4950 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 3150 4950 50  0001 C CNN "Manufacturer Part Number"
	1    3150 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 4850 2950 4950
Wire Wire Line
	2950 4850 2350 4850
Connection ~ 2950 4850
$Comp
L Diode:1N5817 D6
U 1 1 606578D1
P 2600 4950
F 0 "D6" H 2600 4860 50  0000 C CNN
F 1 "1N5817" H 2600 4800 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2600 4775 50  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/26/db/14/60/52/47/47/5b/CD00001625.pdf/files/CD00001625.pdf/jcr:content/translations/en.CD00001625.pdf" H 2600 4950 50  0001 C CNN
F 4 "497-4547-1-ND" H 2600 4950 50  0001 C CNN "Digi-Key Part Number"
F 5 "STMicroelectronics" H 2600 4950 50  0001 C CNN "Manufacturer"
F 6 "1N5817" H 2600 4950 50  0001 C CNN "Manufacturer Part Number"
	1    2600 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4950 2950 4950
Connection ~ 2950 4950
Wire Wire Line
	2450 5250 2450 4950
Connection ~ 2450 5250
$Comp
L Device:R_US R13
U 1 1 60990E13
P 3150 5250
F 0 "R13" V 3100 4950 50  0000 C CNN
F 1 "10K" V 3200 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3190 5240 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 3150 5250 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 3150 5250 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 3150 5250 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 3150 5250 50  0001 C CNN "Manufacturer Part Number"
	1    3150 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 5250 3450 5250
Wire Wire Line
	2950 5250 3000 5250
$Comp
L power:GND #PWR027
U 1 1 60990E06
P 3450 5250
F 0 "#PWR027" H 3450 5000 50  0001 C CNN
F 1 "GND" V 3455 5122 50  0000 R CNN
F 2 "" H 3450 5250 50  0001 C CNN
F 3 "" H 3450 5250 50  0001 C CNN
	1    3450 5250
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR026
U 1 1 60990E00
P 3450 5150
F 0 "#PWR026" H 3450 5000 50  0001 C CNN
F 1 "+5V" V 3465 5278 50  0000 L CNN
F 2 "" H 3450 5150 50  0001 C CNN
F 3 "" H 3450 5150 50  0001 C CNN
	1    3450 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 5150 3450 5150
$Comp
L ShotTimerLibs:SW_Push_2-4 SW7
U 1 1 60990DFA
P 3200 5150
F 0 "SW7" H 3000 5250 50  0000 C CNN
F 1 "BTN" H 3400 5250 50  0000 C CNN
F 2 "ShotTimer:SW_B3F-10xx" H 3200 5350 50  0001 C CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-b3f.pdf" H 3200 5350 50  0001 C CNN
F 4 "SW400-ND" H 3200 5150 50  0001 C CNN "Digi-Key Part Number"
F 5 "Omron Electronics Inc-EMC Div" H 3200 5150 50  0001 C CNN "Manufacturer"
F 6 "B3F-1000" H 3200 5150 50  0001 C CNN "Manufacturer Part Number"
	1    3200 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5150 3000 5150
Wire Wire Line
	2950 5150 2950 5250
$Comp
L Diode:1N5817 D7
U 1 1 6027B5E2
P 2600 5250
F 0 "D7" H 2600 5160 50  0000 C CNN
F 1 "1N5817" H 2600 5100 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2600 5075 50  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/26/db/14/60/52/47/47/5b/CD00001625.pdf/files/CD00001625.pdf/jcr:content/translations/en.CD00001625.pdf" H 2600 5250 50  0001 C CNN
F 4 "497-4547-1-ND" H 2600 5250 50  0001 C CNN "Digi-Key Part Number"
F 5 "STMicroelectronics" H 2600 5250 50  0001 C CNN "Manufacturer"
F 6 "1N5817" H 2600 5250 50  0001 C CNN "Manufacturer Part Number"
	1    2600 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5150 2350 5150
Connection ~ 2950 5150
Wire Wire Line
	2950 5250 2750 5250
Connection ~ 2950 5250
$Comp
L power:+5V #PWR028
U 1 1 609AE7DF
P 3450 5450
F 0 "#PWR028" H 3450 5300 50  0001 C CNN
F 1 "+5V" V 3465 5578 50  0000 L CNN
F 2 "" H 3450 5450 50  0001 C CNN
F 3 "" H 3450 5450 50  0001 C CNN
	1    3450 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 5450 2950 5450
Connection ~ 2950 5450
Wire Wire Line
	3400 5450 3450 5450
Wire Wire Line
	2950 5450 3000 5450
$Comp
L ShotTimerLibs:SW_Push_2-4 SW8
U 1 1 609AE7D9
P 3200 5450
F 0 "SW8" H 3000 5550 50  0000 C CNN
F 1 "BTN" H 3400 5550 50  0000 C CNN
F 2 "ShotTimer:SW_B3F-10xx" H 3200 5650 50  0001 C CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-b3f.pdf" H 3200 5650 50  0001 C CNN
F 4 "SW400-ND" H 3200 5450 50  0001 C CNN "Digi-Key Part Number"
F 5 "Omron Electronics Inc-EMC Div" H 3200 5450 50  0001 C CNN "Manufacturer"
F 6 "B3F-1000" H 3200 5450 50  0001 C CNN "Manufacturer Part Number"
	1    3200 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 609AE7E5
P 3450 5550
F 0 "#PWR029" H 3450 5300 50  0001 C CNN
F 1 "GND" V 3455 5422 50  0000 R CNN
F 2 "" H 3450 5550 50  0001 C CNN
F 3 "" H 3450 5550 50  0001 C CNN
	1    3450 5550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 5450 2950 5550
Connection ~ 2950 5550
Wire Wire Line
	2950 5550 3000 5550
Wire Wire Line
	3300 5550 3450 5550
$Comp
L Device:R_US R14
U 1 1 609AE7F2
P 3150 5550
F 0 "R14" V 3100 5250 50  0000 C CNN
F 1 "10K" V 3200 5250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3190 5540 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 3150 5550 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 3150 5550 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 3150 5550 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 3150 5550 50  0001 C CNN "Manufacturer Part Number"
	1    3150 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 5550 2750 5550
Wire Wire Line
	2450 5550 2450 5250
$Comp
L Diode:1N5817 D8
U 1 1 60671DC0
P 2600 5550
F 0 "D8" H 2600 5460 50  0000 C CNN
F 1 "1N5817" H 2600 5400 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2600 5375 50  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/26/db/14/60/52/47/47/5b/CD00001625.pdf/files/CD00001625.pdf/jcr:content/translations/en.CD00001625.pdf" H 2600 5550 50  0001 C CNN
F 4 "497-4547-1-ND" H 2600 5550 50  0001 C CNN "Digi-Key Part Number"
F 5 "STMicroelectronics" H 2600 5550 50  0001 C CNN "Manufacturer"
F 6 "1N5817" H 2600 5550 50  0001 C CNN "Manufacturer Part Number"
	1    2600 5550
	1    0    0    -1  
$EndComp
Wire Notes Line
	3800 2850 3800 5800
Wire Notes Line
	550  5800 550  2850
Wire Notes Line
	550  5800 3800 5800
Wire Wire Line
	7700 7850 7750 7850
Wire Wire Line
	6350 3900 6400 3900
$Comp
L power:GND #PWR047
U 1 1 63E0FC58
P 6350 4150
F 0 "#PWR047" H 6350 3900 50  0001 C CNN
F 1 "GND" V 6355 4022 50  0000 R CNN
F 2 "" H 6350 4150 50  0001 C CNN
F 3 "" H 6350 4150 50  0001 C CNN
	1    6350 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 4150 6400 4150
$Comp
L power:+5V #PWR09
U 1 1 63E48DEA
P 1600 2650
F 0 "#PWR09" H 1600 2500 50  0001 C CNN
F 1 "+5V" V 1615 2778 50  0000 L CNN
F 2 "" H 1600 2650 50  0001 C CNN
F 3 "" H 1600 2650 50  0001 C CNN
	1    1600 2650
	0    -1   1    0   
$EndComp
Connection ~ 2000 2300
Text GLabel 2150 2650 2    50   Output ~ 0
PGM_RF
Text GLabel 7750 4450 2    50   Input ~ 0
PGM_RF
Wire Wire Line
	7750 4450 7600 4450
$Comp
L Device:R_US R38
U 1 1 6423749B
P 11750 2350
F 0 "R38" V 11863 2350 50  0000 C CNN
F 1 "100K" V 11954 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 11790 2340 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 11750 2350 50  0001 C CNN
F 4 "RNF14FTD100KCT-ND" H 11750 2350 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 11750 2350 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD100K" H 11750 2350 50  0001 C CNN "Manufacturer Part Number"
	1    11750 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	12800 2350 12800 2800
Wire Wire Line
	11900 2350 12800 2350
Wire Wire Line
	11050 2350 11600 2350
$Comp
L Device:R_US R37
U 1 1 642E49DD
P 10850 2350
F 0 "R37" V 10737 2350 50  0000 C CNN
F 1 "10K" V 10646 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10780 2350 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 10850 2350 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 10850 2350 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 10850 2350 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 10850 2350 50  0001 C CNN "Manufacturer Part Number"
	1    10850 2350
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDA #PWR085
U 1 1 643293FE
P 12650 1300
F 0 "#PWR085" H 12650 1050 50  0001 C CNN
F 1 "GNDA" H 12738 1263 50  0000 L CNN
F 2 "" H 12650 1300 50  0001 C CNN
F 3 "" H 12650 1300 50  0001 C CNN
	1    12650 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	13300 1250 12650 1250
Wire Wire Line
	12650 1250 12650 1300
Connection ~ 12650 1250
Connection ~ 12500 950 
Wire Wire Line
	12500 950  12500 1350
Connection ~ 12650 950 
Wire Wire Line
	12500 950  12500 850 
Wire Wire Line
	12650 950  12500 950 
Wire Wire Line
	12650 950  13300 950 
$Comp
L power:+5VA #PWR083
U 1 1 6432940D
P 12500 850
F 0 "#PWR083" H 12500 700 50  0001 C CNN
F 1 "+5VA" H 12515 1023 50  0000 C CNN
F 2 "" H 12500 850 50  0001 C CNN
F 3 "" H 12500 850 50  0001 C CNN
	1    12500 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C26
U 1 1 64329416
P 12650 1100
F 0 "C26" H 12765 1146 50  0000 L CNN
F 1 "0.1uF" H 12765 1055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 12688 950 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1050_GOLDMAX_X7R.pdf" H 12650 1100 50  0001 C CNN
F 4 "399-13932-ND" H 12650 1100 50  0001 C CNN "Digi-Key Part Number"
F 5 "KEMET" H 12650 1100 50  0001 C CNN "Manufacturer"
F 6 "C322C104J5R5TA" H 12650 1100 50  0001 C CNN "Manufacturer Part Number"
	1    12650 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C27
U 1 1 6432941F
P 13300 1100
F 0 "C27" H 13186 1146 50  0000 R CNN
F 1 "10uF" H 13186 1055 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 13300 1100 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/leadmlcc_halogenfree_fg_en.pdf" H 13300 1100 50  0001 C CNN
F 4 "445-173370-1-ND" H 13300 1100 50  0001 C CNN "Digi-Key Part Number"
F 5 "TDK Corporation" H 13300 1100 50  0001 C CNN "Manufacturer"
F 6 "FG24X7R1A106KRT06" H 13300 1100 50  0001 C CNN "Manufacturer Part Number"
	1    13300 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	12500 1350 12450 1350
$Comp
L ShotTimerLibs:BOM_ITEM-UserLibrary #BOM1
U 1 1 645262F4
P 800 1750
F 0 "#BOM1" H 878 1821 50  0000 L CNN
F 1 "Jumper" H 878 1730 50  0000 L CNN
F 2 "" H 800 1750 50  0001 C CNN
F 3 "https://s3.amazonaws.com/catalogspreads-pdf/PAGE128-129%20.100%20JUMPER.pdf" H 800 1750 50  0001 C CNN
F 4 "S9337-ND" H 800 1750 50  0001 C CNN "Digi-Key Part Number"
F 5 "Sullins Connector Solutions" H 878 1730 50  0001 L CNN "Manufacturer"
F 6 "QPC02SXGN-RC" H 878 1639 50  0001 L CNN "Manufacturer Part Number"
	1    800  1750
	1    0    0    -1  
$EndComp
$Comp
L ShotTimerLibs:BOM_ITEM-UserLibrary #BOM2
U 1 1 6452A267
P 5750 750
F 0 "#BOM2" H 5828 821 50  0000 L CNN
F 1 "Jumper" H 5828 730 50  0000 L CNN
F 2 "" H 5750 750 50  0001 C CNN
F 3 "https://s3.amazonaws.com/catalogspreads-pdf/PAGE128-129%20.100%20JUMPER.pdf" H 5750 750 50  0001 C CNN
F 4 "S9337-ND" H 5750 750 50  0001 C CNN "Digi-Key Part Number"
F 5 "Sullins Connector Solutions" H 5828 730 50  0001 L CNN "Manufacturer"
F 6 "QPC02SXGN-RC" H 5828 639 50  0001 L CNN "Manufacturer Part Number"
	1    5750 750 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR081
U 1 1 60351082
P 11500 6350
F 0 "#PWR081" H 11500 6200 50  0001 C CNN
F 1 "+5V" H 11515 6523 50  0000 C CNN
F 2 "" H 11500 6350 50  0001 C CNN
F 3 "" H 11500 6350 50  0001 C CNN
	1    11500 6350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 60352FCC
P 11500 6450
F 0 "#FLG01" H 11500 6525 50  0001 C CNN
F 1 "PWR_FLAG" H 11500 6623 50  0000 C CNN
F 2 "" H 11500 6450 50  0001 C CNN
F 3 "~" H 11500 6450 50  0001 C CNN
	1    11500 6450
	-1   0    0    1   
$EndComp
Wire Wire Line
	11500 6350 11500 6450
$Comp
L power:GND #PWR082
U 1 1 6038D554
P 11950 6350
F 0 "#PWR082" H 11950 6100 50  0001 C CNN
F 1 "GND" H 11955 6177 50  0000 C CNN
F 2 "" H 11950 6350 50  0001 C CNN
F 3 "" H 11950 6350 50  0001 C CNN
	1    11950 6350
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 6038E09A
P 11950 6450
F 0 "#FLG02" H 11950 6525 50  0001 C CNN
F 1 "PWR_FLAG" H 11950 6623 50  0000 C CNN
F 2 "" H 11950 6450 50  0001 C CNN
F 3 "~" H 11950 6450 50  0001 C CNN
	1    11950 6450
	-1   0    0    1   
$EndComp
Wire Wire Line
	11950 6350 11950 6450
Wire Notes Line
	11250 6100 11250 6700
Wire Notes Line
	11250 6700 13450 6700
Wire Notes Line
	13450 6700 13450 6100
Wire Notes Line
	11250 6100 13450 6100
Text Notes 12050 6450 0    50   ~ 10
ERC Net Power
$Comp
L power:PWR_FLAG #FLG03
U 1 1 6062FFBF
P 12750 6450
F 0 "#FLG03" H 12750 6525 50  0001 C CNN
F 1 "PWR_FLAG" H 12750 6623 50  0000 C CNN
F 2 "" H 12750 6450 50  0001 C CNN
F 3 "~" H 12750 6450 50  0001 C CNN
	1    12750 6450
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 6062FFC5
P 13200 6450
F 0 "#FLG04" H 13200 6525 50  0001 C CNN
F 1 "PWR_FLAG" H 13200 6623 50  0000 C CNN
F 2 "" H 13200 6450 50  0001 C CNN
F 3 "~" H 13200 6450 50  0001 C CNN
	1    13200 6450
	-1   0    0    1   
$EndComp
$Comp
L power:+5VA #PWR086
U 1 1 60668714
P 12750 6350
F 0 "#PWR086" H 12750 6200 50  0001 C CNN
F 1 "+5VA" H 12765 6523 50  0000 C CNN
F 2 "" H 12750 6350 50  0001 C CNN
F 3 "" H 12750 6350 50  0001 C CNN
	1    12750 6350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR087
U 1 1 6066A231
P 13200 6350
F 0 "#PWR087" H 13200 6100 50  0001 C CNN
F 1 "GNDA" H 13205 6177 50  0000 C CNN
F 2 "" H 13200 6350 50  0001 C CNN
F 3 "" H 13200 6350 50  0001 C CNN
	1    13200 6350
	-1   0    0    1   
$EndComp
Wire Wire Line
	13200 6350 13200 6450
Wire Wire Line
	12750 6350 12750 6450
$Comp
L power:+5V #PWR039
U 1 1 60A198B8
P 5050 3000
F 0 "#PWR039" H 5050 2850 50  0001 C CNN
F 1 "+5V" H 5065 3173 50  0000 C CNN
F 2 "" H 5050 3000 50  0001 C CNN
F 3 "" H 5050 3000 50  0001 C CNN
	1    5050 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 60A198BE
P 4250 2850
F 0 "#PWR031" H 4250 2600 50  0001 C CNN
F 1 "GND" V 4255 2722 50  0000 R CNN
F 2 "" H 4250 2850 50  0001 C CNN
F 3 "" H 4250 2850 50  0001 C CNN
	1    4250 2850
	0    1    -1   0   
$EndComp
Wire Wire Line
	4700 2850 4700 2900
$Comp
L Device:CP1 C8
U 1 1 60A198C9
P 4250 3050
F 0 "C8" H 4136 3004 50  0000 R CNN
F 1 "10uF" H 4136 3095 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4250 3050 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/leadmlcc_halogenfree_fg_en.pdf" H 4250 3050 50  0001 C CNN
F 4 "445-173370-1-ND" H 4250 3050 50  0001 C CNN "Digi-Key Part Number"
F 5 "TDK Corporation" H 4250 3050 50  0001 C CNN "Manufacturer"
F 6 "FG24X7R1A106KRT06" H 4250 3050 50  0001 C CNN "Manufacturer Part Number"
	1    4250 3050
	1    0    0    1   
$EndComp
$Comp
L Device:C C9
U 1 1 60A198D2
P 4700 3050
F 0 "C9" H 4586 3004 50  0000 R CNN
F 1 "0.1uF" H 4586 3095 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 4738 2900 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1050_GOLDMAX_X7R.pdf" H 4700 3050 50  0001 C CNN
F 4 "399-13932-ND" H 4700 3050 50  0001 C CNN "Digi-Key Part Number"
F 5 "KEMET" H 4700 3050 50  0001 C CNN "Manufacturer"
F 6 "C322C104J5R5TA" H 4700 3050 50  0001 C CNN "Manufacturer Part Number"
	1    4700 3050
	1    0    0    1   
$EndComp
Wire Wire Line
	4700 3250 4700 3200
Connection ~ 4700 3250
Wire Wire Line
	4700 3250 4250 3250
Wire Wire Line
	4250 2850 4250 2900
Wire Wire Line
	4250 3200 4250 3250
Wire Wire Line
	5050 3000 5050 3250
Wire Wire Line
	5050 3250 4700 3250
Wire Wire Line
	5050 3250 5050 3350
Connection ~ 5050 3250
Wire Wire Line
	4700 2850 4250 2850
Connection ~ 4250 2850
$Comp
L power:+5V #PWR04
U 1 1 60CE80C3
P 1000 5300
F 0 "#PWR04" H 1000 5150 50  0001 C CNN
F 1 "+5V" V 1015 5428 50  0000 L CNN
F 2 "" H 1000 5300 50  0001 C CNN
F 3 "" H 1000 5300 50  0001 C CNN
	1    1000 5300
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 60CE80C9
P 650 4750
F 0 "#PWR01" H 650 4500 50  0001 C CNN
F 1 "GND" H 655 4577 50  0000 C CNN
F 2 "" H 650 4750 50  0001 C CNN
F 3 "" H 650 4750 50  0001 C CNN
	1    650  4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	650  4750 650  5150
Wire Wire Line
	650  5150 700  5150
$Comp
L Device:CP1 C2
U 1 1 60CE80D4
P 850 4750
F 0 "C2" V 598 4750 50  0000 C CNN
F 1 "10uF" V 689 4750 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 850 4750 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/leadmlcc_halogenfree_fg_en.pdf" H 850 4750 50  0001 C CNN
F 4 "445-173370-1-ND" H 850 4750 50  0001 C CNN "Digi-Key Part Number"
F 5 "TDK Corporation" H 850 4750 50  0001 C CNN "Manufacturer"
F 6 "FG24X7R1A106KRT06" H 850 4750 50  0001 C CNN "Manufacturer Part Number"
	1    850  4750
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 60CE80DD
P 850 5150
F 0 "C3" V 598 5150 50  0000 C CNN
F 1 "0.1uF" V 689 5150 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 888 5000 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1050_GOLDMAX_X7R.pdf" H 850 5150 50  0001 C CNN
F 4 "399-13932-ND" H 850 5150 50  0001 C CNN "Digi-Key Part Number"
F 5 "KEMET" H 850 5150 50  0001 C CNN "Manufacturer"
F 6 "C322C104J5R5TA" H 850 5150 50  0001 C CNN "Manufacturer Part Number"
	1    850  5150
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 5150 1000 5150
Connection ~ 1050 5150
Wire Wire Line
	1050 5150 1050 4750
Wire Wire Line
	650  4750 700  4750
Connection ~ 650  4750
Wire Wire Line
	1000 4750 1050 4750
Wire Wire Line
	1000 5300 1050 5300
Wire Wire Line
	1050 5300 1050 5150
Connection ~ 1050 5300
Wire Wire Line
	1050 5300 1450 5300
Wire Wire Line
	4300 5300 4300 5650
Wire Wire Line
	4300 5650 4350 5650
$Comp
L Device:CP1 C6
U 1 1 61C66514
P 2200 1050
F 0 "C6" H 2315 1096 50  0000 L CNN
F 1 "220uF" H 2315 1005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 2200 1050 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/AAB8000/AAB8000C247.pdf" H 2200 1050 50  0001 C CNN
F 4 "P16296-ND" H 2200 1050 50  0001 C CNN "Digi-Key Part Number"
F 5 "Panasonic Electronic Components" H 2200 1050 50  0001 C CNN "Manufacturer"
F 6 "16SEPC220MD" H 2200 1050 50  0001 C CNN "Manufacturer Part Number"
	1    2200 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2300 2000 2300
$Comp
L Device:R_US R2
U 1 1 60835937
P 1800 2650
F 0 "R2" V 1595 2650 50  0000 C CNN
F 1 "10K" V 1686 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1730 2650 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 1800 2650 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 1800 2650 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 1800 2650 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 1800 2650 50  0001 C CNN "Manufacturer Part Number"
	1    1800 2650
	0    1    1    0   
$EndComp
Connection ~ 2200 900 
Wire Wire Line
	2200 900  2750 900 
Wire Wire Line
	2200 1200 2200 1250
Wire Wire Line
	1750 1250 2200 1250
Connection ~ 1750 1250
Wire Wire Line
	1750 1250 1750 1300
Wire Wire Line
	2900 2450 2850 2450
Wire Wire Line
	2850 2450 2850 2400
Wire Wire Line
	2650 2450 2650 2400
Wire Wire Line
	2000 1600 2050 1600
Wire Wire Line
	2050 2100 2000 2100
Wire Wire Line
	2000 2100 2000 2300
Wire Wire Line
	2750 900  2750 1200
Wire Wire Line
	1600 2650 1650 2650
Wire Wire Line
	1950 2650 2000 2650
Wire Wire Line
	2000 2300 2000 2650
Wire Wire Line
	2100 2650 2150 2650
Wire Wire Line
	2100 2300 2100 2650
$Comp
L Device:Q_PNP_CBE Q2
U 1 1 60277F86
P 5600 1500
F 0 "Q2" H 5790 1546 50  0000 L CNN
F 1 "Q_PNP_CBE" H 5790 1455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 5800 1600 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Fairchild%20PDFs/MMBT2907A_PN2907A_PZT2907A.pdf" H 5600 1500 50  0001 C CNN
F 4 "PN2907-ND" H 5600 1500 50  0001 C CNN "Digi-Key Part Number"
F 5 "ON Semiconductor" H 5600 1500 50  0001 C CNN "Manufacturer"
F 6 "PN2907BU" H 5600 1500 50  0001 C CNN "Manufacturer Part Number"
	1    5600 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R20
U 1 1 60A2E68C
P 5200 1500
F 0 "R20" V 5405 1500 50  0000 C CNN
F 1 "10K" V 5314 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5130 1500 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 5200 1500 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 5200 1500 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 5200 1500 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 5200 1500 50  0001 C CNN "Manufacturer Part Number"
	1    5200 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 850  4850 900 
Wire Wire Line
	5350 1500 5400 1500
Wire Wire Line
	5450 2100 5700 2100
$Comp
L Diode:1N5817 D11
U 1 1 6116121F
P 5700 1900
F 0 "D11" V 5746 1820 50  0000 R CNN
F 1 "1N5817" V 5655 1820 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5700 1725 50  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/26/db/14/60/52/47/47/5b/CD00001625.pdf/files/CD00001625.pdf/jcr:content/translations/en.CD00001625.pdf" H 5700 1900 50  0001 C CNN
F 4 "497-4547-1-ND" H 5700 1900 50  0001 C CNN "Digi-Key Part Number"
F 5 "STMicroelectronics" H 5700 1900 50  0001 C CNN "Manufacturer"
F 6 "1N5817" H 5700 1900 50  0001 C CNN "Manufacturer Part Number"
	1    5700 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5700 1700 5700 1750
Wire Wire Line
	5700 2050 5700 2100
Wire Wire Line
	5700 2100 5800 2100
Connection ~ 5700 2100
Wire Wire Line
	5650 900  5700 900 
Wire Wire Line
	5700 900  5700 1300
Wire Wire Line
	5150 2100 5000 2100
Wire Wire Line
	5000 2100 5000 1500
Wire Wire Line
	5000 1500 5050 1500
Wire Wire Line
	4850 1200 4850 1250
Wire Wire Line
	4200 900  4200 1100
Wire Wire Line
	4400 1100 4400 1050
Wire Wire Line
	4150 900  4200 900 
Wire Wire Line
	4300 850  4350 850 
Wire Wire Line
	4300 850  4300 1100
Wire Wire Line
	4200 1700 4150 1700
Wire Wire Line
	4300 1850 4250 1850
Wire Wire Line
	4300 1600 4300 1850
Wire Wire Line
	4950 1500 5000 1500
Connection ~ 5000 1500
Wire Wire Line
	4850 1750 4850 1800
Wire Wire Line
	4850 1800 4400 1800
Wire Wire Line
	4400 1600 4400 1800
$Comp
L ShotTimerLibs:NHD-0420CW-SPI DS1
U 1 1 6054DBDC
P 12750 4600
F 0 "DS1" H 12580 4496 50  0000 L CNN
F 1 "NHD-0420CW-SPI" H 12580 4405 50  0000 L CNN
F 2 "NHD_NHD-0420CW-AG3" H 11950 3300 50  0001 L BNN
F 3 "https://www.newhavendisplay.com/specs/NHD-0420CW-AB3.pdf" H 12750 4600 50  0001 L BNN
F 4 "NHD-0420CW-AB3-ND" H 12750 4600 50  0001 C CNN "Digi-Key Part Number"
F 5 "Newhaven Display Intl" H 12750 4600 50  0001 C CNN "Manufacturer"
F 6 "NHD-0420CW-AB3" H 12750 4600 50  0001 C CNN "Manufacturer Part Number"
F 7 "https://www.newhavendisplay.com/app_notes/US2066.pdf" H 12750 4600 50  0001 C CNN "UserGuide"
	1    12750 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR072
U 1 1 6054FC22
P 10400 5500
F 0 "#PWR072" H 10400 5250 50  0001 C CNN
F 1 "GND" V 10405 5372 50  0000 R CNN
F 2 "" H 10400 5500 50  0001 C CNN
F 3 "" H 10400 5500 50  0001 C CNN
	1    10400 5500
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R32
U 1 1 605505C9
P 10600 5500
F 0 "R32" V 10713 5500 50  0000 C CNN
F 1 "10K" V 10804 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10530 5500 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 10600 5500 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 10600 5500 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 10600 5500 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 10600 5500 50  0001 C CNN "Manufacturer Part Number"
	1    10600 5500
	0    -1   1    0   
$EndComp
Wire Wire Line
	10400 5500 10450 5500
$Comp
L Connector_Generic:Conn_01x20 J5
U 1 1 6062161A
P 11750 4700
F 0 "J5" H 11668 5817 50  0000 C CNN
F 1 "Conn_01x20" H 11668 5726 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x20_P2.54mm_Vertical" H 11750 4700 50  0001 C CNN
F 3 "~" H 11750 4700 50  0001 C CNN
F 4 "S1211E-20-ND" H 11750 4700 50  0001 C CNN "Digi-Key Part Number"
F 5 "Sullins Connector Solutions" H 11750 4700 50  0001 C CNN "Manufacturer"
F 6 "PBC20SFAN" H 11750 4700 50  0001 C CNN "Manufacturer Part Number"
	1    11750 4700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11950 3800 12050 3800
Wire Wire Line
	11950 3900 12050 3900
Wire Wire Line
	11950 4000 12050 4000
Wire Wire Line
	12050 4100 11950 4100
Wire Wire Line
	11950 4200 12050 4200
Wire Wire Line
	11950 4300 12050 4300
Wire Wire Line
	11950 4400 12050 4400
Wire Wire Line
	11950 4500 12050 4500
Wire Wire Line
	11950 4600 12050 4600
Wire Wire Line
	11950 4700 12050 4700
Wire Wire Line
	11950 4800 12050 4800
Wire Wire Line
	11950 4900 12050 4900
Wire Wire Line
	11950 5000 12050 5000
Wire Wire Line
	11950 5100 12050 5100
Wire Wire Line
	11950 5200 12050 5200
Wire Wire Line
	11950 5300 12050 5300
Wire Wire Line
	11950 5400 12050 5400
Wire Wire Line
	11950 5500 12050 5500
Wire Wire Line
	11950 5600 12050 5600
Wire Wire Line
	11950 5700 12050 5700
$Comp
L Connector_Generic:Conn_01x20 J4
U 1 1 60BC4491
P 11300 4700
F 0 "J4" H 11218 5817 50  0000 C CNN
F 1 "Conn_01x20" H 11218 5726 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 11300 4700 50  0001 C CNN
F 3 "~" H 11300 4700 50  0001 C CNN
F 4 "S7053-ND" H 11300 4700 50  0001 C CNN "Digi-Key Part Number"
F 5 "Sullins Connector Solutions" H 11300 4700 50  0001 C CNN "Manufacturer"
F 6 "PPPC201LFBN-RC" H 11300 4700 50  0001 C CNN "Manufacturer Part Number"
	1    11300 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR079
U 1 1 60BC5FC8
P 11050 3800
F 0 "#PWR079" H 11050 3550 50  0001 C CNN
F 1 "GND" V 11055 3672 50  0000 R CNN
F 2 "" H 11050 3800 50  0001 C CNN
F 3 "" H 11050 3800 50  0001 C CNN
	1    11050 3800
	0    1    -1   0   
$EndComp
Wire Wire Line
	11050 3800 11100 3800
$Comp
L power:GND #PWR080
U 1 1 60C0DD76
P 11050 5700
F 0 "#PWR080" H 11050 5450 50  0001 C CNN
F 1 "GND" V 11055 5572 50  0000 R CNN
F 2 "" H 11050 5700 50  0001 C CNN
F 3 "" H 11050 5700 50  0001 C CNN
	1    11050 5700
	0    1    -1   0   
$EndComp
Wire Wire Line
	11050 5700 11100 5700
$Comp
L power:GND #PWR067
U 1 1 60C5ED44
P 9800 4250
F 0 "#PWR067" H 9800 4000 50  0001 C CNN
F 1 "GND" H 9805 4077 50  0000 C CNN
F 2 "" H 9800 4250 50  0001 C CNN
F 3 "" H 9800 4250 50  0001 C CNN
	1    9800 4250
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP1 C20
U 1 1 60C5ED4D
P 9800 4050
F 0 "C20" H 9914 4096 50  0000 L CNN
F 1 "10uF" H 9914 4005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9800 4050 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/leadmlcc_halogenfree_fg_en.pdf" H 9800 4050 50  0001 C CNN
F 4 "445-173370-1-ND" H 9800 4050 50  0001 C CNN "Digi-Key Part Number"
F 5 "TDK Corporation" H 9800 4050 50  0001 C CNN "Manufacturer"
F 6 "FG24X7R1A106KRT06" H 9800 4050 50  0001 C CNN "Manufacturer Part Number"
	1    9800 4050
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C21
U 1 1 60C5ED56
P 10250 4050
F 0 "C21" H 10364 4096 50  0000 L CNN
F 1 "0.1uF" H 10364 4005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 10288 3900 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1050_GOLDMAX_X7R.pdf" H 10250 4050 50  0001 C CNN
F 4 "399-13932-ND" H 10250 4050 50  0001 C CNN "Digi-Key Part Number"
F 5 "KEMET" H 10250 4050 50  0001 C CNN "Manufacturer"
F 6 "C322C104J5R5TA" H 10250 4050 50  0001 C CNN "Manufacturer Part Number"
	1    10250 4050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9800 4200 10250 4200
$Comp
L power:+5V #PWR069
U 1 1 60C5ED5D
P 10250 3850
F 0 "#PWR069" H 10250 3700 50  0001 C CNN
F 1 "+5V" H 10265 4023 50  0000 C CNN
F 2 "" H 10250 3850 50  0001 C CNN
F 3 "" H 10250 3850 50  0001 C CNN
	1    10250 3850
	1    0    0    -1  
$EndComp
Connection ~ 10250 3900
Wire Wire Line
	10250 3900 9800 3900
Wire Wire Line
	9800 4200 9800 4250
Connection ~ 9800 4200
Wire Wire Line
	11000 3900 11000 4000
Wire Wire Line
	11000 4000 11100 4000
Connection ~ 11000 3900
Wire Wire Line
	11000 3900 11100 3900
$Comp
L power:GND #PWR075
U 1 1 60D3CAA2
P 10600 4200
F 0 "#PWR075" H 10600 3950 50  0001 C CNN
F 1 "GND" V 10605 4072 50  0000 R CNN
F 2 "" H 10600 4200 50  0001 C CNN
F 3 "" H 10600 4200 50  0001 C CNN
	1    10600 4200
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R35
U 1 1 60D3CAAB
P 10800 4200
F 0 "R35" V 10595 4200 50  0000 C CNN
F 1 "10K" V 10686 4200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10730 4200 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 10800 4200 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 10800 4200 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 10800 4200 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 10800 4200 50  0001 C CNN "Manufacturer Part Number"
	1    10800 4200
	0    -1   1    0   
$EndComp
Wire Wire Line
	10600 4200 10650 4200
Wire Wire Line
	10950 4200 11000 4200
Wire Wire Line
	11000 4200 11000 4100
Wire Wire Line
	11000 4100 11100 4100
Wire Wire Line
	11000 4200 11000 4300
Wire Wire Line
	11000 4300 11100 4300
Connection ~ 11000 4200
Wire Wire Line
	11000 4200 11100 4200
$Comp
L power:GND #PWR076
U 1 1 60EB21AF
P 10600 4900
F 0 "#PWR076" H 10600 4650 50  0001 C CNN
F 1 "GND" V 10605 4772 50  0000 R CNN
F 2 "" H 10600 4900 50  0001 C CNN
F 3 "" H 10600 4900 50  0001 C CNN
	1    10600 4900
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R36
U 1 1 60EB21B8
P 10800 4900
F 0 "R36" V 10595 4900 50  0000 C CNN
F 1 "10K" V 10686 4900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10730 4900 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 10800 4900 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 10800 4900 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 10800 4900 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 10800 4900 50  0001 C CNN "Manufacturer Part Number"
	1    10800 4900
	0    -1   1    0   
$EndComp
Wire Wire Line
	10600 4900 10650 4900
Wire Wire Line
	10950 4900 11000 4900
Wire Wire Line
	11000 4900 11000 4800
Wire Wire Line
	11000 4700 11100 4700
Wire Wire Line
	11000 4900 11100 4900
Connection ~ 11000 4900
Wire Wire Line
	11100 4800 11000 4800
Connection ~ 11000 4800
Wire Wire Line
	11000 4800 11000 4700
Wire Wire Line
	11100 5100 11000 5100
Wire Wire Line
	11000 5100 11000 5000
Wire Wire Line
	11100 5000 11000 5000
Connection ~ 11000 5000
Wire Wire Line
	11000 5000 11000 4900
Text GLabel 11050 4400 0    50   Input ~ 0
SCK
Wire Wire Line
	11050 4400 11100 4400
Text GLabel 11050 4500 0    50   Input ~ 0
MOSI
Wire Wire Line
	11050 4500 11100 4500
Text GLabel 11050 4600 0    50   3State ~ 0
MISO
Wire Wire Line
	11050 4600 11100 4600
Text GLabel 11050 5200 0    50   Output ~ 0
SS_DS
Wire Wire Line
	11050 5200 11100 5200
$Comp
L Device:R_US R31
U 1 1 611FFA37
P 10600 5300
F 0 "R31" V 10395 5300 50  0000 C CNN
F 1 "10K" V 10486 5300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10530 5300 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 10600 5300 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 10600 5300 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 10600 5300 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 10600 5300 50  0001 C CNN "Manufacturer Part Number"
	1    10600 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	10750 5300 11100 5300
$Comp
L power:+5V #PWR071
U 1 1 611FFA3E
P 10400 5300
F 0 "#PWR071" H 10400 5150 50  0001 C CNN
F 1 "+5V" V 10415 5428 50  0000 L CNN
F 2 "" H 10400 5300 50  0001 C CNN
F 3 "" H 10400 5300 50  0001 C CNN
	1    10400 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10450 5300 10400 5300
Wire Wire Line
	10750 5500 11050 5500
Wire Wire Line
	11050 5500 11050 5400
Wire Wire Line
	11050 5400 11100 5400
Wire Wire Line
	11050 5500 11050 5600
Wire Wire Line
	11050 5600 11100 5600
Connection ~ 11050 5500
Wire Wire Line
	11050 5500 11100 5500
Wire Notes Line
	13350 5900 13350 3450
Wire Wire Line
	10250 3900 11000 3900
Wire Wire Line
	10250 3850 10250 3900
Wire Notes Line
	9400 5900 9400 3450
Wire Notes Line
	9400 3450 13350 3450
Wire Notes Line
	9400 5900 13350 5900
Text Notes 9700 5800 0    50   ~ 10
Display
$Comp
L ShotTimerLibs:CD74HC151E-EZLayout U1
U 1 1 60400F71
P 1650 4650
F 0 "U1" H 1400 6215 50  0000 C CNN
F 1 "CD74HC151E" H 1400 6124 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 1650 4650 50  0001 L BNN
F 3 "https://www.ti.com/lit/ds/symlink/cd74hc151.pdf" H 1650 4650 50  0001 L BNN
F 4 "296-25973-5-ND" H 1650 4650 50  0001 C CNN "Digi-Key Part Number"
F 5 "Texas Instruments" H 1650 4650 50  0001 C CNN "Manufacturer"
F 6 "CD74HC151E" H 1650 4650 50  0001 C CNN "Manufacturer Part Number"
	1    1650 4650
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R39
U 1 1 60409FDE
P 1300 5150
F 0 "R39" V 1505 5150 50  0000 C CNN
F 1 "10K" V 1414 5150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1340 5140 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 1300 5150 50  0001 C CNN
F 4 "RNF14FTD10K0CT-ND" H 1300 5150 50  0001 C CNN "Digi-Key Part Number"
F 5 "Stackpole Electronics Inc" H 1300 5150 50  0001 C CNN "Manufacturer"
F 6 "RNF14FTD10K0" H 1300 5150 50  0001 C CNN "Manufacturer Part Number"
	1    1300 5150
	0    -1   -1   0   
$EndComp
Text GLabel 1400 4550 0    50   Input ~ 0
S0
Text GLabel 1400 4700 0    50   Input ~ 0
S1
Text GLabel 1400 4850 0    50   Input ~ 0
S2
Wire Wire Line
	1400 4550 1450 4550
Wire Wire Line
	1400 4700 1450 4700
Wire Wire Line
	1400 4850 1450 4850
Wire Wire Line
	1150 4750 1150 5150
Wire Wire Line
	7600 4550 7750 4550
Text GLabel 7700 5450 2    50   Output ~ 0
S2
$Comp
L ShotTimerLibs:SW_Push_2-4 SW1
U 1 1 6049CDEE
P 3200 3350
F 0 "SW1" H 3000 3450 50  0000 C CNN
F 1 "BTN" H 3400 3450 50  0000 C CNN
F 2 "ShotTimer:SW_B3F-10xx" H 3200 3550 50  0001 C CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-b3f.pdf" H 3200 3550 50  0001 C CNN
F 4 "SW400-ND" H 3200 3350 50  0001 C CNN "Digi-Key Part Number"
F 5 "Omron Electronics Inc-EMC Div" H 3200 3350 50  0001 C CNN "Manufacturer"
F 6 "B3F-1000" H 3200 3350 50  0001 C CNN "Manufacturer Part Number"
	1    3200 3350
	1    0    0    -1  
$EndComp
$Comp
L ShotTimerLibs:BOM_ITEM-UserLibrary #BOM3
U 1 1 603B78A4
P 12750 3800
F 0 "#BOM3" H 12828 3871 50  0000 L CNN
F 1 "Support" H 12828 3780 50  0000 L CNN
F 2 "" H 12750 3800 50  0001 C CNN
F 3 "https://www.essentracomponents.com.sg/images-line/pdfs/MDLSP1-09M-01.pdf" H 12750 3800 50  0001 C CNN
F 4 "Essentra Components" H 12750 3800 50  0001 C CNN "Digi-Key Part Number"
F 5 "Sullins Connector Solutions" H 12828 3780 50  0001 L CNN "Manufacturer"
F 6 "MDLSP1-09M-01" H 12828 3689 50  0001 L CNN "Manufacturer Part Number"
	1    12750 3800
	1    0    0    -1  
$EndComp
$Comp
L ShotTimerLibs:BOM_ITEM-UserLibrary #BOM4
U 1 1 603B982C
P 12750 4000
F 0 "#BOM4" H 12828 4071 50  0000 L CNN
F 1 "Support" H 12828 3980 50  0000 L CNN
F 2 "" H 12750 4000 50  0001 C CNN
F 3 "https://www.essentracomponents.com.sg/images-line/pdfs/MDLSP1-09M-01.pdf" H 12750 4000 50  0001 C CNN
F 4 "Essentra Components" H 12750 4000 50  0001 C CNN "Digi-Key Part Number"
F 5 "Sullins Connector Solutions" H 12828 3980 50  0001 L CNN "Manufacturer"
F 6 "MDLSP1-09M-01" H 12828 3889 50  0001 L CNN "Manufacturer Part Number"
	1    12750 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3400 6250 3650
Wire Wire Line
	6250 3400 6250 3150
Connection ~ 6250 3400
Connection ~ 6250 3150
Wire Wire Line
	6250 3150 6400 3150
$EndSCHEMATC
