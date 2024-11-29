opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F1938
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_POWER_INITIAL
	FNCALL	_main,_Time1Initial
	FNCALL	_main,_ADC_INITIAL
	FNCALL	_main,_adc_run
	FNCALL	_main,_DelayMs
	FNCALL	_main,_DelayS
	FNCALL	_main,_led_run
	FNCALL	_led_run,_BO_IN_OUT
	FNCALL	_led_run,_DelayMs
	FNCALL	_led_run,_BO_IN_MO
	FNCALL	_DelayS,_DelayMs
	FNCALL	_adc_run,_GET_ADC_DATA
	FNCALL	_adc_run,_DelayMs
	FNCALL	_adc_run,___lwdiv
	FNCALL	_GET_ADC_DATA,_DelayUs
	FNCALL	_DelayMs,_DelayUs
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_pwmu
	global	_pwmi
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"cd.C"
	line	15

;initializer for _pwmu
	retlw	020h
	retlw	03h


;initializer for _pwmi
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	retlw	022h
	retlw	0

	global	_ad3nop
	global	_ad3nop_absaddr
_ad3nop_absaddr	set	0x3
	global	_ad3nop
	global	_ad3nop_absaddr
_ad3nop_absaddr	set	0x3
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
psect	_ad3nop_text,class=CODE,delta=2
global __p_ad3nop_text
__p_ad3nop_text:
psect	strings
psect	_ad3nop_text
_ad3nop:
psect	strings
psect	_ad3nop_text
psect	strings
psect	_ad3nop_text
	retlw	0
	global	_adc0
	global	_adc1
	global	_acerjs
	global	_dci
	global	_dcu
	global	_gljs
	global	_ledjs
	global	_theVoltage1
	global	_theVoltage2
	global	_theVoltage3
	global	_upsd
	global	_wd
	global	_wderjs
	global	_acerr_st
	global	_dcfj_st
	global	_dcmax_st
	global	_dczxjs
	global	_wderr_st
	global	_gl_st
	global	_adc2
	global	_adc3
	global	_adc4
	global	_ADDLY
psect	strings
psect	_ad3nop_text
_ADDLY	set	31
	global	_EPIF0
psect	strings
psect	_ad3nop_text
_EPIF0	set	20
	global	_INTCON
psect	strings
psect	_ad3nop_text
_INTCON	set	11
	global	_PORTA
psect	strings
psect	_ad3nop_text
_PORTA	set	12
	global	_PORTB
psect	strings
psect	_ad3nop_text
_PORTB	set	13
	global	_PORTC
psect	strings
psect	_ad3nop_text
_PORTC	set	14
	global	_PORTD
psect	strings
psect	_ad3nop_text
_PORTD	set	15
	global	_GIE
psect	strings
psect	_ad3nop_text
_GIE	set	95
	global	_PEIE
psect	strings
psect	_ad3nop_text
_PEIE	set	94
	global	_RA0
psect	strings
psect	_ad3nop_text
_RA0	set	96
	global	_RB2
psect	strings
psect	_ad3nop_text
_RB2	set	106
	global	_RB3
psect	strings
psect	_ad3nop_text
_RB3	set	107
	global	_RC4
psect	strings
psect	_ad3nop_text
_RC4	set	116
	global	_RC5
psect	strings
psect	_ad3nop_text
_RC5	set	117
	global	_RC6
psect	strings
psect	_ad3nop_text
_RC6	set	118
	global	_ADCON0
psect	strings
psect	_ad3nop_text
_ADCON0	set	157
	global	_ADCON1
psect	strings
psect	_ad3nop_text
_ADCON1	set	158
	global	_ADCON2
psect	strings
psect	_ad3nop_text
_ADCON2	set	159
	global	_ADRESH
psect	strings
psect	_ad3nop_text
_ADRESH	set	156
	global	_ADRESL
psect	strings
psect	_ad3nop_text
_ADRESL	set	155
	global	_CKOCON
psect	strings
psect	_ad3nop_text
_CKOCON	set	149
	global	_EPIE0
psect	strings
psect	_ad3nop_text
_EPIE0	set	148
	global	_OSCCON
psect	strings
psect	_ad3nop_text
_OSCCON	set	153
	global	_PCKEN
psect	strings
psect	_ad3nop_text
_PCKEN	set	154
	global	_TRISA
psect	strings
psect	_ad3nop_text
_TRISA	set	140
	global	_TRISB
psect	strings
psect	_ad3nop_text
_TRISB	set	141
	global	_TRISC
psect	strings
psect	_ad3nop_text
_TRISC	set	142
	global	_TRISD
psect	strings
psect	_ad3nop_text
_TRISD	set	143
	global	_ADCAL
psect	strings
psect	_ad3nop_text
_ADCAL	set	1259
	global	_ADEX
psect	strings
psect	_ad3nop_text
_ADEX	set	1258
	global	_ADON
psect	strings
psect	_ad3nop_text
_ADON	set	1256
	global	_GO
psect	strings
psect	_ad3nop_text
_GO	set	1257
	global	_TRISA0
psect	strings
psect	_ad3nop_text
_TRISA0	set	1120
	global	_AFP2
psect	strings
psect	_ad3nop_text
_AFP2	set	285
	global	_EPS0
psect	strings
psect	_ad3nop_text
_EPS0	set	280
	global	_EPS1
psect	strings
psect	_ad3nop_text
_EPS1	set	281
	global	_ITYPE0
psect	strings
psect	_ad3nop_text
_ITYPE0	set	286
	global	_ITYPE1
psect	strings
psect	_ad3nop_text
_ITYPE1	set	287
	global	_PSRC0
psect	strings
psect	_ad3nop_text
_PSRC0	set	282
	global	_PSRC1
psect	strings
psect	_ad3nop_text
_PSRC1	set	283
	global	_AFP0
psect	strings
psect	_ad3nop_text
_AFP0	set	414
	global	_AFP1
psect	strings
psect	_ad3nop_text
_AFP1	set	415
	global	_ANSELA
psect	strings
psect	_ad3nop_text
_ANSELA	set	407
	global	_PSINK0
psect	strings
psect	_ad3nop_text
_PSINK0	set	410
	global	_PSINK1
psect	strings
psect	_ad3nop_text
_PSINK1	set	411
	global	_PSINK2
psect	strings
psect	_ad3nop_text
_PSINK2	set	412
	global	_PSINK3
psect	strings
psect	_ad3nop_text
_PSINK3	set	413
	global	_WPUA
psect	strings
psect	_ad3nop_text
_WPUA	set	396
	global	_WPUB
psect	strings
psect	_ad3nop_text
_WPUB	set	397
	global	_WPUC
psect	strings
psect	_ad3nop_text
_WPUC	set	398
	global	_WPUD
psect	strings
psect	_ad3nop_text
_WPUD	set	399
	global	_TIM1CCER1
psect	strings
psect	_ad3nop_text
_TIM1CCER1	set	541
	global	_TIM1CCER2
psect	strings
psect	_ad3nop_text
_TIM1CCER2	set	542
	global	_TIM1CCMR1
psect	strings
psect	_ad3nop_text
_TIM1CCMR1	set	537
	global	_TIM1CCMR2
psect	strings
psect	_ad3nop_text
_TIM1CCMR2	set	538
	global	_TIM1CCMR3
psect	strings
psect	_ad3nop_text
_TIM1CCMR3	set	539
	global	_TIM1CCMR4
psect	strings
psect	_ad3nop_text
_TIM1CCMR4	set	540
	global	_TIM1CR1
psect	strings
psect	_ad3nop_text
_TIM1CR1	set	529
	global	_TIM1EGR
psect	strings
psect	_ad3nop_text
_TIM1EGR	set	536
	global	_TIM1IER
psect	strings
psect	_ad3nop_text
_TIM1IER	set	533
	global	_TIM1SMCR
psect	strings
psect	_ad3nop_text
_TIM1SMCR	set	531
	global	_TIM1SR1
psect	strings
psect	_ad3nop_text
_TIM1SR1	set	534
	global	_TIM1SR2
psect	strings
psect	_ad3nop_text
_TIM1SR2	set	535
	global	_WPDA
psect	strings
psect	_ad3nop_text
_WPDA	set	524
	global	_WPDB
psect	strings
psect	_ad3nop_text
_WPDB	set	525
	global	_WPDC
psect	strings
psect	_ad3nop_text
_WPDC	set	526
	global	_WPDD
psect	strings
psect	_ad3nop_text
_WPDD	set	527
	global	_TIM1ARRH
psect	strings
psect	_ad3nop_text
_TIM1ARRH	set	656
	global	_TIM1ARRL
psect	strings
psect	_ad3nop_text
_TIM1ARRL	set	657
	global	_TIM1BKR
psect	strings
psect	_ad3nop_text
_TIM1BKR	set	667
	global	_TIM1CCR1H
psect	strings
psect	_ad3nop_text
_TIM1CCR1H	set	659
	global	_TIM1CCR1L
psect	strings
psect	_ad3nop_text
_TIM1CCR1L	set	660
	global	_TIM1CCR2H
psect	strings
psect	_ad3nop_text
_TIM1CCR2H	set	661
	global	_TIM1CCR2L
psect	strings
psect	_ad3nop_text
_TIM1CCR2L	set	662
	global	_TIM1CNTRH
psect	strings
psect	_ad3nop_text
_TIM1CNTRH	set	652
	global	_TIM1CNTRL
psect	strings
psect	_ad3nop_text
_TIM1CNTRL	set	653
	global	_TIM1DTR
psect	strings
psect	_ad3nop_text
_TIM1DTR	set	668
	global	_TIM1OISR
psect	strings
psect	_ad3nop_text
_TIM1OISR	set	669
	global	_TIM1PSCRH
psect	strings
psect	_ad3nop_text
_TIM1PSCRH	set	654
	global	_TIM1PSCRL
psect	strings
psect	_ad3nop_text
_TIM1PSCRL	set	655
	global	_TIM1RCR
psect	strings
psect	_ad3nop_text
_TIM1RCR	set	658
	global	_TCKSRC
