//Deviec:FT61F08X
//-----------------------Variable---------------------------------
		_pwmi		EQU		7BH
		_pwmu		EQU		6BH
		_wd		EQU		5AH
		_dci		EQU		4AH
		_dcu		EQU		4CH
		_gl_st		EQU		7DH
		_dcfj_st		EQU		5FH
		_wderr_st		EQU		62H
		_dcmax_st		EQU		60H
		_acerr_st		EQU		5EH
		_upsd		EQU		58H
		_theVoltage1		EQU		52H
		_theVoltage2		EQU		54H
		_theVoltage3		EQU		56H
		_adc0		EQU		20H
		_adc1		EQU		34H
		_adc2		EQU		A0H
		_adc3		EQU		B4H
		_adc4		EQU		C8H
		_gljs		EQU		4EH
		_dczxjs		EQU		61H
		_acerjs		EQU		48H
		_ledjs		EQU		50H
		_wderjs		EQU		5CH
//-----------------------Variable END---------------------------------
		ORG		0000H
		MOVLP 	0H 			//0000 	0180
		LJUMP 	DH 			//0001 	380D
		ORG		0003H
		NOP 					//0003 	1000
		MOVLP 	0H 			//0004 	0180

		//;cd.C: 32: if(EPIF0 & 0x01)
		MOVLB 	0H 			//0005 	1020
		BTSS 	14H, 0H 		//0006 	2C14
		RETI 					//0007 	1009

		//;cd.C: 33: {
		//;cd.C: 34: EPIF0 |= 0x01;
		BSR 	14H, 0H 			//0008 	2414

		//;cd.C: 35: PEIE = 0;
		BCR 	BH, 6H 			//0009 	230B

		//;cd.C: 36: gl_st = 1;
		CLRF 	7DH 			//000A 	11FD
		ORG		000BH
		INCR 	7DH, 1H 		//000B 	1AFD
		RETI 					//000C 	1009
		CLRF 	8H 			//000D 	1188
		MOVLP 	4H 			//000E 	0184
		LJUMP 	493H 			//000F 	3C93
		ORG		048DH
		CLRWDT 			//048D 	1064
		CLRF 	0H 			//048E 	1180
		ADDFSR 	0H, 1H 		//048F 	0101
		DECRSZ 	9H, 1H 		//0490 	1B89
		LJUMP 	48EH 			//0491 	3C8E
		RETW 	0H 			//0492 	0400
		LDWI 	20H 			//0493 	0020
		CLRF 	7DH 			//0494 	11FD
		ORG		0495H
		STR 	4H 			//0495 	1084
		LDWI 	0H 			//0496 	0000
		STR 	5H 			//0497 	1085
		LDWI 	43H 			//0498 	0043
		MOVLP 	4H 			//0499 	0184
		LCALL 	48DH 			//049A 	348D
		MOVLP 	4H 			//049B 	0184
		LDWI 	A0H 			//049C 	00A0
		ORG		049DH
		STR 	4H 			//049D 	1084
		LDWI 	0H 			//049E 	0000
		STR 	5H 			//049F 	1085
		LDWI 	3CH 			//04A0 	003C
		MOVLP 	4H 			//04A1 	0184
		LCALL 	48DH 			//04A2 	348D
		MOVLP 	4H 			//04A3 	0184
		LDWI 	22H 			//04A4 	0022
		ORG		04A5H
		STR 	7BH 			//04A5 	10FB
		LDWI 	20H 			//04A6 	0020
		CLRF 	7CH 			//04A7 	11FC
		STR 	6BH 			//04A8 	10EB
		LDWI 	3H 			//04A9 	0003
		STR 	6CH 			//04AA 	10EC
		MOVLB 	0H 			//04AB 	1020
		LJUMP 	55FH 			//04AC 	3D5F
		ORG		04ADH

		//;run.c: 83: if(wd < 3850){
		LDWI 	FH 			//04AD 	000F
		SUBWR 	5BH, 0H 		//04AE 	125B
		LDWI 	AH 			//04AF 	000A
		BTSC 	3H, 2H 			//04B0 	2903
		SUBWR 	5AH, 0H 		//04B1 	125A
		BTSC 	3H, 0H 			//04B2 	2803
		LJUMP 	4C2H 			//04B3 	3CC2

		//;run.c: 84: if(wderjs >= 5000){wderr_st = 1;}
		LDWI 	13H 			//04B4 	0013
		ORG		04B5H
		SUBWR 	5DH, 0H 		//04B5 	125D
		LDWI 	88H 			//04B6 	0088
		BTSC 	3H, 2H 			//04B7 	2903
		SUBWR 	5CH, 0H 		//04B8 	125C
		BTSS 	3H, 0H 			//04B9 	2C03
		LJUMP 	4BEH 			//04BA 	3CBE
		CLRF 	62H 			//04BB 	11E2
		INCR 	62H, 1H 		//04BC 	1AE2
		ORG		04BDH
		LJUMP 	4CCH 			//04BD 	3CCC

		//;run.c: 85: else{wderjs++;}
		INCR 	5CH, 1H 		//04BE 	1ADC
		BTSC 	3H, 2H 			//04BF 	2903
		INCR 	5DH, 1H 		//04C0 	1ADD
		LJUMP 	4CCH 			//04C1 	3CCC
		LDWI 	FH 			//04C2 	000F
		SUBWR 	5BH, 0H 		//04C3 	125B
		LDWI 	A1H 			//04C4 	00A1
		ORG		04C5H
		BTSC 	3H, 2H 			//04C5 	2903
		SUBWR 	5AH, 0H 		//04C6 	125A
		BTSS 	3H, 0H 			//04C7 	2C03
		LJUMP 	4CCH 			//04C8 	3CCC
		CLRF 	62H 			//04C9 	11E2
		CLRF 	5CH 			//04CA 	11DC
		CLRF 	5DH 			//04CB 	11DD

		//;run.c: 88: if(gl_st != 1 && dcfj_st != 1 && wderr_st !=1 && acerr_st != 1){
		DECR 	7DH, 0H 		//04CC 	137D
		ORG		04CDH
		BTSC 	3H, 2H 			//04CD 	2903
		LJUMP 	521H 			//04CE 	3D21
		DECR 	5FH, 0H 		//04CF 	135F
		BTSC 	3H, 2H 			//04D0 	2903
		LJUMP 	521H 			//04D1 	3D21
		DECR 	62H, 0H 		//04D2 	1362
		BTSC 	3H, 2H 			//04D3 	2903
		LJUMP 	521H 			//04D4 	3D21
		ORG		04D5H
		DECR 	5EH, 0H 		//04D5 	135E
		BTSC 	3H, 2H 			//04D6 	2903
		LJUMP 	521H 			//04D7 	3D21

		//;run.c: 89: if(dcu <= 1768){
		LDWI 	6H 			//04D8 	0006
		SUBWR 	4DH, 0H 		//04D9 	124D
		LDWI 	E9H 			//04DA 	00E9
		BTSC 	3H, 2H 			//04DB 	2903
		SUBWR 	4CH, 0H 		//04DC 	124C
		ORG		04DDH
		BTSC 	3H, 0H 			//04DD 	2803
		LJUMP 	4FCH 			//04DE 	3CFC

		//;run.c: 90: if(pwmi != 34 || RC5 == 0){
		LDR 	7BH, 0H 			//04DF 	187B
		XOWI 	22H 			//04E0 	0A22
		IORWR 	7CH, 0H 		//04E1 	147C
		BTSS 	3H, 2H 			//04E2 	2D03
		LJUMP 	4E6H 			//04E3 	3CE6
		BTSC 	EH, 5H 			//04E4 	2A8E
		ORG		04E5H
		LJUMP 	4FAH 			//04E5 	3CFA

		//;run.c: 91: pwmi = 34;
		LDWI 	22H 			//04E6 	0022
		STR 	7BH 			//04E7 	10FB
		CLRF 	7CH 			//04E8 	11FC

		//;run.c: 92: TIM1CCR2H =pwmi/256;
		//;run.c: 93: TIM1CCR2L =pwmi%256;
		LCALL 	7E7H 			//04E9 	37E7
		MOVLP 	4H 			//04EA 	0184

		//;run.c: 94: if(RC5 == 0){
		MOVLB 	0H 			//04EB 	1020
		BTSC 	EH, 5H 			//04EC 	2A8E
		ORG		04EDH
		LJUMP 	4FAH 			//04ED 	3CFA

		//;run.c: 95: BO_IN_OUT();
		LCALL 	7B8H 			//04EE 	37B8
		MOVLP 	4H 			//04EF 	0184

		//;run.c: 96: DelayMs(10);
		LDWI 	AH 			//04F0 	000A
		LCALL 	6F1H 			//04F1 	36F1
		MOVLP 	4H 			//04F2 	0184

		//;run.c: 97: RC5 = 1;
		MOVLB 	0H 			//04F3 	1020
		LDWI 	96H 			//04F4 	0096
		ORG		04F5H
		BSR 	EH, 5H 			//04F5 	268E

		//;run.c: 98: DelayMs(150);
		LCALL 	6F1H 			//04F6 	36F1
		MOVLP 	4H 			//04F7 	0184

		//;run.c: 99: BO_IN_MO();
		LCALL 	7A7H 			//04F8 	37A7
		MOVLP 	4H 			//04F9 	0184

		//;run.c: 100: }
		//;run.c: 101: }
		//;run.c: 102: dcmax_st = 0;
		CLRF 	60H 			//04FA 	11E0

		//;run.c: 103: }else if(dcu <= 2335){
		LJUMP 	529H 			//04FB 	3D29
		LDWI 	9H 			//04FC 	0009
		ORG		04FDH
		SUBWR 	4DH, 0H 		//04FD 	124D
		LDWI 	20H 			//04FE 	0020
		BTSC 	3H, 2H 			//04FF 	2903
		SUBWR 	4CH, 0H 		//0500 	124C

		//;run.c: 104: if(dcmax_st == 0){
		LDR 	60H, 1H 			//0501 	18E0
		BTSC 	3H, 0H 			//0502 	2803
		LJUMP 	51CH 			//0503 	3D1C
		BTSS 	3H, 2H 			//0504 	2D03
		ORG		0505H
		LJUMP 	511H 			//0505 	3D11

		//;run.c: 105: if(pwmi < 115){
		LDWI 	0H 			//0506 	0000
		SUBWR 	7CH, 0H 		//0507 	127C
		LDWI 	73H 			//0508 	0073
		BTSC 	3H, 2H 			//0509 	2903
		SUBWR 	7BH, 0H 		//050A 	127B
		BTSC 	3H, 0H 			//050B 	2803
		LJUMP 	4EBH 			//050C 	3CEB
		ORG		050DH

		//;run.c: 106: pwmi++;
		INCR 	7BH, 1H 		//050D 	1AFB
		BTSC 	3H, 2H 			//050E 	2903
		INCR 	7CH, 1H 		//050F 	1AFC
		LJUMP 	4E9H 			//0510 	3CE9

		//;run.c: 114: DelayMs(150);
		//;run.c: 113: RC5 = 1;
		//;run.c: 112: DelayMs(10);
		//;run.c: 111: BO_IN_OUT();
		//;run.c: 109: }
		//;run.c: 110: if(RC5 == 0){
		//;run.c: 108: TIM1CCR2L =pwmi%256;
		//;run.c: 107: TIM1CCR2H =pwmi/256;
		LDWI 	8H 			//0511 	0008

		//;run.c: 119: RC5 = 0;
		BCR 	EH, 5H 			//0512 	228E

		//;run.c: 120: dcmax_st = 1;
		CLRF 	60H 			//0513 	11E0
		INCR 	60H, 1H 		//0514 	1AE0
		ORG		0515H

		//;run.c: 121: if(dcu <= 2155){dcmax_st = 0;}
		SUBWR 	4DH, 0H 		//0515 	124D
		LDWI 	6CH 			//0516 	006C
		BTSC 	3H, 2H 			//0517 	2903
		SUBWR 	4CH, 0H 		//0518 	124C
		BTSS 	3H, 0H 			//0519 	2C03
		LJUMP 	4FAH 			//051A 	3CFA
		LJUMP 	529H 			//051B 	3D29

		//;run.c: 124: if(dcmax_st == 0){
		BTSS 	3H, 2H 			//051C 	2D03
		ORG		051DH
		LJUMP 	529H 			//051D 	3D29

		//;run.c: 125: dcmax_st = 1;
		CLRF 	60H 			//051E 	11E0
		INCR 	60H, 1H 		//051F 	1AE0
		LJUMP 	523H 			//0520 	3D23

		//;run.c: 130: }
		//;run.c: 131: }
		//;run.c: 132: }else{
		//;run.c: 126: RC5 = 0;
		//;run.c: 133: if(RC5 == 1){
		BTSS 	EH, 5H 			//0521 	2E8E
		LJUMP 	529H 			//0522 	3D29

		//;run.c: 134: RC5 = 0;
		BCR 	EH, 5H 			//0523 	228E

		//;run.c: 127: pwmi = 1;
		CLRF 	7BH 			//0524 	11FB
		ORG		0525H
		INCR 	7BH, 1H 		//0525 	1AFB
		CLRF 	7CH 			//0526 	11FC

		//;run.c: 128: TIM1CCR2H =pwmi/256;
		//;run.c: 129: TIM1CCR2L =pwmi%256;
		LCALL 	7E7H 			//0527 	37E7
		MOVLP 	4H 			//0528 	0184

		//;run.c: 138: }
		//;run.c: 139: }
		//;run.c: 141: if(gl_st == 1 || dcfj_st == 1 || wderr_st == 1 || acerr_st == 1){
		DECR 	7DH, 0H 		//0529 	137D
		BTSC 	3H, 2H 			//052A 	2903
		LJUMP 	535H 			//052B 	3D35
		MOVLB 	0H 			//052C 	1020
		ORG		052DH
		DECR 	5FH, 0H 		//052D 	135F
		BTSC 	3H, 2H 			//052E 	2903
		LJUMP 	535H 			//052F 	3D35
		DECR 	62H, 0H 		//0530 	1362
		BTSC 	3H, 2H 			//0531 	2903
		LJUMP 	535H 			//0532 	3D35
		DECRSZ 	5EH, 0H 		//0533 	1B5E
		LJUMP 	556H 			//0534 	3D56
		ORG		0535H

		//;run.c: 142: RB3 = 0;
		MOVLB 	0H 			//0535 	1020
		BCR 	DH, 3H 			//0536 	218D

		//;run.c: 143: ledjs++;
		INCR 	50H, 1H 		//0537 	1AD0
		BTSC 	3H, 2H 			//0538 	2903
		INCR 	51H, 1H 		//0539 	1AD1

		//;run.c: 144: if(ledjs < 100){RC4 = 1;}
		LDWI 	0H 			//053A 	0000
		SUBWR 	51H, 0H 		//053B 	1251
		LDWI 	64H 			//053C 	0064
		ORG		053DH
		BTSC 	3H, 2H 			//053D 	2903
		SUBWR 	50H, 0H 		//053E 	1250
		BTSC 	3H, 0H 			//053F 	2803
		LJUMP 	543H 			//0540 	3D43
		BSR 	EH, 4H 			//0541 	260E
		RET 					//0542 	1008

		//;run.c: 145: else if(ledjs < 200){RC4 = 0;}
		LDWI 	0H 			//0543 	0000
		SUBWR 	51H, 0H 		//0544 	1251
		ORG		0545H
		LDWI 	C8H 			//0545 	00C8
		BTSC 	3H, 2H 			//0546 	2903
		SUBWR 	50H, 0H 		//0547 	1250
		BTSC 	3H, 0H 			//0548 	2803
		LJUMP 	54CH 			//0549 	3D4C
		BCR 	EH, 4H 			//054A 	220E
		RET 					//054B 	1008

		//;run.c: 146: else if(ledjs > 200){ledjs = 0;}
		LDWI 	0H 			//054C 	0000
		ORG		054DH
		SUBWR 	51H, 0H 		//054D 	1251
		LDWI 	C9H 			//054E 	00C9
		BTSC 	3H, 2H 			//054F 	2903
		SUBWR 	50H, 0H 		//0550 	1250
		BTSS 	3H, 0H 			//0551 	2C03
		RET 					//0552 	1008
		CLRF 	50H 			//0553 	11D0
		CLRF 	51H 			//0554 	11D1
		ORG		0555H
		RET 					//0555 	1008

		//;run.c: 187: }else if(dcmax_st == 0){
		LDR 	60H, 1H 			//0556 	18E0
		BTSS 	3H, 2H 			//0557 	2D03
		LJUMP 	55CH 			//0558 	3D5C

		//;run.c: 188: RC4 = 1;RB3 = 0;
		BSR 	EH, 4H 			//0559 	260E
		BCR 	DH, 3H 			//055A 	218D

		//;run.c: 189: }else{
		RET 					//055B 	1008

		//;run.c: 190: RC4 = 0;RB3 = 1;
		BCR 	EH, 4H 			//055C 	220E
		ORG		055DH
		BSR 	DH, 3H 			//055D 	258D
		RET 					//055E 	1008

		//;cd.C: 46: unint i;
		//;cd.C: 48: POWER_INITIAL();
		LCALL 	736H 			//055F 	3736
		MOVLP 	4H 			//0560 	0184

		//;cd.C: 49: Time1Initial();
		LCALL 	76EH 			//0561 	376E
		MOVLP 	4H 			//0562 	0184

		//;cd.C: 50: ADC_INITIAL();
		LCALL 	7BEH 			//0563 	37BE
		MOVLP 	4H 			//0564 	0184
		ORG		0565H

		//;cd.C: 51: RC6 = 1;
		MOVLB 	0H 			//0565 	1020
		BSR 	EH, 6H 			//0566 	270E

		//;cd.C: 52: for(i=0;i<200;i++){
		CLRF 	79H 			//0567 	11F9
		CLRF 	7AH 			//0568 	11FA

		//;cd.C: 53: adc_run();
		LCALL 	59CH 			//0569 	359C
		MOVLP 	4H 			//056A 	0184

		//;cd.C: 54: DelayMs(5);
		LDWI 	5H 			//056B 	0005
		LCALL 	6F1H 			//056C 	36F1
		ORG		056DH
		MOVLP 	4H 			//056D 	0184

		//;cd.C: 55: RC4 = RB3 = ~RB3;
		LDWI 	8H 			//056E 	0008
		MOVLB 	0H 			//056F 	1020
		XORWR 	DH, 1H 		//0570 	168D
		BTSS 	DH, 3H 			//0571 	2D8D
		LJUMP 	576H 			//0572 	3D76
		MOVLB 	0H 			//0573 	1020
		BSR 	EH, 4H 			//0574 	260E
		ORG		0575H
		LJUMP 	578H 			//0575 	3D78
		MOVLB 	0H 			//0576 	1020
		BCR 	EH, 4H 			//0577 	220E
		INCR 	79H, 1H 		//0578 	1AF9
		BTSC 	3H, 2H 			//0579 	2903
		INCR 	7AH, 1H 		//057A 	1AFA
		LDWI 	0H 			//057B 	0000
		SUBWR 	7AH, 0H 		//057C 	127A
		ORG		057DH
		LDWI 	C8H 			//057D 	00C8
		BTSC 	3H, 2H 			//057E 	2903
		SUBWR 	79H, 0H 		//057F 	1279
		BTSS 	3H, 0H 			//0580 	2C03
		LJUMP 	569H 			//0581 	3D69

		//;cd.C: 56: }
		//;cd.C: 57: pwmi = 34;
		LDWI 	22H 			//0582 	0022
		STR 	7BH 			//0583 	10FB
		CLRF 	7CH 			//0584 	11FC
		ORG		0585H

		//;cd.C: 58: TIM1CCR2H =pwmi/256;
		//;cd.C: 59: TIM1CCR2L =pwmi%256;
		LCALL 	7E7H 			//0585 	37E7
		MOVLP 	4H 			//0586 	0184

		//;cd.C: 60: pwmu = 800;
		LDWI 	20H 			//0587 	0020
		MOVLB 	0H 			//0588 	1020
		STR 	6BH 			//0589 	10EB
		LDWI 	3H 			//058A 	0003
		STR 	6CH 			//058B 	10EC

		//;cd.C: 61: TIM1CCR1H =pwmu/256;
		//;cd.C: 62: TIM1CCR1L =pwmu%256;
		LCALL 	7F3H 			//058C 	37F3
		ORG		058DH
		MOVLP 	4H 			//058D 	0184

		//;cd.C: 63: DelayS(1);
		LDWI 	1H 			//058E 	0001
		LCALL 	725H 			//058F 	3725
		MOVLP 	4H 			//0590 	0184

		//;cd.C: 65: DelayS(2);
		LDWI 	2H 			//0591 	0002
		LCALL 	725H 			//0592 	3725
		MOVLP 	4H 			//0593 	0184

		//;cd.C: 67: {
		//;cd.C: 68: DelayMs(1);
		LDWI 	1H 			//0594 	0001
		ORG		0595H
		LCALL 	6F1H 			//0595 	36F1
		MOVLP 	4H 			//0596 	0184

		//;cd.C: 69: adc_run();
		LCALL 	59CH 			//0597 	359C
		MOVLP 	4H 			//0598 	0184

		//;cd.C: 70: led_run();
		LCALL 	4ADH 			//0599 	34AD
		MOVLP 	4H 			//059A 	0184
		LJUMP 	594H 			//059B 	3D94
		MOVLB 	0H 			//059C 	1020
		ORG		059DH
		LDWI 	0H 			//059D 	0000
		CLRF 	65H 			//059E 	11E5
		CLRF 	66H 			//059F 	11E6
		CLRF 	67H 			//05A0 	11E7
		CLRF 	68H 			//05A1 	11E8

		//;run.c: 16: theVoltage1 = GET_ADC_DATA(0);DelayMs(1);
		LCALL 	702H 			//05A2 	3702
		MOVLP 	4H 			//05A3 	0184
		LDR 	73H, 0H 			//05A4 	1873
		ORG		05A5H
		MOVLB 	0H 			//05A5 	1020
		STR 	53H 			//05A6 	10D3
		LDR 	72H, 0H 			//05A7 	1872
		STR 	52H 			//05A8 	10D2
		LDWI 	1H 			//05A9 	0001
		LCALL 	6F1H 			//05AA 	36F1
		MOVLP 	4H 			//05AB 	0184

		//;run.c: 17: theVoltage2 = GET_ADC_DATA(1);DelayMs(1);
		LDWI 	1H 			//05AC 	0001
		ORG		05ADH
		LCALL 	702H 			//05AD 	3702
		MOVLP 	4H 			//05AE 	0184
		LDR 	73H, 0H 			//05AF 	1873
		MOVLB 	0H 			//05B0 	1020
		STR 	55H 			//05B1 	10D5
		LDR 	72H, 0H 			//05B2 	1872
		STR 	54H 			//05B3 	10D4
		LDWI 	1H 			//05B4 	0001
		ORG		05B5H
		LCALL 	6F1H 			//05B5 	36F1
		MOVLP 	4H 			//05B6 	0184

		//;run.c: 18: theVoltage3 = GET_ADC_DATA(2);DelayMs(1);
		LDWI 	2H 			//05B7 	0002
		LCALL 	702H 			//05B8 	3702
		MOVLP 	4H 			//05B9 	0184
		LDR 	73H, 0H 			//05BA 	1873
		MOVLB 	0H 			//05BB 	1020
		STR 	57H 			//05BC 	10D7
		ORG		05BDH
		LDR 	72H, 0H 			//05BD 	1872
		STR 	56H 			//05BE 	10D6
		LDWI 	1H 			//05BF 	0001
		LCALL 	6F1H 			//05C0 	36F1
		MOVLP 	4H 			//05C1 	0184

		//;run.c: 20: for(i=0;i<9;i++){
		MOVLB 	0H 			//05C2 	1020
		CLRF 	69H 			//05C3 	11E9
		CLRF 	6AH 			//05C4 	11EA
		ORG		05C5H

		//;run.c: 21: adc0[i] = adc0[i+1];
		LSLF 	69H, 0H 		//05C5 	0569
		ADDWI 	22H 			//05C6 	0E22
		STR 	6H 			//05C7 	1086
		CLRF 	7H 			//05C8 	1187
		MOVIW 	0H[1] 			//05C9 	0F40
		STR 	77H 			//05CA 	10F7
		MOVIW 	1H[1] 			//05CB 	0F41
		STR 	78H 			//05CC 	10F8
		ORG		05CDH
		LSLF 	69H, 0H 		//05CD 	0569
		ADDWI 	20H 			//05CE 	0E20

		//;run.c: 22: adc1[i] = adc1[i+1];
		LCALL 	7D9H 			//05CF 	37D9
		MOVLP 	4H 			//05D0 	0184
		ADDWI 	36H 			//05D1 	0E36
		LCALL 	7E0H 			//05D2 	37E0
		MOVLP 	4H 			//05D3 	0184
		ADDWI 	34H 			//05D4 	0E34
		ORG		05D5H

		//;run.c: 23: adc2[i] = adc2[i+1];
		LCALL 	7D9H 			//05D5 	37D9
		MOVLP 	4H 			//05D6 	0184
		ADDWI 	A2H 			//05D7 	0EA2
		LCALL 	7E0H 			//05D8 	37E0
		MOVLP 	4H 			//05D9 	0184
		ADDWI 	A0H 			//05DA 	0EA0

		//;run.c: 24: adc3[i] = adc3[i+1];
		LCALL 	7D9H 			//05DB 	37D9
		MOVLP 	4H 			//05DC 	0184
		ORG		05DDH
		ADDWI 	B6H 			//05DD 	0EB6
		LCALL 	7E0H 			//05DE 	37E0
		MOVLP 	4H 			//05DF 	0184
		ADDWI 	B4H 			//05E0 	0EB4

		//;run.c: 25: adc4[i] = adc4[i+1];
		LCALL 	7D9H 			//05E1 	37D9
		MOVLP 	4H 			//05E2 	0184
		ADDWI 	CAH 			//05E3 	0ECA
		LCALL 	7E0H 			//05E4 	37E0
		ORG		05E5H
		MOVLP 	4H 			//05E5 	0184
		ADDWI 	C8H 			//05E6 	0EC8
		STR 	6H 			//05E7 	1086
		LDR 	77H, 0H 			//05E8 	1877
		MOVWI 	40H[1] 		//05E9 	0FC0
		LDR 	78H, 0H 			//05EA 	1878
		MOVWI 	41H[1] 		//05EB 	0FC1
		LCALL 	7FAH 			//05EC 	37FA
		ORG		05EDH
		MOVLP 	4H 			//05ED 	0184
		LDWI 	9H 			//05EE 	0009
		BTSC 	3H, 2H 			//05EF 	2903
		SUBWR 	69H, 0H 		//05F0 	1269
		BTSS 	3H, 0H 			//05F1 	2C03
		LJUMP 	5C5H 			//05F2 	3DC5

		//;run.c: 26: }
		//;run.c: 27: if(theVoltage1 >= 1000){adc0[9] = theVoltage1;}
		LDWI 	3H 			//05F3 	0003
		SUBWR 	53H, 0H 		//05F4 	1253
		ORG		05F5H
		LDWI 	E8H 			//05F5 	00E8
		BTSC 	3H, 2H 			//05F6 	2903
		SUBWR 	52H, 0H 		//05F7 	1252
		BTSS 	3H, 0H 			//05F8 	2C03
		LJUMP 	5FEH 			//05F9 	3DFE
		LDR 	53H, 0H 			//05FA 	1853
		STR 	33H 			//05FB 	10B3
		LDR 	52H, 0H 			//05FC 	1852
		ORG		05FDH
		STR 	32H 			//05FD 	10B2

		//;run.c: 28: adc1[9] = theVoltage2;
		LDR 	55H, 0H 			//05FE 	1855
		STR 	47H 			//05FF 	10C7
		LDR 	54H, 0H 			//0600 	1854
		STR 	46H 			//0601 	10C6

		//;run.c: 29: adc2[9] = theVoltage3;
		LDR 	57H, 0H 			//0602 	1857
		MOVLB 	1H 			//0603 	1021
		STR 	33H 			//0604 	10B3
		ORG		0605H
		MOVLB 	0H 			//0605 	1020
		LDR 	56H, 0H 			//0606 	1856
		MOVLB 	1H 			//0607 	1021
		STR 	32H 			//0608 	10B2

		//;run.c: 30: adz0=0;adz1=0;adz2=0;
		MOVLB 	0H 			//0609 	1020
		CLRF 	63H 			//060A 	11E3
		CLRF 	64H 			//060B 	11E4
		CLRF 	65H 			//060C 	11E5
		ORG		060DH
		CLRF 	66H 			//060D 	11E6
		CLRF 	67H 			//060E 	11E7
		CLRF 	68H 			//060F 	11E8

		//;run.c: 31: for(i=0;i<10;i++){
		CLRF 	69H 			//0610 	11E9
		CLRF 	6AH 			//0611 	11EA

		//;run.c: 32: adz0 = adz0+adc0[i];
		LSLF 	69H, 0H 		//0612 	0569
		ADDWI 	20H 			//0613 	0E20
		STR 	6H 			//0614 	1086
		ORG		0615H
		CLRF 	7H 			//0615 	1187
		LCALL 	7EDH 			//0616 	37ED
		MOVLP 	4H 			//0617 	0184
		ADDWR 	63H, 1H 		//0618 	17E3
		LDR 	78H, 0H 			//0619 	1878
		ADDWFC 	64H, 1H 		//061A 	0DE4

		//;run.c: 33: adz1 = adz1+adc1[i];
		LSLF 	69H, 0H 		//061B 	0569
		ADDWI 	34H 			//061C 	0E34
		ORG		061DH
		STR 	6H 			//061D 	1086
		LCALL 	7EDH 			//061E 	37ED
		MOVLP 	4H 			//061F 	0184
		ADDWR 	65H, 1H 		//0620 	17E5
		LDR 	78H, 0H 			//0621 	1878
		ADDWFC 	66H, 1H 		//0622 	0DE6

		//;run.c: 34: adz2 = adz2+adc2[i];
		LSLF 	69H, 0H 		//0623 	0569
		ADDWI 	A0H 			//0624 	0EA0
		ORG		0625H
		STR 	6H 			//0625 	1086
		LCALL 	7EDH 			//0626 	37ED
		MOVLP 	4H 			//0627 	0184
		ADDWR 	67H, 1H 		//0628 	17E7
		LDR 	78H, 0H 			//0629 	1878
		ADDWFC 	68H, 1H 		//062A 	0DE8
		LCALL 	7FAH 			//062B 	37FA
		MOVLP 	4H 			//062C 	0184
		ORG		062DH
		LDWI 	AH 			//062D 	000A
		BTSC 	3H, 2H 			//062E 	2903
		SUBWR 	69H, 0H 		//062F 	1269
		BTSS 	3H, 0H 			//0630 	2C03
		LJUMP 	612H 			//0631 	3E12

		//;run.c: 35: }
		//;run.c: 36: wd = adz0/10;
		LDWI 	AH 			//0632 	000A
		STR 	70H 			//0633 	10F0
		CLRF 	71H 			//0634 	11F1
		ORG		0635H
		LDR 	64H, 0H 			//0635 	1864
		STR 	73H 			//0636 	10F3
		LDR 	63H, 0H 			//0637 	1863
		STR 	72H 			//0638 	10F2
		LCALL 	6CCH 			//0639 	36CC
		MOVLP 	4H 			//063A 	0184
		LDR 	71H, 0H 			//063B 	1871
		STR 	5BH 			//063C 	10DB
		ORG		063DH
		LDR 	70H, 0H 			//063D 	1870
		STR 	5AH 			//063E 	10DA

		//;run.c: 37: dcu = adz1/10;
		LDWI 	AH 			//063F 	000A
		STR 	70H 			//0640 	10F0
		CLRF 	71H 			//0641 	11F1
		LDR 	66H, 0H 			//0642 	1866
		STR 	73H 			//0643 	10F3
		LDR 	65H, 0H 			//0644 	1865
		ORG		0645H
		STR 	72H 			//0645 	10F2
		LCALL 	6CCH 			//0646 	36CC
		MOVLP 	4H 			//0647 	0184
		LDR 	71H, 0H 			//0648 	1871
		STR 	4DH 			//0649 	10CD
		LDR 	70H, 0H 			//064A 	1870
		STR 	4CH 			//064B 	10CC

		//;run.c: 38: dci = adz2/10;
		LDWI 	AH 			//064C 	000A
		ORG		064DH
		STR 	70H 			//064D 	10F0
		CLRF 	71H 			//064E 	11F1
		LDR 	68H, 0H 			//064F 	1868
		STR 	73H 			//0650 	10F3
		LDR 	67H, 0H 			//0651 	1867
		STR 	72H 			//0652 	10F2
		LCALL 	6CCH 			//0653 	36CC
		MOVLP 	4H 			//0654 	0184
		ORG		0655H
		LDR 	71H, 0H 			//0655 	1871
		STR 	4BH 			//0656 	10CB
		LDR 	70H, 0H 			//0657 	1870
		STR 	4AH 			//0658 	10CA

		//;run.c: 39: if(RC5 == 1){
		BTSS 	EH, 5H 			//0659 	2E8E
		LJUMP 	66FH 			//065A 	3E6F

		//;run.c: 40: if(dci <= 100){dczxjs++;}
		LDWI 	0H 			//065B 	0000
		SUBWR 	4BH, 0H 		//065C 	124B
		ORG		065DH
		LDWI 	65H 			//065D 	0065
		BTSC 	3H, 2H 			//065E 	2903
		SUBWR 	4AH, 0H 		//065F 	124A
		BTSC 	3H, 0H 			//0660 	2803
		LJUMP 	664H 			//0661 	3E64
		INCR 	61H, 1H 		//0662 	1AE1
		LJUMP 	665H 			//0663 	3E65

		//;run.c: 41: else{dczxjs=0;}
		CLRF 	61H 			//0664 	11E1
		ORG		0665H

		//;run.c: 42: if(dczxjs >= 200){
		LDWI 	C8H 			//0665 	00C8
		SUBWR 	61H, 0H 		//0666 	1261
		BTSS 	3H, 0H 			//0667 	2C03
		LJUMP 	66BH 			//0668 	3E6B

		//;run.c: 44: dczx_st = 0;
		LDWI 	C8H 			//0669 	00C8
		STR 	61H 			//066A 	10E1

		//;run.c: 45: }else{dczx_st = 1;}
		//;run.c: 46: if(RA0 == 1){gl_st = 1;}
		BTSS 	CH, 0H 			//066B 	2C0C
		LJUMP 	66FH 			//066C 	3E6F
		ORG		066DH
		CLRF 	7DH 			//066D 	11FD
		INCR 	7DH, 1H 		//066E 	1AFD

		//;run.c: 47: }
		//;run.c: 60: if(dcu > 3500){dcfj_st = 1;}
		LDWI 	DH 			//066F 	000D
		SUBWR 	4DH, 0H 		//0670 	124D
		LDWI 	ADH 			//0671 	00AD
		BTSC 	3H, 2H 			//0672 	2903
		SUBWR 	4CH, 0H 		//0673 	124C
		BTSS 	3H, 0H 			//0674 	2C03
		ORG		0675H
		LJUMP 	679H 			//0675 	3E79
		CLRF 	5FH 			//0676 	11DF
		INCR 	5FH, 1H 		//0677 	1ADF
		LJUMP 	6A1H 			//0678 	3EA1

		//;run.c: 61: else if(dcu > 2335){dcmax_st = 1;}
		LDWI 	9H 			//0679 	0009
		SUBWR 	4DH, 0H 		//067A 	124D
		LDWI 	20H 			//067B 	0020
		BTSC 	3H, 2H 			//067C 	2903
		ORG		067DH
		SUBWR 	4CH, 0H 		//067D 	124C
		BTSS 	3H, 0H 			//067E 	2C03
		LJUMP 	683H 			//067F 	3E83
		CLRF 	60H 			//0680 	11E0
		INCR 	60H, 1H 		//0681 	1AE0
		LJUMP 	6A1H 			//0682 	3EA1

		//;run.c: 62: else if(dcmax_st == 1){
		DECRSZ 	60H, 0H 		//0683 	1B60
		LJUMP 	68EH 			//0684 	3E8E
		ORG		0685H

		//;run.c: 63: if(dcu <= 2155){dcmax_st = 0;}
		LDWI 	8H 			//0685 	0008
		SUBWR 	4DH, 0H 		//0686 	124D
		LDWI 	6CH 			//0687 	006C
		BTSC 	3H, 2H 			//0688 	2903
		SUBWR 	4CH, 0H 		//0689 	124C
		BTSC 	3H, 0H 			//068A 	2803
		LJUMP 	6A1H 			//068B 	3EA1
		CLRF 	60H 			//068C 	11E0
		ORG		068DH
		LJUMP 	6A1H 			//068D 	3EA1
		LDWI 	29H 			//068E 	0029
		SUBWR 	59H, 0H 		//068F 	1259
		LDWI 	4H 			//0690 	0004
		BTSC 	3H, 2H 			//0691 	2903
		SUBWR 	58H, 0H 		//0692 	1258
		BTSS 	3H, 0H 			//0693 	2C03
		LJUMP 	69AH 			//0694 	3E9A
		ORG		0695H
		LDWI 	4H 			//0695 	0004
		STR 	58H 			//0696 	10D8
		LDWI 	29H 			//0697 	0029
		STR 	59H 			//0698 	10D9
		LJUMP 	6A1H 			//0699 	3EA1

		//;run.c: 65: else{upsd++;dcu = 1768;}
		INCR 	58H, 1H 		//069A 	1AD8
		BTSC 	3H, 2H 			//069B 	2903
		INCR 	59H, 1H 		//069C 	1AD9
		ORG		069DH
		LDWI 	E8H 			//069D 	00E8
		STR 	4CH 			//069E 	10CC
		LDWI 	6H 			//069F 	0006
		STR 	4DH 			//06A0 	10CD

		//;run.c: 67: if(dci > 900){
		LDWI 	3H 			//06A1 	0003
		SUBWR 	4BH, 0H 		//06A2 	124B
		LDWI 	85H 			//06A3 	0085
		BTSC 	3H, 2H 			//06A4 	2903
		ORG		06A5H
		SUBWR 	4AH, 0H 		//06A5 	124A
		BTSS 	3H, 0H 			//06A6 	2C03
		LJUMP 	6B5H 			//06A7 	3EB5

		//;run.c: 68: gljs++;
		INCR 	4EH, 1H 		//06A8 	1ACE
		BTSC 	3H, 2H 			//06A9 	2903
		INCR 	4FH, 1H 		//06AA 	1ACF

		//;run.c: 69: if(gljs >= 1000){gl_st = 1;}
		LDWI 	3H 			//06AB 	0003
		SUBWR 	4FH, 0H 		//06AC 	124F
		ORG		06ADH
		LDWI 	E8H 			//06AD 	00E8
		BTSC 	3H, 2H 			//06AE 	2903
		SUBWR 	4EH, 0H 		//06AF 	124E
		BTSS 	3H, 0H 			//06B0 	2C03
		LJUMP 	6B7H 			//06B1 	3EB7
		CLRF 	7DH 			//06B2 	11FD
		INCR 	7DH, 1H 		//06B3 	1AFD
		LJUMP 	6B7H 			//06B4 	3EB7
		ORG		06B5H
		CLRF 	4EH 			//06B5 	11CE
		CLRF 	4FH 			//06B6 	11CF

		//;run.c: 72: if(RB2 == 1){
		BTSS 	DH, 2H 			//06B7 	2D0D
		LJUMP 	6C7H 			//06B8 	3EC7

		//;run.c: 73: if(acerjs >= 1000){acerr_st = 1;}
		LDWI 	3H 			//06B9 	0003
		SUBWR 	49H, 0H 		//06BA 	1249
		LDWI 	E8H 			//06BB 	00E8
		BTSC 	3H, 2H 			//06BC 	2903
		ORG		06BDH
		SUBWR 	48H, 0H 		//06BD 	1248
		BTSS 	3H, 0H 			//06BE 	2C03
		LJUMP 	6C3H 			//06BF 	3EC3
		CLRF 	5EH 			//06C0 	11DE
		INCR 	5EH, 1H 		//06C1 	1ADE
		RET 					//06C2 	1008

		//;run.c: 74: else{acerjs++;}
		INCR 	48H, 1H 		//06C3 	1AC8
		BTSC 	3H, 2H 			//06C4 	2903
		ORG		06C5H
		INCR 	49H, 1H 		//06C5 	1AC9
		RET 					//06C6 	1008

		//;run.c: 76: acerjs = acerr_st = 0;
		LDWI 	0H 			//06C7 	0000
		CLRF 	5EH 			//06C8 	11DE
		CLRF 	48H 			//06C9 	11C8
		CLRF 	49H 			//06CA 	11C9
		RET 					//06CB 	1008
		CLRF 	74H 			//06CC 	11F4
		ORG		06CDH
		CLRF 	75H 			//06CD 	11F5
		LDR 	71H, 0H 			//06CE 	1871
		IORWR 	70H, 0H 		//06CF 	1470
		BTSC 	3H, 2H 			//06D0 	2903
		LJUMP 	6ECH 			//06D1 	3EEC
		CLRF 	76H 			//06D2 	11F6
		INCR 	76H, 1H 		//06D3 	1AF6
		BTSC 	71H, 7H 		//06D4 	2BF1
		ORG		06D5H
		LJUMP 	6D9H 			//06D5 	3ED9
		LSLF 	70H, 1H 		//06D6 	05F0
		RLR 	71H, 1H 			//06D7 	1DF1
		LJUMP 	6D3H 			//06D8 	3ED3
		LSLF 	74H, 1H 		//06D9 	05F4
		RLR 	75H, 1H 			//06DA 	1DF5
		LDR 	71H, 0H 			//06DB 	1871
		SUBWR 	73H, 0H 		//06DC 	1273
		ORG		06DDH
		BTSS 	3H, 2H 			//06DD 	2D03
		LJUMP 	6E1H 			//06DE 	3EE1
		LDR 	70H, 0H 			//06DF 	1870
		SUBWR 	72H, 0H 		//06E0 	1272
		BTSS 	3H, 0H 			//06E1 	2C03
		LJUMP 	6E8H 			//06E2 	3EE8
		LDR 	70H, 0H 			//06E3 	1870
		SUBWR 	72H, 1H 		//06E4 	12F2
		ORG		06E5H
		LDR 	71H, 0H 			//06E5 	1871
		SUBWFB 	73H, 1H 		//06E6 	0BF3
		BSR 	74H, 0H 			//06E7 	2474
		LSRF 	71H, 1H 		//06E8 	06F1
		RRR 	70H, 1H 			//06E9 	1CF0
		DECRSZ 	76H, 1H 		//06EA 	1BF6
		LJUMP 	6D9H 			//06EB 	3ED9
		LDR 	75H, 0H 			//06EC 	1875
		ORG		06EDH
		STR 	71H 			//06ED 	10F1
		LDR 	74H, 0H 			//06EE 	1874
		STR 	70H 			//06EF 	10F0
		RET 					//06F0 	1008
		STR 	72H 			//06F1 	10F2

		//;delay.c: 25: unsigned char a,b;
		//;delay.c: 26: for(a=0;a<Time;a++)
		CLRF 	73H 			//06F2 	11F3
		LDR 	72H, 0H 			//06F3 	1872
		SUBWR 	73H, 0H 		//06F4 	1273
		ORG		06F5H
		BTSC 	3H, 0H 			//06F5 	2803
		RET 					//06F6 	1008

		//;delay.c: 27: {
		//;delay.c: 28: for(b=0;b<5;b++)
		CLRF 	74H 			//06F7 	11F4

		//;delay.c: 29: {
		//;delay.c: 30: DelayUs(197);
		LDWI 	C5H 			//06F8 	00C5
		LCALL 	71CH 			//06F9 	371C
		MOVLP 	4H 			//06FA 	0184
		LDWI 	5H 			//06FB 	0005
		INCR 	74H, 1H 		//06FC 	1AF4
		ORG		06FDH
		SUBWR 	74H, 0H 		//06FD 	1274
		BTSS 	3H, 0H 			//06FE 	2C03
		LJUMP 	6F8H 			//06FF 	3EF8
		INCR 	73H, 1H 		//0700 	1AF3
		LJUMP 	6F3H 			//0701 	3EF3
		STR 	74H 			//0702 	10F4

		//;init.c: 164: ADCON0 &= 0B00001111;
		LDWI 	FH 			//0703 	000F
		MOVLB 	1H 			//0704 	1021
		ORG		0705H
		ANDWR 	1DH, 1H 		//0705 	159D

		//;init.c: 165: ADCON0 |= adcChannel<<4;
		SWAPR 	74H, 0H 		//0706 	1E74
		ANDWI 	F0H 			//0707 	09F0
		IORWR 	1DH, 1H 		//0708 	149D

		//;init.c: 166: DelayUs(40);
		LDWI 	28H 			//0709 	0028
		LCALL 	71CH 			//070A 	371C
		MOVLP 	4H 			//070B 	0184

		//;init.c: 168: LEBADT = 1;
		MOVLB 	8H 			//070C 	1028
		ORG		070DH
		BSR 	1AH, 3H 			//070D 	259A

		//;init.c: 169: ADEX = 1;
		MOVLB 	1H 			//070E 	1021
		BSR 	1DH, 2H 			//070F 	251D

		//;init.c: 170: _nop();
		NOP 					//0710 	1000

		//;init.c: 171: _nop();
		NOP 					//0711 	1000

		//;init.c: 172: while(GO);
		MOVLB 	1H 			//0712 	1021
		BTSC 	1DH, 1H 		//0713 	289D
		LJUMP 	712H 			//0714 	3F12
		ORG		0715H

		//;init.c: 173: ADEX = 0;
		BCR 	1DH, 2H 			//0715 	211D

		//;init.c: 175: return (unsigned int)(ADRESH<<8|ADRESL);
		LDR 	1CH, 0H 			//0716 	181C
		STR 	73H 			//0717 	10F3
		CLRF 	72H 			//0718 	11F2
		LDR 	1BH, 0H 			//0719 	181B
		IORWR 	72H, 1H 		//071A 	14F2
		RET 					//071B 	1008
		STR 	70H 			//071C 	10F0
		ORG		071DH

		//;delay.c: 11: unsigned char a;
		//;delay.c: 12: for(a=0;a<Time;a++)
		CLRF 	71H 			//071D 	11F1
		LDR 	70H, 0H 			//071E 	1870
		SUBWR 	71H, 0H 		//071F 	1271
		BTSC 	3H, 0H 			//0720 	2803
		RET 					//0721 	1008

		//;delay.c: 13: {
		//;delay.c: 14: _nop();
		NOP 					//0722 	1000
		INCR 	71H, 1H 		//0723 	1AF1
		LJUMP 	71EH 			//0724 	3F1E
		ORG		0725H
		STR 	75H 			//0725 	10F5

		//;delay.c: 42: unsigned char a,b;
		//;delay.c: 43: for(a=0;a<Time;a++)
		CLRF 	76H 			//0726 	11F6
		LDR 	75H, 0H 			//0727 	1875
		SUBWR 	76H, 0H 		//0728 	1276
		BTSC 	3H, 0H 			//0729 	2803
		RET 					//072A 	1008

		//;delay.c: 44: {
		//;delay.c: 45: for(b=0;b<10;b++)
		CLRF 	77H 			//072B 	11F7

		//;delay.c: 46: {
		//;delay.c: 47: DelayMs(100);
		LDWI 	64H 			//072C 	0064
		ORG		072DH
		LCALL 	6F1H 			//072D 	36F1
		MOVLP 	4H 			//072E 	0184
		LDWI 	AH 			//072F 	000A
		INCR 	77H, 1H 		//0730 	1AF7
		SUBWR 	77H, 0H 		//0731 	1277
		BTSS 	3H, 0H 			//0732 	2C03
		LJUMP 	72CH 			//0733 	3F2C
		INCR 	76H, 1H 		//0734 	1AF6
		ORG		0735H
		LJUMP 	727H 			//0735 	3F27

		//;init.c: 12: OSCCON = 0B01110001;
		LDWI 	71H 			//0736 	0071
		MOVLB 	1H 			//0737 	1021
		STR 	19H 			//0738 	1099

		//;init.c: 15: INTCON = 0;
		CLRF 	BH 			//0739 	118B

		//;init.c: 17: PORTA = 0B00000000;
		MOVLB 	0H 			//073A 	1020
		CLRF 	CH 			//073B 	118C

		//;init.c: 18: TRISA = 0B11111110;
		LDWI 	FEH 			//073C 	00FE
		ORG		073DH
		MOVLB 	1H 			//073D 	1021
		STR 	CH 			//073E 	108C

		//;init.c: 19: PORTB = 0B00000000;
		MOVLB 	0H 			//073F 	1020
		CLRF 	DH 			//0740 	118D

		//;init.c: 20: TRISB = 0B11110111;
		LDWI 	F7H 			//0741 	00F7
		MOVLB 	1H 			//0742 	1021
		STR 	DH 			//0743 	108D

		//;init.c: 21: PORTC = 0B00000000;
		MOVLB 	0H 			//0744 	1020
		ORG		0745H
		CLRF 	EH 			//0745 	118E

		//;init.c: 22: TRISC = 0B10001111;
		LDWI 	8FH 			//0746 	008F
		MOVLB 	1H 			//0747 	1021
		STR 	EH 			//0748 	108E

		//;init.c: 23: PORTD = 0B00000000;
		MOVLB 	0H 			//0749 	1020
		CLRF 	FH 			//074A 	118F

		//;init.c: 24: TRISD = 0B11111001;
		LDWI 	F9H 			//074B 	00F9
		MOVLB 	1H 			//074C 	1021
		ORG		074DH
		STR 	FH 			//074D 	108F

		//;init.c: 26: WPUA = 0B00000000;
		MOVLB 	3H 			//074E 	1023
		CLRF 	CH 			//074F 	118C

		//;init.c: 27: WPUB = 0B00011000;
		LDWI 	18H 			//0750 	0018
		STR 	DH 			//0751 	108D

		//;init.c: 28: WPUC = 0B01110000;
		LDWI 	70H 			//0752 	0070
		STR 	EH 			//0753 	108E

		//;init.c: 29: WPUD = 0B00000110;
		LDWI 	6H 			//0754 	0006
		ORG		0755H
		STR 	FH 			//0755 	108F

		//;init.c: 31: WPDA = 0B00000001;
		LDWI 	1H 			//0756 	0001
		MOVLB 	4H 			//0757 	1024
		STR 	CH 			//0758 	108C

		//;init.c: 32: WPDB = 0B00000000;
		CLRF 	DH 			//0759 	118D

		//;init.c: 33: WPDC = 0B00000000;
		CLRF 	EH 			//075A 	118E

		//;init.c: 34: WPDD = 0B00000000;
		CLRF 	FH 			//075B 	118F

		//;init.c: 36: PSRC0 = 0B11111111;
		LDWI 	FFH 			//075C 	00FF
		ORG		075DH
		MOVLB 	2H 			//075D 	1022
		STR 	1AH 			//075E 	109A

		//;init.c: 40: PSRC1 = 0B11111111;
		STR 	1BH 			//075F 	109B

		//;init.c: 44: PSINK0 = 0B11111111;
		MOVLB 	3H 			//0760 	1023
		STR 	1AH 			//0761 	109A

		//;init.c: 45: PSINK1 = 0B11111111;
		STR 	1BH 			//0762 	109B

		//;init.c: 46: PSINK2 = 0B11111111;
		STR 	1CH 			//0763 	109C

		//;init.c: 47: PSINK3 = 0B11111111;
		STR 	1DH 			//0764 	109D
		ORG		0765H

		//;init.c: 49: ANSELA = 0B00000111;
		LDWI 	7H 			//0765 	0007
		STR 	17H 			//0766 	1097

		//;init.c: 51: RA0 = 0;
		MOVLB 	0H 			//0767 	1020
		BCR 	CH, 0H 			//0768 	200C

		//;init.c: 52: RC4 = RB3 = 0;
		BCR 	DH, 3H 			//0769 	218D
		BCR 	EH, 4H 			//076A 	220E

		//;init.c: 53: RC5 = 0;RC6 = 0;
		BCR 	EH, 5H 			//076B 	228E
		BCR 	EH, 6H 			//076C 	230E
		ORG		076DH
		RET 					//076D 	1008

		//;init.c: 83: PCKEN |=0B00000010;
		MOVLB 	1H 			//076E 	1021
		BSR 	1AH, 1H 			//076F 	249A

		//;init.c: 85: AFP0 = 0B01000000;
		LDWI 	40H 			//0770 	0040
		MOVLB 	3H 			//0771 	1023
		STR 	1EH 			//0772 	109E

		//;init.c: 86: AFP1 = 0B00000001;
		LDWI 	1H 			//0773 	0001
		STR 	1FH 			//0774 	109F
		ORG		0775H

		//;init.c: 87: AFP2 = 0B00000000;
		MOVLB 	2H 			//0775 	1022
		CLRF 	1DH 			//0776 	119D

		//;init.c: 89: CKOCON=0B00100000;
		LDWI 	20H 			//0777 	0020
		MOVLB 	1H 			//0778 	1021
		STR 	15H 			//0779 	1095

		//;init.c: 90: TCKSRC=0B00000011;
		LDWI 	3H 			//077A 	0003
		MOVLB 	6H 			//077B 	1026
		STR 	1FH 			//077C 	109F
		ORG		077DH

		//;init.c: 92: TIM1CR1 =0B10000101;
		LDWI 	85H 			//077D 	0085
		MOVLB 	4H 			//077E 	1024
		STR 	11H 			//077F 	1091

		//;init.c: 93: TIM1SMCR=0B00000000;
		CLRF 	13H 			//0780 	1193

		//;init.c: 95: TIM1IER =0B00000000;
		CLRF 	15H 			//0781 	1195

		//;init.c: 96: TIM1SR1 =0B00000000;
		CLRF 	16H 			//0782 	1196

		//;init.c: 97: TIM1SR2 =0B00000000;
		CLRF 	17H 			//0783 	1197

		//;init.c: 98: TIM1EGR =0B00000000;
		CLRF 	18H 			//0784 	1198
		ORG		0785H

		//;init.c: 99: TIM1CCMR1 =0B01101000;
		LDWI 	68H 			//0785 	0068
		STR 	19H 			//0786 	1099

		//;init.c: 100: TIM1CCMR2 =0B01101000;
		STR 	1AH 			//0787 	109A

		//;init.c: 101: TIM1CCMR3 =0B00000000;
		CLRF 	1BH 			//0788 	119B

		//;init.c: 102: TIM1CCMR4 =0B00000000;
		CLRF 	1CH 			//0789 	119C

		//;init.c: 104: TIM1CCER1 =0B00010001;
		LDWI 	11H 			//078A 	0011
		STR 	1DH 			//078B 	109D

		//;init.c: 105: TIM1CCER2 =0B00000000;
		CLRF 	1EH 			//078C 	119E
		ORG		078DH

		//;init.c: 107: TIM1CNTRH =0B00000000;
		MOVLB 	5H 			//078D 	1025
		CLRF 	CH 			//078E 	118C

		//;init.c: 108: TIM1CNTRL =0B00000000;
		CLRF 	DH 			//078F 	118D

		//;init.c: 110: TIM1PSCRH =0B00000000;
		CLRF 	EH 			//0790 	118E

		//;init.c: 111: TIM1PSCRL =0B00000000;
		CLRF 	FH 			//0791 	118F

		//;init.c: 113: TIM1ARRH =0x03;
		LDWI 	3H 			//0792 	0003
		STR 	10H 			//0793 	1090

		//;init.c: 114: TIM1ARRL =0xe8;
		LDWI 	E8H 			//0794 	00E8
		ORG		0795H
		STR 	11H 			//0795 	1091

		//;init.c: 116: TIM1RCR =0B00001111;
		LDWI 	FH 			//0796 	000F
		STR 	12H 			//0797 	1092

		//;init.c: 118: TIM1CCR1H =pwmu/256;
		MOVLB 	0H 			//0798 	1020
		LDR 	6CH, 0H 			//0799 	186C

		//;init.c: 119: TIM1CCR1L =pwmu%256;
		LCALL 	7F3H 			//079A 	37F3

		//;init.c: 121: TIM1CCR2H =pwmi/256;
		LDR 	7CH, 0H 			//079B 	187C
		STR 	15H 			//079C 	1095
		ORG		079DH

		//;init.c: 122: TIM1CCR2L =pwmi%256;
		LDR 	7BH, 0H 			//079D 	187B
		STR 	16H 			//079E 	1096

		//;init.c: 124: TIM1BKR =0B11000000;
		LDWI 	C0H 			//079F 	00C0
		STR 	1BH 			//07A0 	109B

		//;init.c: 125: TIM1DTR =0B00000000;
		CLRF 	1CH 			//07A1 	119C

		//;init.c: 126: TIM1OISR =0B00000000;
		CLRF 	1DH 			//07A2 	119D

		//;init.c: 128: LEBCON =0B10000000;
		LDWI 	80H 			//07A3 	0080
		MOVLB 	8H 			//07A4 	1028
		ORG		07A5H
		STR 	1CH 			//07A5 	109C
		RET 					//07A6 	1008

		//;init.c: 58: TRISA0 = 1;
		MOVLB 	1H 			//07A7 	1021
		BSR 	CH, 0H 			//07A8 	240C

		//;init.c: 59: EPS0 = 0B00000000;
		MOVLB 	2H 			//07A9 	1022
		CLRF 	18H 			//07AA 	1198

		//;init.c: 60: EPS1 = 0B00000000;
		CLRF 	19H 			//07AB 	1199

		//;init.c: 61: ITYPE0 = 0B00000011;
		LDWI 	3H 			//07AC 	0003
		ORG		07ADH
		STR 	1EH 			//07AD 	109E

		//;init.c: 62: ITYPE1 = 0B00000000;
		CLRF 	1FH 			//07AE 	119F

		//;init.c: 63: EPIE0 = 0B00000001;
		LDWI 	1H 			//07AF 	0001
		MOVLB 	1H 			//07B0 	1021
		STR 	14H 			//07B1 	1094

		//;init.c: 64: EPIF0 = 0xFF;
		LDWI 	FFH 			//07B2 	00FF
		MOVLB 	0H 			//07B3 	1020
		STR 	14H 			//07B4 	1094
		ORG		07B5H

		//;init.c: 65: PEIE = 1;
		BSR 	BH, 6H 			//07B5 	270B

		//;init.c: 66: GIE = 1;
		BSR 	BH, 7H 			//07B6 	278B
		RET 					//07B7 	1008

		//;init.c: 70: TRISA0 = 0;
		MOVLB 	1H 			//07B8 	1021
		BCR 	CH, 0H 			//07B9 	200C

		//;init.c: 71: PEIE = 0;
		BCR 	BH, 6H 			//07BA 	230B

		//;init.c: 72: RA0 = 0;
		MOVLB 	0H 			//07BB 	1020
		BCR 	CH, 0H 			//07BC 	200C
		ORG		07BDH
		RET 					//07BD 	1008

		//;init.c: 138: PCKEN |=0B00000001;
		MOVLB 	1H 			//07BE 	1021
		BSR 	1AH, 0H 			//07BF 	241A

		//;init.c: 139: ANSELA = 0B00000111;
		LDWI 	7H 			//07C0 	0007
		MOVLB 	3H 			//07C1 	1023
		STR 	17H 			//07C2 	1097

		//;init.c: 141: ADCON1 = 0B10100100;
		LDWI 	A4H 			//07C3 	00A4
		MOVLB 	1H 			//07C4 	1021
		ORG		07C5H
		STR 	1EH 			//07C5 	109E

		//;init.c: 142: ADCON0 = 0B00000000;
		CLRF 	1DH 			//07C6 	119D

		//;init.c: 143: ADCON2 = 0B10010000;
		LDWI 	90H 			//07C7 	0090
		STR 	1FH 			//07C8 	109F

		//;init.c: 144: ADCON3 = 0B00000100;
		LDWI 	4H 			//07C9 	0004
		MOVLB 	8H 			//07CA 	1028
		STR 	1AH 			//07CB 	109A

		//;init.c: 146: ADDLY = 0X0B;
		LDWI 	BH 			//07CC 	000B
		ORG		07CDH
		MOVLB 	0H 			//07CD 	1020
		STR 	1FH 			//07CE 	109F

		//;init.c: 148: ADCMPH = 0B00000000;
		MOVLB 	8H 			//07CF 	1028
		CLRF 	1BH 			//07D0 	119B

		//;init.c: 150: ADCAL=1;
		MOVLB 	1H 			//07D1 	1021
		BSR 	1DH, 3H 			//07D2 	259D

		//;init.c: 151: _nop();
		NOP 					//07D3 	1000

		//;init.c: 152: while(ADCAL);
		MOVLB 	1H 			//07D4 	1021
		ORG		07D5H
		BTSC 	1DH, 3H 		//07D5 	299D
		LJUMP 	7D4H 			//07D6 	3FD4

		//;init.c: 154: ADON=1;
		BSR 	1DH, 0H 			//07D7 	241D
		RET 					//07D8 	1008
		STR 	6H 			//07D9 	1086
		LDR 	77H, 0H 			//07DA 	1877
		MOVWI 	40H[1] 		//07DB 	0FC0
		LDR 	78H, 0H 			//07DC 	1878
		ORG		07DDH
		MOVWI 	41H[1] 		//07DD 	0FC1
		LSLF 	69H, 0H 		//07DE 	0569
		RET 					//07DF 	1008
		STR 	6H 			//07E0 	1086
		MOVIW 	0H[1] 			//07E1 	0F40
		STR 	77H 			//07E2 	10F7
		MOVIW 	1H[1] 			//07E3 	0F41
		STR 	78H 			//07E4 	10F8
		ORG		07E5H
		LSLF 	69H, 0H 		//07E5 	0569
		RET 					//07E6 	1008
		LDR 	7CH, 0H 			//07E7 	187C
		MOVLB 	5H 			//07E8 	1025
		STR 	15H 			//07E9 	1095
		LDR 	7BH, 0H 			//07EA 	187B
		STR 	16H 			//07EB 	1096
		RET 					//07EC 	1008
		ORG		07EDH
		MOVIW 	0H[1] 			//07ED 	0F40
		STR 	77H 			//07EE 	10F7
		MOVIW 	1H[1] 			//07EF 	0F41
		STR 	78H 			//07F0 	10F8
		LDR 	77H, 0H 			//07F1 	1877
		RET 					//07F2 	1008
		MOVLB 	5H 			//07F3 	1025
		STR 	13H 			//07F4 	1093
		ORG		07F5H
		MOVLB 	0H 			//07F5 	1020
		LDR 	6BH, 0H 			//07F6 	186B
		MOVLB 	5H 			//07F7 	1025
		STR 	14H 			//07F8 	1094
		RET 					//07F9 	1008
		INCR 	69H, 1H 		//07FA 	1AE9
		BTSC 	3H, 2H 			//07FB 	2903
		INCR 	6AH, 1H 		//07FC 	1AEA
		ORG		07FDH
		LDWI 	0H 			//07FD 	0000
		SUBWR 	6AH, 0H 		//07FE 	126A
		RET 					//07FF 	1008
			END