psect	strings
psect	_ad3nop_text
_TCKSRC	set	799
	global	_ADCMPH
psect	strings
psect	_ad3nop_text
_ADCMPH	set	1051
	global	_ADCON3
psect	strings
psect	_ad3nop_text
_ADCON3	set	1050
	global	_LEBCON
psect	strings
psect	_ad3nop_text
_LEBCON	set	1052
	global	_LEBADT
psect	strings
psect	_ad3nop_text
_LEBADT	set	8403
psect	strings
psect	_ad3nop_text
psect	strings
psect	_ad3nop_text
	file	"cd.as"
psect	strings
psect	_ad3nop_text
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_gl_st:
       ds      1

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"cd.C"
_pwmi:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_adc0:
       ds      20

_adc1:
       ds      20

_acerjs:
       ds      2

_dci:
       ds      2

_dcu:
       ds      2

_gljs:
       ds      2

_ledjs:
       ds      2

_theVoltage1:
       ds      2

_theVoltage2:
       ds      2

_theVoltage3:
       ds      2

_upsd:
       ds      2

_wd:
       ds      2

_wderjs:
       ds      2

_acerr_st:
       ds      1

_dcfj_st:
       ds      1

_dcmax_st:
       ds      1

_dczxjs:
       ds      1

_wderr_st:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"cd.C"
_pwmu:
       ds      2

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_adc2:
       ds      20

_adc3:
       ds      20

_adc4:
       ds      20

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR0 containing the base address, and
;	WREG with the size to clear
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	decfsz wreg		;Have we reached the end of clearing yet?
	goto clrloop	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	043h
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	03Ch
	fcall	clear_ram
; Initialize objects allocated to COMMON
	global __pidataCOMMON,__pdataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
; Initialize objects allocated to BANK0
	global __pidataBANK0,__pdataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_POWER_INITIAL
?_POWER_INITIAL:	; 0 bytes @ 0x0
	global	??_POWER_INITIAL
??_POWER_INITIAL:	; 0 bytes @ 0x0
	global	?_Time1Initial
?_Time1Initial:	; 0 bytes @ 0x0
	global	??_Time1Initial
??_Time1Initial:	; 0 bytes @ 0x0
	global	?_ADC_INITIAL
?_ADC_INITIAL:	; 0 bytes @ 0x0
	global	??_ADC_INITIAL
??_ADC_INITIAL:	; 0 bytes @ 0x0
	global	?_adc_run
?_adc_run:	; 0 bytes @ 0x0
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0x0
	global	?_DelayS
?_DelayS:	; 0 bytes @ 0x0
	global	?_led_run
?_led_run:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_DelayUs
?_DelayUs:	; 0 bytes @ 0x0
	global	??_DelayUs
??_DelayUs:	; 0 bytes @ 0x0
	global	?_BO_IN_MO
?_BO_IN_MO:	; 0 bytes @ 0x0
	global	??_BO_IN_MO
??_BO_IN_MO:	; 0 bytes @ 0x0
	global	?_BO_IN_OUT
?_BO_IN_OUT:	; 0 bytes @ 0x0
	global	??_BO_IN_OUT
??_BO_IN_OUT:	; 0 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	DelayUs@Time
DelayUs@Time:	; 1 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	DelayUs@a
DelayUs@a:	; 1 bytes @ 0x1
	ds	1
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x2
	global	?_GET_ADC_DATA
?_GET_ADC_DATA:	; 2 bytes @ 0x2
	global	DelayMs@Time
DelayMs@Time:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	DelayMs@a
DelayMs@a:	; 1 bytes @ 0x3
	ds	1
	global	??_GET_ADC_DATA
??_GET_ADC_DATA:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	DelayMs@b
DelayMs@b:	; 1 bytes @ 0x4
	global	GET_ADC_DATA@adcChannel
GET_ADC_DATA@adcChannel:	; 1 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds	1
	global	??_DelayS
??_DelayS:	; 0 bytes @ 0x5
	global	??_led_run
??_led_run:	; 0 bytes @ 0x5
	global	DelayS@Time
DelayS@Time:	; 1 bytes @ 0x5
	ds	1
	global	DelayS@a
DelayS@a:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	ds	1
	global	??_adc_run
??_adc_run:	; 0 bytes @ 0x7
	global	DelayS@b
DelayS@b:	; 1 bytes @ 0x7
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x9
	global	main@i
main@i:	; 2 bytes @ 0x9
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	adc_run@adz0
adc_run@adz0:	; 2 bytes @ 0x0
	ds	2
	global	adc_run@adz1
adc_run@adz1:	; 2 bytes @ 0x2
	ds	2
	global	adc_run@adz2
adc_run@adz2:	; 2 bytes @ 0x4
	ds	2
	global	adc_run@i
adc_run@i:	; 2 bytes @ 0x6
	ds	2
;;Data sizes: Strings 0, constant 0, data 4, bss 128, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      14
;; BANK0           80      8      77
;; BANK1           80      0      60
;; BANK2           80      0       0
;; BANK3           80      0       0
;; BANK4           80      0       0
;; BANK5           80      0       0
;; BANK6           80      0       0
;; BANK7           80      0       0
;; BANK8           80      0       0
;; BANK9           80      0       0
;; BANK10          80      0       0
;; BANK11          80      0       0
;; BANK12          48      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?_GET_ADC_DATA	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_adc_run
;;   _led_run->_DelayMs
;;   _DelayS->_DelayMs
;;   _adc_run->___lwdiv
;;   _GET_ADC_DATA->_DelayUs
;;   _DelayMs->_DelayUs
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_adc_run
;;
;; Critical Paths under _ISR in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK2
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK4
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK4
;;
;;   None.
;;
;; Critical Paths under _main in BANK5
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK5
;;
;;   None.
;;
;; Critical Paths under _main in BANK6
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK6
;;
;;   None.
;;
;; Critical Paths under _main in BANK7
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK7
;;
;;   None.
;;
;; Critical Paths under _main in BANK8
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK8
;;
;;   None.
;;
;; Critical Paths under _main in BANK9
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK9
;;
;;   None.
;;
;; Critical Paths under _main in BANK10
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK10
;;
;;   None.
;;
;; Critical Paths under _main in BANK11
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK11
;;
;;   None.
;;
;; Critical Paths under _main in BANK12
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK12
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0    1391
;;                                              9 COMMON     2     2      0
;;                      _POWER_INITIAL
;;                       _Time1Initial
;;                        _ADC_INITIAL
;;                            _adc_run
;;                            _DelayMs
;;                             _DelayS
;;                            _led_run
;; ---------------------------------------------------------------------------------
;; (1) _led_run                                              0     0      0     138
;;                          _BO_IN_OUT
;;                            _DelayMs
;;                           _BO_IN_MO
;; ---------------------------------------------------------------------------------
;; (1) _DelayS                                               3     3      0     230
;;                                              5 COMMON     3     3      0
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _adc_run                                             10    10      0     839
;;                                              7 COMMON     2     2      0
;;                                              0 BANK0      8     8      0
;;                       _GET_ADC_DATA
;;                            _DelayMs
;;                            ___lwdiv
;; ---------------------------------------------------------------------------------
;; (2) _GET_ADC_DATA                                         3     1      2      68
;;                                              2 COMMON     3     1      2
;;                            _DelayUs
;; ---------------------------------------------------------------------------------
;; (2) _DelayMs                                              3     3      0     138
;;                                              2 COMMON     3     3      0
;;                            _DelayUs
;; ---------------------------------------------------------------------------------
;; (3) _DelayUs                                              2     2      0      46
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _ADC_INITIAL                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              7     3      4     162
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) _BO_IN_OUT                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _BO_IN_MO                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Time1Initial                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _POWER_INITIAL                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _ISR                                                  0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _POWER_INITIAL
;;   _Time1Initial
;;   _ADC_INITIAL
;;   _adc_run
;;     _GET_ADC_DATA
;;       _DelayUs
;;     _DelayMs
;;       _DelayUs
;;     ___lwdiv
;;   _DelayMs
;;     _DelayUs
;;   _DelayS
;;     _DelayMs
;;       _DelayUs
;;   _led_run
;;     _BO_IN_OUT
;;     _DelayMs
;;       _DelayUs
;;     _BO_IN_MO
;;
;; _ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BIGRAM             3F0      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;BITCOMMON            E      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;COMMON               E      B       E       2      100.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0       3       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      8      4D       5       96.3%
;;BITSFR4              0      0       0       5        0.0%
;;SFR4                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BITSFR5              0      0       0       6        0.0%
;;SFR5                 0      0       0       6        0.0%
;;BANK1               50      0      3C       7       75.0%
;;BITSFR6              0      0       0       7        0.0%
;;SFR6                 0      0       0       7        0.0%
;;BITBANK2            50      0       0       8        0.0%
;;BITSFR7              0      0       0       8        0.0%
;;SFR7                 0      0       0       8        0.0%
;;BANK2               50      0       0       9        0.0%
;;BITSFR8              0      0       0       9        0.0%
;;SFR8                 0      0       0       9        0.0%
;;BITBANK3            50      0       0      10        0.0%
;;BITSFR9              0      0       0      10        0.0%
;;SFR9                 0      0       0      10        0.0%
;;BANK3               50      0       0      11        0.0%
;;BITSFR10             0      0       0      11        0.0%
;;SFR10                0      0       0      11        0.0%
;;BITBANK4            50      0       0      12        0.0%
;;BITSFR11             0      0       0      12        0.0%
;;SFR11                0      0       0      12        0.0%
;;BANK4               50      0       0      13        0.0%
;;BITSFR12             0      0       0      13        0.0%
;;SFR12                0      0       0      13        0.0%
;;BITBANK5            50      0       0      14        0.0%
;;BITSFR13             0      0       0      14        0.0%
;;SFR13                0      0       0      14        0.0%
;;BANK5               50      0       0      15        0.0%
;;BITSFR14             0      0       0      15        0.0%
;;SFR14                0      0       0      15        0.0%
;;BITBANK6            50      0       0      16        0.0%
;;BITSFR15             0      0       0      16        0.0%
;;SFR15                0      0       0      16        0.0%
;;BANK6               50      0       0      17        0.0%
;;BITSFR16             0      0       0      17        0.0%
;;SFR16                0      0       0      17        0.0%
;;BITBANK7            50      0       0      18        0.0%
;;BITSFR17             0      0       0      18        0.0%
;;SFR17                0      0       0      18        0.0%
;;BANK7               50      0       0      19        0.0%
;;BITSFR18             0      0       0      19        0.0%
;;SFR18                0      0       0      19        0.0%
;;BITSFR19             0      0       0      20        0.0%
;;SFR19                0      0       0      20        0.0%
;;ABS                  0      0      97      20        0.0%
;;BITBANK8            50      0       0      21        0.0%
;;BITSFR20             0      0       0      21        0.0%
;;SFR20                0      0       0      21        0.0%
;;BANK8               50      0       0      22        0.0%
;;BITSFR21             0      0       0      22        0.0%
;;SFR21                0      0       0      22        0.0%
;;BITBANK9            50      0       0      23        0.0%
;;BITSFR22             0      0       0      23        0.0%
;;SFR22                0      0       0      23        0.0%
;;BANK9               50      0       0      24        0.0%
;;BITSFR23             0      0       0      24        0.0%
;;SFR23                0      0       0      24        0.0%
;;BITBANK10           50      0       0      25        0.0%
;;BITSFR24             0      0       0      25        0.0%
;;SFR24                0      0       0      25        0.0%
;;BANK10              50      0       0      26        0.0%
;;BITSFR25             0      0       0      26        0.0%
;;SFR25                0      0       0      26        0.0%
;;BITBANK11           50      0       0      27        0.0%
;;BITSFR26             0      0       0      27        0.0%
;;SFR26                0      0       0      27        0.0%
;;BANK11              50      0       0      28        0.0%
;;BITSFR27             0      0       0      28        0.0%
;;SFR27                0      0       0      28        0.0%
;;BITBANK12           30      0       0      29        0.0%
;;BITSFR28             0      0       0      29        0.0%
;;SFR28                0      0       0      29        0.0%
;;BANK12              30      0       0      30        0.0%
;;BITSFR29             0      0       0      30        0.0%
;;SFR29                0      0       0      30        0.0%
;;BITSFR30             0      0       0      31        0.0%
;;SFR30                0      0       0      31        0.0%
;;DATA                 0      0      9A      31        0.0%
;;BITSFR31             0      0       0      32        0.0%
;;SFR31                0      0       0      32        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 45 in file "cd.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    9[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_POWER_INITIAL
;;		_Time1Initial
;;		_ADC_INITIAL
;;		_adc_run
;;		_DelayMs
;;		_DelayS
;;		_led_run
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"cd.C"
	line	45
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 12
; Regs used in _main: [wreg+fsr1l-status,0+pclath+cstack]
	line	48
	
l11231:	
;cd.C: 46: unint i;
;cd.C: 48: POWER_INITIAL();
	fcall	_POWER_INITIAL
	line	49
;cd.C: 49: Time1Initial();
	fcall	_Time1Initial
	line	50
;cd.C: 50: ADC_INITIAL();
	fcall	_ADC_INITIAL
	line	51
	
l11233:	
;cd.C: 51: RC6 = 1;
	movlb 0	; select bank0
	bsf	(118/8),(118)&7
	line	52
	
l11235:	
;cd.C: 52: for(i=0;i<200;i++){
	clrf	(main@i)
	clrf	(main@i+1)
	line	53
	
l11241:	
;cd.C: 53: adc_run();
	fcall	_adc_run
	line	54
	
l11243:	
;cd.C: 54: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	55
	
l11245:	
;cd.C: 55: RC4 = RB3 = ~RB3;
	movlw	1<<((107)&7)
	movlb 0	; select bank0
	xorwf	((107)/8),f
	btfsc	(107/8),(107)&7
	goto	u1111
	goto	u1110
	
u1111:
	movlb 0	; select bank0
	bsf	(116/8),(116)&7
	goto	u1124
u1110:
	movlb 0	; select bank0
	bcf	(116/8),(116)&7
u1124:
	line	52
	
l11247:	
	incf	(main@i),f
	skipnz
	incf	(main@i+1),f
	
l11249:	
	movlw	high(0C8h)
	subwf	(main@i+1),w
	movlw	low(0C8h)
	skipnz
	subwf	(main@i),w
	skipc
	goto	u1131
	goto	u1130
u1131:
	goto	l11241
u1130:
	line	57
	
l11251:	
;cd.C: 56: }
;cd.C: 57: pwmi = 34;
	movlw	022h
	movwf	(_pwmi)
	clrf	(_pwmi+1)
	line	58
;cd.C: 58: TIM1CCR2H =pwmi/256;
	movf	(_pwmi+1),w
	movlb 5	; select bank5
	movwf	(661)^0280h	;volatile
	line	59
;cd.C: 59: TIM1CCR2L =pwmi%256;
	movf	(_pwmi),w
	movwf	(662)^0280h	;volatile
	line	60
;cd.C: 60: pwmu = 800;
	movlw	low(0320h)
	movlb 0	; select bank0
	movwf	(_pwmu)
	movlw	high(0320h)
	movwf	((_pwmu))+1
	line	61
;cd.C: 61: TIM1CCR1H =pwmu/256;
	movf	(_pwmu+1),w
	movlb 5	; select bank5
	movwf	(659)^0280h	;volatile
	line	62
;cd.C: 62: TIM1CCR1L =pwmu%256;
	movlb 0	; select bank0
	movf	(_pwmu),w
	movlb 5	; select bank5
	movwf	(660)^0280h	;volatile
	line	63
	
l11253:	
;cd.C: 63: DelayS(1);
	movlw	(01h)
	fcall	_DelayS
	line	65
	
l11255:	
;cd.C: 65: DelayS(2);
	movlw	(02h)
	fcall	_DelayS
	line	68
	
l11257:	
;cd.C: 67: {
;cd.C: 68: DelayMs(1);
	movlw	(01h)
	fcall	_DelayMs
	line	69
	
l11259:	
;cd.C: 69: adc_run();
	fcall	_adc_run
	line	70
	
l11261:	
;cd.C: 70: led_run();
	fcall	_led_run
	goto	l11257
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	72
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_led_run
psect	text277,local,class=CODE,delta=2
global __ptext277
__ptext277:

;; *************** function _led_run *****************
;; Defined at:
;;		line 82 in file "run.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_BO_IN_OUT
;;		_DelayMs
;;		_BO_IN_MO
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text277
	file	"run.c"
	line	82
	global	__size_of_led_run
	__size_of_led_run	equ	__end_of_led_run-_led_run
	
_led_run:	
	opt	stack 12
; Regs used in _led_run: [wreg+status,2+status,0+pclath+cstack]
	line	83
	
l11117:	
;run.c: 83: if(wd < 3850){
	movlw	high(0F0Ah)
	subwf	(_wd+1),w
	movlw	low(0F0Ah)
	skipnz
	subwf	(_wd),w
	skipnc
	goto	u851
	goto	u850
u851:
	goto	l11125
u850:
	line	84
	
l11119:	
;run.c: 84: if(wderjs >= 5000){wderr_st = 1;}
	movlw	high(01388h)
	subwf	(_wderjs+1),w
	movlw	low(01388h)
	skipnz
	subwf	(_wderjs),w
	skipc
	goto	u861
	goto	u860
u861:
	goto	l11123
u860:
	
l11121:	
	clrf	(_wderr_st)
	incf	(_wderr_st),f
	goto	l8278
	line	85
	
l11123:	
;run.c: 85: else{wderjs++;}
	incf	(_wderjs),f
	skipnz
	incf	(_wderjs+1),f
	goto	l8278
	line	86
	
l11125:	
	movlw	high(0FA1h)
	subwf	(_wd+1),w
	movlw	low(0FA1h)
	skipnz
	subwf	(_wd),w
	skipc
	goto	u871
	goto	u870
u871:
	goto	l8278
u870:
	
l11127:	
	movlw	(0)
	movwf	(_wderr_st)
	movwf	(_wderjs)
	clrf	(_wderjs+1)
	line	88
	
l8278:	
;run.c: 88: if(gl_st != 1 && dcfj_st != 1 && wderr_st !=1 && acerr_st != 1){
	decf	(_gl_st),w
	skipnz
	goto	u881
	goto	u880
u881:
	goto	l8280
u880:
	
l11129:	
	decf	(_dcfj_st),w
	skipnz
	goto	u891
	goto	u890
u891:
	goto	l8280
u890:
	
l11131:	
	decf	(_wderr_st),w
	skipnz
	goto	u901
	goto	u900
u901:
	goto	l8280
u900:
	
l11133:	
	decf	(_acerr_st),w
	skipnz
	goto	u911
	goto	u910
u911:
	goto	l8280
u910:
	line	89
	
l11135:	
;run.c: 89: if(dcu <= 1768){
	movlw	high(06E9h)
	subwf	(_dcu+1),w
	movlw	low(06E9h)
	skipnz
	subwf	(_dcu),w
	skipnc
	goto	u921
	goto	u920
u921:
	goto	l11157
u920:
	line	90
	
l11137:	
;run.c: 90: if(pwmi != 34 || RC5 == 0){
		movf	(_pwmi),w
	xorlw	34
	iorwf	(_pwmi+1),w

	skipz
	goto	u931
	goto	u930
u931:
	goto	l11141
u930:
	
l11139:	
	btfsc	(117/8),(117)&7
	goto	u941
	goto	u940
u941:
	goto	l11155
u940:
	line	91
	
l11141:	
;run.c: 91: pwmi = 34;
	movlw	022h
	movwf	(_pwmi)
	clrf	(_pwmi+1)
	line	92
;run.c: 92: TIM1CCR2H =pwmi/256;
	movf	(_pwmi+1),w
	movlb 5	; select bank5
	movwf	(661)^0280h	;volatile
	line	93
;run.c: 93: TIM1CCR2L =pwmi%256;
	movf	(_pwmi),w
	movwf	(662)^0280h	;volatile
	line	94
	
l11143:	
;run.c: 94: if(RC5 == 0){
	movlb 0	; select bank0
	btfsc	(117/8),(117)&7
	goto	u951
	goto	u950
u951:
	goto	l11155
u950:
	line	95
	
l11145:	
;run.c: 95: BO_IN_OUT();
	fcall	_BO_IN_OUT
	line	96
	
l11147:	
;run.c: 96: DelayMs(10);
	movlw	(0Ah)
	fcall	_DelayMs
	line	97
	
l11149:	
;run.c: 97: RC5 = 1;
	movlb 0	; select bank0
	bsf	(117/8),(117)&7
	line	98
	
l11151:	
;run.c: 98: DelayMs(150);
	movlw	(096h)
	fcall	_DelayMs
	line	99
	
l11153:	
;run.c: 99: BO_IN_MO();
	fcall	_BO_IN_MO
	line	102
	
l11155:	
;run.c: 100: }
;run.c: 101: }
;run.c: 102: dcmax_st = 0;
	clrf	(_dcmax_st)
	line	103
;run.c: 103: }else if(dcu <= 2335){
	goto	l11205
	
l11157:	
	movlw	high(0920h)
	subwf	(_dcu+1),w
	movlw	low(0920h)
	skipnz
	subwf	(_dcu),w
	skipnc
	goto	u961
	goto	u960
u961:
	goto	l11187
u960:
	line	104
	
l11159:	
;run.c: 104: if(dcmax_st == 0){
	movf	(_dcmax_st),f
	skipz
	goto	u971
	goto	u970
u971:
	goto	l8288
u970:
	line	105
	
l11161:	
;run.c: 105: if(pwmi < 115){
	movlw	high(073h)
	subwf	(_pwmi+1),w
	movlw	low(073h)
	skipnz
	subwf	(_pwmi),w
	skipnc
	goto	u981
	goto	u980
u981:
	goto	l11169
u980:
	line	106
	
l11163:	
;run.c: 106: pwmi++;
	incf	(_pwmi),f
	skipnz
	incf	(_pwmi+1),f
	line	107
	
l11165:	
;run.c: 107: TIM1CCR2H =pwmi/256;
	movf	(_pwmi+1),w
	movlb 5	; select bank5
	movwf	(661)^0280h	;volatile
	line	108
	
l11167:	
;run.c: 108: TIM1CCR2L =pwmi%256;
	movf	(_pwmi),w
	movwf	(662)^0280h	;volatile
	line	110
	
l11169:	
;run.c: 109: }
;run.c: 110: if(RC5 == 0){
	movlb 0	; select bank0
	btfsc	(117/8),(117)&7
	goto	u991
	goto	u990
u991:
	goto	l11155
u990:
	line	111
	
l11171:	
;run.c: 111: BO_IN_OUT();
	fcall	_BO_IN_OUT
	line	112
	
l11173:	
;run.c: 112: DelayMs(10);
	movlw	(0Ah)
	fcall	_DelayMs
	line	113
	
l11175:	
;run.c: 113: RC5 = 1;
	movlb 0	; select bank0
	bsf	(117/8),(117)&7
	line	114
	
l11177:	
;run.c: 114: DelayMs(150);
	movlw	(096h)
	fcall	_DelayMs
	goto	l11153
	line	118
	
l8288:	
	line	119
;run.c: 119: RC5 = 0;
	bcf	(117/8),(117)&7
	line	120
;run.c: 120: dcmax_st = 1;
	clrf	(_dcmax_st)
	incf	(_dcmax_st),f
	line	121
	
l11183:	
;run.c: 121: if(dcu <= 2155){dcmax_st = 0;}
	movlw	high(086Ch)
	subwf	(_dcu+1),w
	movlw	low(086Ch)
	skipnz
	subwf	(_dcu),w
	skipnc
	goto	u1001
	goto	u1000
u1001:
	goto	l8286
u1000:
	goto	l11155
	line	124
	
l11187:	
;run.c: 124: if(dcmax_st == 0){
	movf	(_dcmax_st),f
	skipz
	goto	u1011
	goto	u1010
u1011:
	goto	l8286
u1010:
	line	125
	
l11189:	
;run.c: 125: dcmax_st = 1;
	clrf	(_dcmax_st)
	incf	(_dcmax_st),f
	line	126
;run.c: 126: RC5 = 0;
	bcf	(117/8),(117)&7
	line	127
	
l11191:	
;run.c: 127: pwmi = 1;
	clrf	(_pwmi)
	incf	(_pwmi),f
	clrf	(_pwmi+1)
	line	128
	
l11193:	
;run.c: 128: TIM1CCR2H =pwmi/256;
	movf	(_pwmi+1),w
	movlb 5	; select bank5
	movwf	(661)^0280h	;volatile
	line	129
	
l11195:	
;run.c: 129: TIM1CCR2L =pwmi%256;
	movf	(_pwmi),w
	movwf	(662)^0280h	;volatile
	goto	l11205
	line	131
	
l8286:	
	line	132
;run.c: 130: }
;run.c: 131: }
;run.c: 132: }else{
	goto	l11205
	
l8280:	
	line	133
;run.c: 133: if(RC5 == 1){
	btfss	(117/8),(117)&7
	goto	u1021
	goto	u1020
u1021:
	goto	l11205
u1020:
	line	134
	
l11197:	
;run.c: 134: RC5 = 0;
	bcf	(117/8),(117)&7
	goto	l11191
	line	141
	
l11205:	
;run.c: 138: }
;run.c: 139: }
;run.c: 141: if(gl_st == 1 || dcfj_st == 1 || wderr_st == 1 || acerr_st == 1){
	decf	(_gl_st),w
	skipnz
	goto	u1031
	goto	u1030
u1031:
	goto	l8299
u1030:
	
l11207:	
	movlb 0	; select bank0
	decf	(_dcfj_st),w
	skipnz
	goto	u1041
	goto	u1040
u1041:
	goto	l8299
u1040:
	
l11209:	
	decf	(_wderr_st),w
	skipnz
	goto	u1051
	goto	u1050
u1051:
	goto	l8299
u1050:
	
l11211:	
	decf	(_acerr_st),w
	skipz
	goto	u1061
	goto	u1060
u1061:
	goto	l11227
u1060:
	
l8299:	
	line	142
;run.c: 142: RB3 = 0;
	movlb 0	; select bank0
	bcf	(107/8),(107)&7
	line	143
	
l11213:	
;run.c: 143: ledjs++;
	incf	(_ledjs),f
	skipnz
	incf	(_ledjs+1),f
	line	144
	
l11215:	
;run.c: 144: if(ledjs < 100){RC4 = 1;}
	movlw	high(064h)
	subwf	(_ledjs+1),w
	movlw	low(064h)
	skipnz
	subwf	(_ledjs),w
	skipnc
	goto	u1071
	goto	u1070
u1071:
	goto	l11219
u1070:
	
l11217:	
	bsf	(116/8),(116)&7
	goto	l8308
	line	145
	
l11219:	
;run.c: 145: else if(ledjs < 200){RC4 = 0;}
	movlw	high(0C8h)
	subwf	(_ledjs+1),w
	movlw	low(0C8h)
	skipnz
	subwf	(_ledjs),w
	skipnc
	goto	u1081
	goto	u1080
u1081:
	goto	l11223
u1080:
	
l11221:	
	bcf	(116/8),(116)&7
	goto	l8308
	line	146
	
l11223:	
;run.c: 146: else if(ledjs > 200){ledjs = 0;}
	movlw	high(0C9h)
	subwf	(_ledjs+1),w
	movlw	low(0C9h)
	skipnz
	subwf	(_ledjs),w
	skipc
	goto	u1091
	goto	u1090
u1091:
	goto	l8301
u1090:
	
l11225:	
	clrf	(_ledjs)
	clrf	(_ledjs+1)
	goto	l8308
	line	187
	
l8301:	
;run.c: 187: }else if(dcmax_st == 0){
	goto	l8308
	
l11227:	
	movf	(_dcmax_st),f
	skipz
	goto	u1101
	goto	u1100
u1101:
	goto	l8306
u1100:
	line	188
	
l11229:	
;run.c: 188: RC4 = 1;RB3 = 0;
	bsf	(116/8),(116)&7
	bcf	(107/8),(107)&7
	line	189
;run.c: 189: }else{
	goto	l8308
	
l8306:	
	line	190
;run.c: 190: RC4 = 0;RB3 = 1;
	bcf	(116/8),(116)&7
	bsf	(107/8),(107)&7
	line	192
	
l8308:	
	return
	opt stack 0
GLOBAL	__end_of_led_run
	__end_of_led_run:
;; =============== function _led_run ends ============

	signat	_led_run,88
	global	_DelayS
psect	text278,local,class=CODE,delta=2
global __ptext278
__ptext278:

;; *************** function _DelayS *****************
;; Defined at:
;;		line 41 in file "delay.c"
;; Parameters:    Size  Location     Type
;;  Time            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Time            1    5[COMMON] unsigned char 
;;  b               1    7[COMMON] unsigned char 
;;  a               1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/5
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DelayMs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text278
	file	"delay.c"
	line	41
	global	__size_of_DelayS
	__size_of_DelayS	equ	__end_of_DelayS-_DelayS
	
_DelayS:	
	opt	stack 12
; Regs used in _DelayS: [wreg+status,2+status,0+pclath+cstack]
;DelayS@Time stored from wreg
	line	43
	movwf	(DelayS@Time)
	
l11099:	
;delay.c: 42: unsigned char a,b;
;delay.c: 43: for(a=0;a<Time;a++)
	clrf	(DelayS@a)
	goto	l11115
	line	45
	
l11101:	
;delay.c: 44: {
;delay.c: 45: for(b=0;b<10;b++)
	clrf	(DelayS@b)
	line	47
	
l11107:	
;delay.c: 46: {
;delay.c: 47: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	45
	
l11109:	
	incf	(DelayS@b),f
	
l11111:	
	movlw	(0Ah)
	subwf	(DelayS@b),w
	skipc
	goto	u831
	goto	u830
u831:
	goto	l11107
u830:
	line	43
	
l11113:	
	incf	(DelayS@a),f
	
l11115:	
	movf	(DelayS@Time),w
	subwf	(DelayS@a),w
	skipc
	goto	u841
	goto	u840
u841:
	goto	l11101
u840:
	line	50
	
l4114:	
	return
	opt stack 0
GLOBAL	__end_of_DelayS
	__end_of_DelayS:
;; =============== function _DelayS ends ============

	signat	_DelayS,4216
	global	_adc_run
psect	text279,local,class=CODE,delta=2
global __ptext279
__ptext279:

;; *************** function _adc_run *****************
;; Defined at:
;;		line 12 in file "run.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    6[BANK0 ] unsigned int 
;;  adz2            2    4[BANK0 ] unsigned int 
;;  adz1            2    2[BANK0 ] unsigned int 
;;  adz0            2    0[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       8       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_GET_ADC_DATA
;;		_DelayMs
;;		___lwdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text279
	file	"run.c"
	line	12
	global	__size_of_adc_run
	__size_of_adc_run	equ	__end_of_adc_run-_adc_run
	
_adc_run:	
	opt	stack 12
; Regs used in _adc_run: [wreg+fsr1l-status,0+pclath+cstack]
	line	14
	
l10997:	
	movlb 0	; select bank0
	clrf	(adc_run@adz1)
	clrf	(adc_run@adz1+1)
	clrf	(adc_run@adz2)
	clrf	(adc_run@adz2+1)
	line	16
	
l10999:	
;run.c: 16: theVoltage1 = GET_ADC_DATA(0);DelayMs(1);
	movlw	(0)
	fcall	_GET_ADC_DATA
	movf	(1+(?_GET_ADC_DATA)),w
	movlb 0	; select bank0
	movwf	(_theVoltage1+1)
	movf	(0+(?_GET_ADC_DATA)),w
	movwf	(_theVoltage1)
	
l11001:	
	movlw	(01h)
	fcall	_DelayMs
	line	17
	
l11003:	
;run.c: 17: theVoltage2 = GET_ADC_DATA(1);DelayMs(1);
	movlw	(01h)
	fcall	_GET_ADC_DATA
	movf	(1+(?_GET_ADC_DATA)),w
	movlb 0	; select bank0
	movwf	(_theVoltage2+1)
	movf	(0+(?_GET_ADC_DATA)),w
	movwf	(_theVoltage2)
	
l11005:	
	movlw	(01h)
	fcall	_DelayMs
	line	18
	
l11007:	
;run.c: 18: theVoltage3 = GET_ADC_DATA(2);DelayMs(1);
	movlw	(02h)
	fcall	_GET_ADC_DATA
	movf	(1+(?_GET_ADC_DATA)),w
	movlb 0	; select bank0
	movwf	(_theVoltage3+1)
	movf	(0+(?_GET_ADC_DATA)),w
	movwf	(_theVoltage3)
	
l11009:	
	movlw	(01h)
	fcall	_DelayMs
	line	20
;run.c: 20: for(i=0;i<9;i++){
	movlb 0	; select bank0
	clrf	(adc_run@i)
	clrf	(adc_run@i+1)
	line	21
	
l11015:	
;run.c: 21: adc0[i] = adc0[i+1];
	lslf	(adc_run@i),w
	addlw	_adc0+02h&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_adc_run+0)+0
	moviw	[1]fsr1
	movwf	(??_adc_run+0)+0+1
	lslf	(adc_run@i),w
	addlw	_adc0&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	0+(??_adc_run+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_adc_run+0)+0,w
	movwi	[1]fsr1
	line	22
;run.c: 22: adc1[i] = adc1[i+1];
	lslf	(adc_run@i),w
	addlw	_adc1+02h&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_adc_run+0)+0
	moviw	[1]fsr1
	movwf	(??_adc_run+0)+0+1
	lslf	(adc_run@i),w
	addlw	_adc1&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	0+(??_adc_run+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_adc_run+0)+0,w
	movwi	[1]fsr1
	line	23
;run.c: 23: adc2[i] = adc2[i+1];
	lslf	(adc_run@i),w
	addlw	_adc2+02h&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_adc_run+0)+0
	moviw	[1]fsr1
	movwf	(??_adc_run+0)+0+1
	lslf	(adc_run@i),w
	addlw	_adc2&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	0+(??_adc_run+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_adc_run+0)+0,w
	movwi	[1]fsr1
	line	24
;run.c: 24: adc3[i] = adc3[i+1];
	lslf	(adc_run@i),w
	addlw	_adc3+02h&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_adc_run+0)+0
	moviw	[1]fsr1
	movwf	(??_adc_run+0)+0+1
	lslf	(adc_run@i),w
	addlw	_adc3&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	0+(??_adc_run+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_adc_run+0)+0,w
	movwi	[1]fsr1
	line	25
;run.c: 25: adc4[i] = adc4[i+1];
	lslf	(adc_run@i),w
	addlw	_adc4+02h&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_adc_run+0)+0
	moviw	[1]fsr1
	movwf	(??_adc_run+0)+0+1
	lslf	(adc_run@i),w
	addlw	_adc4&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	0+(??_adc_run+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_adc_run+0)+0,w
	movwi	[1]fsr1
	line	20
	
l11017:	
	incf	(adc_run@i),f
	skipnz
	incf	(adc_run@i+1),f
	
l11019:	
	movlw	high(09h)
	subwf	(adc_run@i+1),w
	movlw	low(09h)
	skipnz
	subwf	(adc_run@i),w
	skipc
	goto	u671
	goto	u670
u671:
	goto	l11015
u670:
	line	27
	
l11021:	
;run.c: 26: }
;run.c: 27: if(theVoltage1 >= 1000){adc0[9] = theVoltage1;}
	movlw	high(03E8h)
	subwf	(_theVoltage1+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(_theVoltage1),w
	skipc
	goto	u681
	goto	u680
u681:
	goto	l8247
u680:
	
l11023:	
	movf	(_theVoltage1+1),w
	movwf	1+(_adc0)+012h
	movf	(_theVoltage1),w
	movwf	0+(_adc0)+012h
	
l8247:	
	line	28
;run.c: 28: adc1[9] = theVoltage2;
	movf	(_theVoltage2+1),w
	movwf	1+(_adc1)+012h
	movf	(_theVoltage2),w
	movwf	0+(_adc1)+012h
	line	29
;run.c: 29: adc2[9] = theVoltage3;
	movf	(_theVoltage3+1),w
	movlb 1	; select bank1
	movwf	1+(_adc2)^080h+012h
	movlb 0	; select bank0
	movf	(_theVoltage3),w
	movlb 1	; select bank1
	movwf	0+(_adc2)^080h+012h
	line	30
	
l11025:	
;run.c: 30: adz0=0;adz1=0;adz2=0;
	movlb 0	; select bank0
	clrf	(adc_run@adz0)
	clrf	(adc_run@adz0+1)
	
l11027:	
	clrf	(adc_run@adz1)
	clrf	(adc_run@adz1+1)
	
l11029:	
	clrf	(adc_run@adz2)
	clrf	(adc_run@adz2+1)
	line	31
	
l11031:	
;run.c: 31: for(i=0;i<10;i++){
	clrf	(adc_run@i)
	clrf	(adc_run@i+1)
	line	32
	
l11035:	
;run.c: 32: adz0 = adz0+adc0[i];
	lslf	(adc_run@i),w
	addlw	_adc0&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_adc_run+0)+0
	moviw	[1]fsr1
	movwf	(??_adc_run+0)+0+1
	movf	0+(??_adc_run+0)+0,w
	addwf	(adc_run@adz0),f
	movf	1+(??_adc_run+0)+0,w
	addwfc	(adc_run@adz0+1),f
	line	33
;run.c: 33: adz1 = adz1+adc1[i];
	lslf	(adc_run@i),w
	addlw	_adc1&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_adc_run+0)+0
	moviw	[1]fsr1
	movwf	(??_adc_run+0)+0+1
	movf	0+(??_adc_run+0)+0,w
	addwf	(adc_run@adz1),f
	movf	1+(??_adc_run+0)+0,w
	addwfc	(adc_run@adz1+1),f
	line	34
;run.c: 34: adz2 = adz2+adc2[i];
	lslf	(adc_run@i),w
	addlw	_adc2&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_adc_run+0)+0
	moviw	[1]fsr1
	movwf	(??_adc_run+0)+0+1
	movf	0+(??_adc_run+0)+0,w
	addwf	(adc_run@adz2),f
	movf	1+(??_adc_run+0)+0,w
	addwfc	(adc_run@adz2+1),f
	line	31
	
l11037:	
	incf	(adc_run@i),f
	skipnz
	incf	(adc_run@i+1),f
	
l11039:	
	movlw	high(0Ah)
	subwf	(adc_run@i+1),w
	movlw	low(0Ah)
	skipnz
	subwf	(adc_run@i),w
	skipc
	goto	u691
	goto	u690
u691:
	goto	l11035
u690:
	line	36
	
l11041:	
;run.c: 35: }
;run.c: 36: wd = adz0/10;
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(adc_run@adz0+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(adc_run@adz0),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(_wd+1)
	movf	(0+(?___lwdiv)),w
	movwf	(_wd)
	line	37
;run.c: 37: dcu = adz1/10;
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(adc_run@adz1+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(adc_run@adz1),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(_dcu+1)
	movf	(0+(?___lwdiv)),w
	movwf	(_dcu)
	line	38
;run.c: 38: dci = adz2/10;
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(adc_run@adz2+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(adc_run@adz2),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(_dci+1)
	movf	(0+(?___lwdiv)),w
	movwf	(_dci)
	line	39
	
l11043:	
;run.c: 39: if(RC5 == 1){
	btfss	(117/8),(117)&7
	goto	u701
	goto	u700
u701:
	goto	l11057
u700:
	line	40
	
l11045:	
;run.c: 40: if(dci <= 100){dczxjs++;}
	movlw	high(065h)
	subwf	(_dci+1),w
	movlw	low(065h)
	skipnz
	subwf	(_dci),w
	skipnc
	goto	u711
	goto	u710
u711:
	goto	l11049
u710:
	
l11047:	
	incf	(_dczxjs),f
	goto	l11051
	line	41
	
l11049:	
;run.c: 41: else{dczxjs=0;}
	clrf	(_dczxjs)
	line	42
	
l11051:	
;run.c: 42: if(dczxjs >= 200){
	movlw	(0C8h)
	subwf	(_dczxjs),w
	skipc
	goto	u721
	goto	u720
u721:
	goto	l8254
u720:
	line	43
	
l11053:	
;run.c: 44: dczx_st = 0;
	movlw	(0C8h)
	movwf	(_dczxjs)
	line	45
;run.c: 45: }else{dczx_st = 1;}
	
l8254:	
	line	46
;run.c: 46: if(RA0 == 1){gl_st = 1;}
	btfss	(96/8),(96)&7
	goto	u731
	goto	u730
u731:
	goto	l11057
u730:
	
l11055:	
	clrf	(_gl_st)
	incf	(_gl_st),f
	line	60
	
l11057:	
;run.c: 47: }
;run.c: 60: if(dcu > 3500){dcfj_st = 1;}
	movlw	high(0DADh)
	subwf	(_dcu+1),w
	movlw	low(0DADh)
	skipnz
	subwf	(_dcu),w
	skipc
	goto	u741
	goto	u740
u741:
	goto	l11061
u740:
	
l11059:	
	clrf	(_dcfj_st)
	incf	(_dcfj_st),f
	goto	l11079
	line	61
	
l11061:	
;run.c: 61: else if(dcu > 2335){dcmax_st = 1;}
	movlw	high(0920h)
	subwf	(_dcu+1),w
	movlw	low(0920h)
	skipnz
	subwf	(_dcu),w
	skipc
	goto	u751
	goto	u750
u751:
	goto	l11065
u750:
	
l11063:	
	clrf	(_dcmax_st)
	incf	(_dcmax_st),f
	goto	l11079
	line	62
	
l11065:	
;run.c: 62: else if(dcmax_st == 1){
	decf	(_dcmax_st),w
	skipz
	goto	u761
	goto	u760
u761:
	goto	l11071
u760:
	line	63
	
l11067:	
;run.c: 63: if(dcu <= 2155){dcmax_st = 0;}
	movlw	high(086Ch)
	subwf	(_dcu+1),w
	movlw	low(086Ch)
	skipnz
	subwf	(_dcu),w
	skipnc
	goto	u771
	goto	u770
u771:
	goto	l8259
u770:
	
l11069:	
	clrf	(_dcmax_st)
	goto	l11079
	line	64
	
l11071:	
	movlw	high(02904h)
	subwf	(_upsd+1),w
	movlw	low(02904h)
	skipnz
	subwf	(_upsd),w
	skipc
	goto	u781
	goto	u780
u781:
	goto	l11075
u780:
	
l11073:	
	movlw	low(02904h)
	movwf	(_upsd)
	movlw	high(02904h)
	movwf	((_upsd))+1
	goto	l11079
	line	65
	
l11075:	
;run.c: 65: else{upsd++;dcu = 1768;}
	incf	(_upsd),f
	skipnz
	incf	(_upsd+1),f
	
l11077:	
	movlw	low(06E8h)
	movwf	(_dcu)
	movlw	high(06E8h)
	movwf	((_dcu))+1
	goto	l11079
	
l8259:	
	line	67
	
l11079:	
;run.c: 67: if(dci > 900){
	movlw	high(0385h)
	subwf	(_dci+1),w
	movlw	low(0385h)
	skipnz
	subwf	(_dci),w
	skipc
	goto	u791
	goto	u790
u791:
	goto	l11087
u790:
	line	68
	
l11081:	
;run.c: 68: gljs++;
	incf	(_gljs),f
	skipnz
	incf	(_gljs+1),f
	line	69
	
l11083:	
;run.c: 69: if(gljs >= 1000){gl_st = 1;}
	movlw	high(03E8h)
	subwf	(_gljs+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(_gljs),w
	skipc
	goto	u801
	goto	u800
u801:
	goto	l11089
u800:
	
l11085:	
	clrf	(_gl_st)
	incf	(_gl_st),f
	goto	l11089
	line	70
	
l11087:	
	clrf	(_gljs)
	clrf	(_gljs+1)
	line	72
	
l11089:	
;run.c: 72: if(RB2 == 1){
	btfss	(106/8),(106)&7
	goto	u811
	goto	u810
u811:
	goto	l11097
u810:
	line	73
	
l11091:	
;run.c: 73: if(acerjs >= 1000){acerr_st = 1;}
	movlw	high(03E8h)
	subwf	(_acerjs+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(_acerjs),w
	skipc
	goto	u821
	goto	u820
u821:
	goto	l11095
u820:
	
l11093:	
	clrf	(_acerr_st)
	incf	(_acerr_st),f
	goto	l8272
	line	74
	
l11095:	
;run.c: 74: else{acerjs++;}
	incf	(_acerjs),f
	skipnz
	incf	(_acerjs+1),f
	goto	l8272
	line	76
	
l11097:	
;run.c: 76: acerjs = acerr_st = 0;
	movlw	(0)
	movwf	(_acerr_st)
	movwf	(_acerjs)
	clrf	(_acerjs+1)
	line	78
	
l8272:	
	return
	opt stack 0
GLOBAL	__end_of_adc_run
	__end_of_adc_run:
;; =============== function _adc_run ends ============

	signat	_adc_run,88
	global	_GET_ADC_DATA
psect	text280,local,class=CODE,delta=2
global __ptext280
__ptext280:

;; *************** function _GET_ADC_DATA *****************
;; Defined at:
;;		line 163 in file "init.c"
;; Parameters:    Size  Location     Type
;;  adcChannel      1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  adcChannel      1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayUs
;; This function is called by:
;;		_adc_run
;; This function uses a non-reentrant model
;;
psect	text280
	file	"init.c"
	line	163
	global	__size_of_GET_ADC_DATA
	__size_of_GET_ADC_DATA	equ	__end_of_GET_ADC_DATA-_GET_ADC_DATA
	
_GET_ADC_DATA:	
	opt	stack 12
; Regs used in _GET_ADC_DATA: [wreg+status,2+status,0+pclath+cstack]
;GET_ADC_DATA@adcChannel stored from wreg
	movwf	(GET_ADC_DATA@adcChannel)
	line	164
	
l10981:	
;init.c: 164: ADCON0 &= 0B00001111;
	movlw	(0Fh)
	movlb 1	; select bank1
	andwf	(157)^080h,f	;volatile
	line	165
;init.c: 165: ADCON0 |= adcChannel<<4;
	swapf	(GET_ADC_DATA@adcChannel),w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	(157)^080h,f	;volatile
	line	166
	
l10983:	
;init.c: 166: DelayUs(40);
	movlw	(028h)
	fcall	_DelayUs
	line	168
	
l10985:	
;init.c: 168: LEBADT = 1;
	movlb 8	; select bank8
	bsf	(8403/8)^0400h,(8403)&7
	line	169
	
l10987:	
;init.c: 169: ADEX = 1;
	movlb 1	; select bank1
	bsf	(1258/8)^080h,(1258)&7
	line	170
	
l10989:	
;init.c: 170: _nop();
	nop
	line	171
	
l10991:	
;init.c: 171: _nop();
	nop
	line	172
;init.c: 172: while(GO);
	
l6163:	
	movlb 1	; select bank1
	btfsc	(1257/8)^080h,(1257)&7
	goto	u661
	goto	u660
u661:
	goto	l6163
u660:
	
l6165:	
	line	173
;init.c: 173: ADEX = 0;
	bcf	(1258/8)^080h,(1258)&7
	line	175
	
l10993:	
;init.c: 175: return (unsigned int)(ADRESH<<8|ADRESL);
	movf	(156)^080h,w	;volatile
	movwf	(?_GET_ADC_DATA+1)
	clrf	(?_GET_ADC_DATA)
	movf	(155)^080h,w	;volatile
	iorwf	(?_GET_ADC_DATA),f
	line	176
	
l6166:	
	return
	opt stack 0
GLOBAL	__end_of_GET_ADC_DATA
	__end_of_GET_ADC_DATA:
;; =============== function _GET_ADC_DATA ends ============

	signat	_GET_ADC_DATA,4218
	global	_DelayMs
psect	text281,local,class=CODE,delta=2
global __ptext281
__ptext281:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 24 in file "delay.c"
;; Parameters:    Size  Location     Type
;;  Time            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Time            1    2[COMMON] unsigned char 
;;  b               1    4[COMMON] unsigned char 
;;  a               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayUs
;; This function is called by:
;;		_main
;;		_DelayS
;;		_adc_run
;;		_led_run
;; This function uses a non-reentrant model
;;
psect	text281
	file	"delay.c"
	line	24
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 12
; Regs used in _DelayMs: [wreg+status,2+status,0+pclath+cstack]
;DelayMs@Time stored from wreg
	line	26
	movwf	(DelayMs@Time)
	
l10963:	
;delay.c: 25: unsigned char a,b;
;delay.c: 26: for(a=0;a<Time;a++)
	clrf	(DelayMs@a)
	goto	l10979
	line	28
	
l10965:	
;delay.c: 27: {
;delay.c: 28: for(b=0;b<5;b++)
	clrf	(DelayMs@b)
	line	30
	
l10971:	
;delay.c: 29: {
;delay.c: 30: DelayUs(197);
	movlw	(0C5h)
	fcall	_DelayUs
	line	28
	
l10973:	
	incf	(DelayMs@b),f
	
l10975:	
	movlw	(05h)
	subwf	(DelayMs@b),w
	skipc
	goto	u641
	goto	u640
u641:
	goto	l10971
u640:
	line	26
	
l10977:	
	incf	(DelayMs@a),f
	
l10979:	
	movf	(DelayMs@Time),w
	subwf	(DelayMs@a),w
	skipc
	goto	u651
	goto	u650
u651:
	goto	l10965
u650:
	line	33
	
l4106:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
	global	_DelayUs
psect	text282,local,class=CODE,delta=2
global __ptext282
__ptext282:

;; *************** function _DelayUs *****************
;; Defined at:
;;		line 10 in file "delay.c"
;; Parameters:    Size  Location     Type
;;  Time            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Time            1    0[COMMON] unsigned char 
;;  a               1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DelayMs
;;		_GET_ADC_DATA
;; This function uses a non-reentrant model
;;
psect	text282
	file	"delay.c"
	line	10
	global	__size_of_DelayUs
	__size_of_DelayUs	equ	__end_of_DelayUs-_DelayUs
	
_DelayUs:	
	opt	stack 12
; Regs used in _DelayUs: [wreg+status,2+status,0]
;DelayUs@Time stored from wreg
	line	12
	movwf	(DelayUs@Time)
	
l10957:	
;delay.c: 11: unsigned char a;
;delay.c: 12: for(a=0;a<Time;a++)
	clrf	(DelayUs@a)
	goto	l10961
	line	13
	
l4096:	
	line	14
;delay.c: 13: {
;delay.c: 14: _nop();
	nop
	line	12
	
l10959:	
	incf	(DelayUs@a),f
	
l10961:	
	movf	(DelayUs@Time),w
	subwf	(DelayUs@a),w
	skipc
	goto	u631
	goto	u630
u631:
	goto	l4096
u630:
	line	16
	
l4098:	
	return
	opt stack 0
GLOBAL	__end_of_DelayUs
	__end_of_DelayUs:
;; =============== function _DelayUs ends ============

	signat	_DelayUs,4216
	global	_ADC_INITIAL
psect	text283,local,class=CODE,delta=2
global __ptext283
__ptext283:

;; *************** function _ADC_INITIAL *****************
;; Defined at:
;;		line 137 in file "init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/8
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text283
	file	"init.c"
	line	137
	global	__size_of_ADC_INITIAL
	__size_of_ADC_INITIAL	equ	__end_of_ADC_INITIAL-_ADC_INITIAL
	
_ADC_INITIAL:	
	opt	stack 14
; Regs used in _ADC_INITIAL: [wreg+status,2]
	line	138
	
l10941:	
;init.c: 138: PCKEN |=0B00000001;
	movlb 1	; select bank1
	bsf	(154)^080h+(0/8),(0)&7	;volatile
	line	139
	
l10943:	
;init.c: 139: ANSELA = 0B00000111;
	movlw	(07h)
	movlb 3	; select bank3
	movwf	(407)^0180h	;volatile
	line	141
;init.c: 141: ADCON1 = 0B10100100;
	movlw	(0A4h)
	movlb 1	; select bank1
	movwf	(158)^080h	;volatile
	line	142
	
l10945:	
;init.c: 142: ADCON0 = 0B00000000;
	clrf	(157)^080h	;volatile
	line	143
	
l10947:	
;init.c: 143: ADCON2 = 0B10010000;
	movlw	(090h)
	movwf	(159)^080h	;volatile
	line	144
	
l10949:	
;init.c: 144: ADCON3 = 0B00000100;
	movlw	(04h)
	movlb 8	; select bank8
	movwf	(1050)^0400h	;volatile
	line	146
	
l10951:	
;init.c: 146: ADDLY = 0X0B;
	movlw	(0Bh)
	movlb 0	; select bank0
	movwf	(31)	;volatile
	line	148
;init.c: 148: ADCMPH = 0B00000000;
	movlb 8	; select bank8
	clrf	(1051)^0400h	;volatile
	line	150
	
l10953:	
;init.c: 150: ADCAL=1;
	movlb 1	; select bank1
	bsf	(1259/8)^080h,(1259)&7
	line	151
	
l10955:	
;init.c: 151: _nop();
	nop
	line	152
;init.c: 152: while(ADCAL);
	
l6157:	
	movlb 1	; select bank1
	btfsc	(1259/8)^080h,(1259)&7
	goto	u621
	goto	u620
u621:
	goto	l6157
u620:
	
l6159:	
	line	154
;init.c: 154: ADON=1;
	bsf	(1256/8)^080h,(1256)&7
	line	155
	
l6160:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_INITIAL
	__end_of_ADC_INITIAL:
;; =============== function _ADC_INITIAL ends ============

	signat	_ADC_INITIAL,88
	global	___lwdiv
psect	text284,local,class=CODE,delta=2
global __ptext284
__ptext284:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "c:\program files (x86)\fmd\fmdide\data\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[COMMON] unsigned int 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_adc_run
;; This function uses a non-reentrant model
;;
psect	text284
	file	"c:\program files (x86)\fmd\fmdide\data\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 13
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l10915:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l10917:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u581
	goto	u580
u581:
	goto	l10937
u580:
	line	11
	
l10919:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l10923
	line	13
	
l10921:	
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l10923:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u591
	goto	u590
u591:
	goto	l10921
u590:
	line	17
	
l10925:	
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l10927:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u605
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u605:
	skipc
	goto	u601
	goto	u600
u601:
	goto	l10933
u600:
	line	19
	
l10929:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	20
	
l10931:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l10933:	
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l10935:	
	decfsz	(___lwdiv@counter),f
	goto	u611
	goto	u610
u611:
	goto	l10925
u610:
	line	25
	
l10937:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l9996:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_BO_IN_OUT
psect	text285,local,class=CODE,delta=2
global __ptext285
__ptext285:

;; *************** function _BO_IN_OUT *****************
;; Defined at:
;;		line 69 in file "init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_led_run
;; This function uses a non-reentrant model
;;
psect	text285
	file	"init.c"
	line	69
	global	__size_of_BO_IN_OUT
	__size_of_BO_IN_OUT	equ	__end_of_BO_IN_OUT-_BO_IN_OUT
	
_BO_IN_OUT:	
	opt	stack 13
; Regs used in _BO_IN_OUT: []
	line	70
	
l10913:	
;init.c: 70: TRISA0 = 0;
	movlb 1	; select bank1
	bcf	(1120/8)^080h,(1120)&7
	line	71
;init.c: 71: PEIE = 0;
	bcf	(94/8),(94)&7
	line	72
;init.c: 72: RA0 = 0;
	movlb 0	; select bank0
	bcf	(96/8),(96)&7
	line	73
	
l6151:	
	return
	opt stack 0
GLOBAL	__end_of_BO_IN_OUT
	__end_of_BO_IN_OUT:
;; =============== function _BO_IN_OUT ends ============

	signat	_BO_IN_OUT,88
	global	_BO_IN_MO
psect	text286,local,class=CODE,delta=2
global __ptext286
__ptext286:

;; *************** function _BO_IN_MO *****************
;; Defined at:
;;		line 57 in file "init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_led_run
;; This function uses a non-reentrant model
;;
psect	text286
	file	"init.c"
	line	57
	global	__size_of_BO_IN_MO
	__size_of_BO_IN_MO	equ	__end_of_BO_IN_MO-_BO_IN_MO
	
_BO_IN_MO:	
	opt	stack 13
; Regs used in _BO_IN_MO: [wreg+status,2]
	line	58
	
l10901:	
;init.c: 58: TRISA0 = 1;
	movlb 1	; select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	59
	
l10903:	
;init.c: 59: EPS0 = 0B00000000;
	movlb 2	; select bank2
	clrf	(280)^0100h	;volatile
	line	60
;init.c: 60: EPS1 = 0B00000000;
	clrf	(281)^0100h	;volatile
	line	61
	
l10905:	
;init.c: 61: ITYPE0 = 0B00000011;
	movlw	(03h)
	movwf	(286)^0100h	;volatile
	line	62
	
l10907:	
;init.c: 62: ITYPE1 = 0B00000000;
	clrf	(287)^0100h	;volatile
	line	63
;init.c: 63: EPIE0 = 0B00000001;
	movlw	(01h)
	movlb 1	; select bank1
	movwf	(148)^080h	;volatile
	line	64
;init.c: 64: EPIF0 = 0xFF;
	movlw	(0FFh)
	movlb 0	; select bank0
	movwf	(20)	;volatile
	line	65
	
l10909:	
;init.c: 65: PEIE = 1;
	bsf	(94/8),(94)&7
	line	66
	
l10911:	
;init.c: 66: GIE = 1;
	bsf	(95/8),(95)&7
	line	67
	
l6148:	
	return
	opt stack 0
GLOBAL	__end_of_BO_IN_MO
	__end_of_BO_IN_MO:
;; =============== function _BO_IN_MO ends ============

	signat	_BO_IN_MO,88
	global	_Time1Initial
psect	text287,local,class=CODE,delta=2
global __ptext287
__ptext287:

;; *************** function _Time1Initial *****************
;; Defined at:
;;		line 82 in file "init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/8
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text287
	file	"init.c"
	line	82
	global	__size_of_Time1Initial
	__size_of_Time1Initial	equ	__end_of_Time1Initial-_Time1Initial
	
_Time1Initial:	
	opt	stack 14
; Regs used in _Time1Initial: [wreg+status,2]
	line	83
	
l10869:	
;init.c: 83: PCKEN |=0B00000010;
	movlb 1	; select bank1
	bsf	(154)^080h+(1/8),(1)&7	;volatile
	line	85
	
l10871:	
;init.c: 85: AFP0 = 0B01000000;
	movlw	(040h)
	movlb 3	; select bank3
	movwf	(414)^0180h	;volatile
	line	86
;init.c: 86: AFP1 = 0B00000001;
	movlw	(01h)
	movwf	(415)^0180h	;volatile
	line	87
	
l10873:	
;init.c: 87: AFP2 = 0B00000000;
	movlb 2	; select bank2
	clrf	(285)^0100h	;volatile
	line	89
	
l10875:	
;init.c: 89: CKOCON=0B00100000;
	movlw	(020h)
	movlb 1	; select bank1
	movwf	(149)^080h	;volatile
	line	90
	
l10877:	
;init.c: 90: TCKSRC=0B00000011;
	movlw	(03h)
	movlb 6	; select bank6
	movwf	(799)^0300h	;volatile
	line	92
	
l10879:	
;init.c: 92: TIM1CR1 =0B10000101;
	movlw	(085h)
	movlb 4	; select bank4
	movwf	(529)^0200h	;volatile
	line	93
;init.c: 93: TIM1SMCR=0B00000000;
	clrf	(531)^0200h	;volatile
	line	95
;init.c: 95: TIM1IER =0B00000000;
	clrf	(533)^0200h	;volatile
	line	96
;init.c: 96: TIM1SR1 =0B00000000;
	clrf	(534)^0200h	;volatile
	line	97
;init.c: 97: TIM1SR2 =0B00000000;
	clrf	(535)^0200h	;volatile
	line	98
;init.c: 98: TIM1EGR =0B00000000;
	clrf	(536)^0200h	;volatile
	line	99
	
l10881:	
;init.c: 99: TIM1CCMR1 =0B01101000;
	movlw	(068h)
	movwf	(537)^0200h	;volatile
	line	100
	
l10883:	
;init.c: 100: TIM1CCMR2 =0B01101000;
	movlw	(068h)
	movwf	(538)^0200h	;volatile
	line	101
;init.c: 101: TIM1CCMR3 =0B00000000;
	clrf	(539)^0200h	;volatile
	line	102
;init.c: 102: TIM1CCMR4 =0B00000000;
	clrf	(540)^0200h	;volatile
	line	104
	
l10885:	
;init.c: 104: TIM1CCER1 =0B00010001;
	movlw	(011h)
	movwf	(541)^0200h	;volatile
	line	105
	
l10887:	
;init.c: 105: TIM1CCER2 =0B00000000;
	clrf	(542)^0200h	;volatile
	line	107
	
l10889:	
;init.c: 107: TIM1CNTRH =0B00000000;
	movlb 5	; select bank5
	clrf	(652)^0280h	;volatile
	line	108
	
l10891:	
;init.c: 108: TIM1CNTRL =0B00000000;
	clrf	(653)^0280h	;volatile
	line	110
	
l10893:	
;init.c: 110: TIM1PSCRH =0B00000000;
	clrf	(654)^0280h	;volatile
	line	111
	
l10895:	
;init.c: 111: TIM1PSCRL =0B00000000;
	clrf	(655)^0280h	;volatile
	line	113
;init.c: 113: TIM1ARRH =0x03;
	movlw	(03h)
	movwf	(656)^0280h	;volatile
	line	114
;init.c: 114: TIM1ARRL =0xe8;
	movlw	(0E8h)
	movwf	(657)^0280h	;volatile
	line	116
;init.c: 116: TIM1RCR =0B00001111;
	movlw	(0Fh)
	movwf	(658)^0280h	;volatile
	line	118
;init.c: 118: TIM1CCR1H =pwmu/256;
	movlb 0	; select bank0
	movf	(_pwmu+1),w
	movlb 5	; select bank5
	movwf	(659)^0280h	;volatile
	line	119
;init.c: 119: TIM1CCR1L =pwmu%256;
	movlb 0	; select bank0
	movf	(_pwmu),w
	movlb 5	; select bank5
	movwf	(660)^0280h	;volatile
	line	121
;init.c: 121: TIM1CCR2H =pwmi/256;
	movf	(_pwmi+1),w
	movwf	(661)^0280h	;volatile
	line	122
;init.c: 122: TIM1CCR2L =pwmi%256;
	movf	(_pwmi),w
	movwf	(662)^0280h	;volatile
	line	124
;init.c: 124: TIM1BKR =0B11000000;
	movlw	(0C0h)
	movwf	(667)^0280h	;volatile
	line	125
	
l10897:	
;init.c: 125: TIM1DTR =0B00000000;
	clrf	(668)^0280h	;volatile
	line	126
	
l10899:	
;init.c: 126: TIM1OISR =0B00000000;
	clrf	(669)^0280h	;volatile
	line	128
;init.c: 128: LEBCON =0B10000000;
	movlw	(080h)
	movlb 8	; select bank8
	movwf	(1052)^0400h	;volatile
	line	129
	
l6154:	
	return
	opt stack 0
GLOBAL	__end_of_Time1Initial
	__end_of_Time1Initial:
;; =============== function _Time1Initial ends ============

	signat	_Time1Initial,88
	global	_POWER_INITIAL
psect	text288,local,class=CODE,delta=2
global __ptext288
__ptext288:

;; *************** function _POWER_INITIAL *****************
;; Defined at:
;;		line 10 in file "init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text288
	file	"init.c"
	line	10
	global	__size_of_POWER_INITIAL
	__size_of_POWER_INITIAL	equ	__end_of_POWER_INITIAL-_POWER_INITIAL
	
_POWER_INITIAL:	
	opt	stack 14
; Regs used in _POWER_INITIAL: [wreg+status,2]
	line	12
	
l10831:	
;init.c: 12: OSCCON = 0B01110001;
	movlw	(071h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	15
	
l10833:	
;init.c: 15: INTCON = 0;
	clrf	(11)	;volatile
	line	17
	
l10835:	
;init.c: 17: PORTA = 0B00000000;
	movlb 0	; select bank0
	clrf	(12)	;volatile
	line	18
;init.c: 18: TRISA = 0B11111110;
	movlw	(0FEh)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	19
	
l10837:	
;init.c: 19: PORTB = 0B00000000;
	movlb 0	; select bank0
	clrf	(13)	;volatile
	line	20
	
l10839:	
;init.c: 20: TRISB = 0B11110111;
	movlw	(0F7h)
	movlb 1	; select bank1
	movwf	(141)^080h	;volatile
	line	21
;init.c: 21: PORTC = 0B00000000;
	movlb 0	; select bank0
	clrf	(14)	;volatile
	line	22
	
l10841:	
;init.c: 22: TRISC = 0B10001111;
	movlw	(08Fh)
	movlb 1	; select bank1
	movwf	(142)^080h	;volatile
	line	23
	
l10843:	
;init.c: 23: PORTD = 0B00000000;
	movlb 0	; select bank0
	clrf	(15)	;volatile
	line	24
;init.c: 24: TRISD = 0B11111001;
	movlw	(0F9h)
	movlb 1	; select bank1
	movwf	(143)^080h	;volatile
	line	26
	
l10845:	
;init.c: 26: WPUA = 0B00000000;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	27
	
l10847:	
;init.c: 27: WPUB = 0B00011000;
	movlw	(018h)
	movwf	(397)^0180h	;volatile
	line	28
	
l10849:	
;init.c: 28: WPUC = 0B01110000;
	movlw	(070h)
	movwf	(398)^0180h	;volatile
	line	29
	
l10851:	
;init.c: 29: WPUD = 0B00000110;
	movlw	(06h)
	movwf	(399)^0180h	;volatile
	line	31
	
l10853:	
;init.c: 31: WPDA = 0B00000001;
	movlw	(01h)
	movlb 4	; select bank4
	movwf	(524)^0200h	;volatile
	line	32
	
l10855:	
;init.c: 32: WPDB = 0B00000000;
	clrf	(525)^0200h	;volatile
	line	33
	
l10857:	
;init.c: 33: WPDC = 0B00000000;
	clrf	(526)^0200h	;volatile
	line	34
	
l10859:	
;init.c: 34: WPDD = 0B00000000;
	clrf	(527)^0200h	;volatile
	line	36
;init.c: 36: PSRC0 = 0B11111111;
	movlw	(0FFh)
	movlb 2	; select bank2
	movwf	(282)^0100h	;volatile
	line	40
;init.c: 40: PSRC1 = 0B11111111;
	movlw	(0FFh)
	movwf	(283)^0100h	;volatile
	line	44
;init.c: 44: PSINK0 = 0B11111111;
	movlw	(0FFh)
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	45
;init.c: 45: PSINK1 = 0B11111111;
	movlw	(0FFh)
	movwf	(411)^0180h	;volatile
	line	46
;init.c: 46: PSINK2 = 0B11111111;
	movlw	(0FFh)
	movwf	(412)^0180h	;volatile
	line	47
;init.c: 47: PSINK3 = 0B11111111;
	movlw	(0FFh)
	movwf	(413)^0180h	;volatile
	line	49
;init.c: 49: ANSELA = 0B00000111;
	movlw	(07h)
	movwf	(407)^0180h	;volatile
	line	51
	
l10861:	
;init.c: 51: RA0 = 0;
	movlb 0	; select bank0
	bcf	(96/8),(96)&7
	line	52
	
l10863:	
;init.c: 52: RC4 = RB3 = 0;
	bcf	(107/8),(107)&7
	bcf	(116/8),(116)&7
	line	53
	
l10865:	
;init.c: 53: RC5 = 0;RC6 = 0;
	bcf	(117/8),(117)&7
	
l10867:	
	bcf	(118/8),(118)&7
	line	55
	
l6145:	
	return
	opt stack 0
GLOBAL	__end_of_POWER_INITIAL
	__end_of_POWER_INITIAL:
;; =============== function _POWER_INITIAL ends ============

	signat	_POWER_INITIAL,88
	global	_ISR
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:

;; *************** function _ISR *****************
;; Defined at:
;;		line 31 in file "cd.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry
	file	"cd.C"
	line	31
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 12
; Regs used in _ISR: []
psect	intentry
	pagesel	$
	line	32
	
i1l10389:	
;cd.C: 32: if(EPIF0 & 0x01)
	movlb 0	; select bank0
	btfss	(20),(0)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l2062
u1_20:
	line	34
	
i1l10391:	
;cd.C: 33: {
;cd.C: 34: EPIF0 |= 0x01;
	bsf	(20)+(0/8),(0)&7	;volatile
	line	35
;cd.C: 35: PEIE = 0;
	bcf	(94/8),(94)&7
	line	36
;cd.C: 36: gl_st = 1;
	clrf	(_gl_st)
	incf	(_gl_st),f
	line	38
	
i1l2062:	
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	intentry
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
