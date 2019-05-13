opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F685
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
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_System_init
	FNCALL	_main,_GPIO_Init
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_PWM4_Init
	FNCALL	_main,_PWM5_Init
	FNCALL	_main,_switch_pwm
	FNCALL	_main,_isSwitchOn
	FNCALL	_main,_GetADCValue
	FNCALL	_main,_SetPWM_4_Duty
	FNCALL	_main,_SetPWM_5_Duty
	FNCALL	_isSwitchOn,_Delay_xms
	FNCALL	_isSwitchOn,_PWM5_Init
	FNCALL	_isSwitchOn,_PWM4_Init
	FNCALL	_ADC_Init,_Delay_xms
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_ADC_Value
	global	_PWM_SET
	global	_flag0
	global	_flag1
	global	_PSTRCON
psect	text211,local,class=CODE,delta=2
global __ptext211
__ptext211:
_PSTRCON	set	413
	DABS	1,413,1	;_PSTRCON

	global	_SRCON
_SRCON	set	414
	DABS	1,414,1	;_SRCON

	global	_C1SEN
_C1SEN	set	3317
	DABS	1,414,1	;_C1SEN

	global	_C2REN
_C2REN	set	3316
	DABS	1,414,1	;_C2REN

	global	_EEPGD
_EEPGD	set	3175
	DABS	1,396,1	;_EEPGD

	global	_PULSR
_PULSR	set	3314
	DABS	1,414,1	;_PULSR

	global	_PULSS
_PULSS	set	3315
	DABS	1,414,1	;_PULSS

	global	_SR0
_SR0	set	3318
	DABS	1,414,1	;_SR0

	global	_SR1
_SR1	set	3319
	DABS	1,414,1	;_SR1

	global	_STRA
_STRA	set	3304
	DABS	1,413,1	;_STRA

	global	_STRB
_STRB	set	3305
	DABS	1,413,1	;_STRB

	global	_STRC
_STRC	set	3306
	DABS	1,413,1	;_STRC

	global	_STRD
_STRD	set	3307
	DABS	1,413,1	;_STRD

	global	_STRSYNC
_STRSYNC	set	3308
	DABS	1,413,1	;_STRSYNC

	global	_WREN
_WREN	set	3170
	DABS	1,396,1	;_WREN

	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_WDTCON
_WDTCON	set	24
	global	_ADFM
_ADFM	set	255
	global	_ADON
_ADON	set	248
	global	_CARRY
_CARRY	set	24
	global	_CHS0
_CHS0	set	250
	global	_CHS1
_CHS1	set	251
	global	_CHS2
_CHS2	set	252
	global	_CM0
_CM0	set	200
	global	_CM1
_CM1	set	201
	global	_CM2
_CM2	set	202
	global	_GIE
_GIE	set	95
	global	_GO_DONE
_GO_DONE	set	249
	global	_PA6
_PA6	set	46
	global	_PC2
_PC2	set	58
	global	_PC3
_PC3	set	59
	global	_VCFG0
_VCFG0	set	253
	global	_ADRESL
_ADRESL	set	158
	global	_EEADR
_EEADR	set	155
	global	_EECON1
_EECON1	set	156
	global	_EECON2
_EECON2	set	157
	global	_EEDATA
_EEDATA	set	154
	global	_OPTION
_OPTION	set	129
	global	_OSCCON
_OSCCON	set	143
	global	_ADCS0
_ADCS0	set	1276
	global	_ADCS1
_ADCS1	set	1277
	global	_ADCS2
_ADCS2	set	1278
	global	_ANSEL0
_ANSEL0	set	1160
	global	_ANSEL1
_ANSEL1	set	1161
	global	_ANSEL2
_ANSEL2	set	1162
	global	_ANSEL3
_ANSEL3	set	1163
	global	_ANSEL4
_ANSEL4	set	1164
	global	_ANSEL5
_ANSEL5	set	1165
	global	_ANSEL6
_ANSEL6	set	1166
	global	_ANSEL7
_ANSEL7	set	1167
	global	_DIVS
_DIVS	set	1279
	global	_RD
_RD	set	1248
	global	_TRISA0
_TRISA0	set	1064
	global	_TRISA1
_TRISA1	set	1065
	global	_TRISA2
_TRISA2	set	1066
	global	_TRISA3
_TRISA3	set	1067
	global	_TRISA4
_TRISA4	set	1068
	global	_TRISA5
_TRISA5	set	1069
	global	_TRISA6
_TRISA6	set	1070
	global	_TRISA7
_TRISA7	set	1071
	global	_TRISC0
_TRISC0	set	1080
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC4
_TRISC4	set	1084
	global	_TRISC5
_TRISC5	set	1085
	global	_WPDA4
_WPDA4	set	1100
	global	_WPDC1
_WPDC1	set	1099
	global	_WPDC2
_WPDC2	set	1098
	global	_WPDC3
_WPDC3	set	1097
	global	_WPUA0
_WPUA0	set	1192
	global	_WPUA1
_WPUA1	set	1193
	global	_WPUA2
_WPUA2	set	1194
	global	_WPUA3
_WPUA3	set	1195
	global	_WPUA4
_WPUA4	set	1196
	global	_WPUA5
_WPUA5	set	1197
	global	_WPUA6
_WPUA6	set	1198
	global	_WPUA7
_WPUA7	set	1199
	global	_WPUC0
_WPUC0	set	1088
	global	_WPUC1
_WPUC1	set	1089
	global	_WPUC2
_WPUC2	set	1090
	global	_WPUC3
_WPUC3	set	1091
	global	_WPUC4
_WPUC4	set	1092
	global	_WPUC5
_WPUC5	set	1093
	global	_WR
_WR	set	1256
	global	_PR4L
_PR4L	set	276
	global	_PR5L
_PR5L	set	282
	global	_T4CKDIV
_T4CKDIV	set	279
	global	_T5CKDIV
_T5CKDIV	set	285
	global	_TMR4H
_TMR4H	set	275
	global	_TMR5H
_TMR5H	set	281
	global	_P4BZR
_P4BZR	set	2216
	global	_P4CKSRC0
_P4CKSRC0	set	2217
	global	_P4CKSRC1
_P4CKSRC1	set	2218
	global	_P4CKSRC2
_P4CKSRC2	set	2219
	global	_P4EN
_P4EN	set	2231
	global	_P4INTS
_P4INTS	set	2223
	global	_P4PER0
_P4PER0	set	2220
	global	_P4PER1
_P4PER1	set	2221
	global	_P4PER2
_P4PER2	set	2222
	global	_P4POL
_P4POL	set	2230
	global	_P5BZR
_P5BZR	set	2264
	global	_P5CKSRC0
_P5CKSRC0	set	2265
	global	_P5CKSRC1
_P5CKSRC1	set	2266
	global	_P5CKSRC2
_P5CKSRC2	set	2267
	global	_P5EN
_P5EN	set	2279
	global	_P5INTS
_P5INTS	set	2271
	global	_P5PER0
_P5PER0	set	2268
	global	_P5PER1
_P5PER1	set	2269
	global	_P5PER2
_P5PER2	set	2270
	global	_P5POL
_P5POL	set	2278
	global	_TMR4IE
_TMR4IE	set	2225
	global	_TMR4IF
_TMR4IF	set	2224
	global	_TMR4ON
_TMR4ON	set	2226
	global	_TMR4PS0
_TMR4PS0	set	2227
	global	_TMR4PS1
_TMR4PS1	set	2228
	global	_TMR4PS2
_TMR4PS2	set	2229
	global	_TMR5IE
_TMR5IE	set	2273
	global	_TMR5IF
_TMR5IF	set	2272
	global	_TMR5ON
_TMR5ON	set	2274
	global	_TMR5PS0
_TMR5PS0	set	2275
	global	_TMR5PS1
_TMR5PS1	set	2276
	global	_TMR5PS2
_TMR5PS2	set	2277
	file	"ms83f080_dcmotor.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_ADC_Value:
       ds      2

_flag0:
       ds      1

_flag1:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_PWM_SET:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_System_init
?_System_init:	; 0 bytes @ 0x0
	global	?_GPIO_Init
?_GPIO_Init:	; 0 bytes @ 0x0
	global	?_ADC_Init
?_ADC_Init:	; 0 bytes @ 0x0
	global	?_PWM4_Init
?_PWM4_Init:	; 0 bytes @ 0x0
	global	?_PWM5_Init
?_PWM5_Init:	; 0 bytes @ 0x0
	global	?_switch_pwm
?_switch_pwm:	; 0 bytes @ 0x0
	global	?_isSwitchOn
?_isSwitchOn:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	4
	global	??_System_init
??_System_init:	; 0 bytes @ 0x4
	global	??_GPIO_Init
??_GPIO_Init:	; 0 bytes @ 0x4
	global	??_PWM4_Init
??_PWM4_Init:	; 0 bytes @ 0x4
	global	??_PWM5_Init
??_PWM5_Init:	; 0 bytes @ 0x4
	global	??_switch_pwm
??_switch_pwm:	; 0 bytes @ 0x4
	global	?_SetPWM_4_Duty
?_SetPWM_4_Duty:	; 0 bytes @ 0x4
	global	?_SetPWM_5_Duty
?_SetPWM_5_Duty:	; 0 bytes @ 0x4
	global	?_Delay_xms
?_Delay_xms:	; 0 bytes @ 0x4
	global	?_GetADCValue
?_GetADCValue:	; 2 bytes @ 0x4
	global	Delay_xms@x
Delay_xms@x:	; 2 bytes @ 0x4
	global	SetPWM_5_Duty@duty
SetPWM_5_Duty@duty:	; 2 bytes @ 0x4
	global	SetPWM_4_Duty@duty
SetPWM_4_Duty@duty:	; 2 bytes @ 0x4
	ds	2
	global	??_GetADCValue
??_GetADCValue:	; 0 bytes @ 0x6
	global	??_SetPWM_4_Duty
??_SetPWM_4_Duty:	; 0 bytes @ 0x6
	global	??_SetPWM_5_Duty
??_SetPWM_5_Duty:	; 0 bytes @ 0x6
	global	??_Delay_xms
??_Delay_xms:	; 0 bytes @ 0x6
	ds	2
	global	GetADCValue@ADC_num
GetADCValue@ADC_num:	; 2 bytes @ 0x8
	global	Delay_xms@i
Delay_xms@i:	; 2 bytes @ 0x8
	ds	1
	global	SetPWM_5_Duty@dudata
SetPWM_5_Duty@dudata:	; 1 bytes @ 0x9
	global	SetPWM_4_Duty@dudata
SetPWM_4_Duty@dudata:	; 1 bytes @ 0x9
	ds	1
	global	??_ADC_Init
??_ADC_Init:	; 0 bytes @ 0xA
	global	??_isSwitchOn
??_isSwitchOn:	; 0 bytes @ 0xA
	global	??_main
??_main:	; 0 bytes @ 0xA
;;Data sizes: Strings 0, constant 0, data 0, bss 6, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      14
;; BANK0           80      0       2
;; BANK1           32      0       0

;;
;; Pointer list with targets:

;; ?_GetADCValue	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_GetADCValue
;;   _main->_SetPWM_4_Duty
;;   _main->_SetPWM_5_Duty
;;   _isSwitchOn->_Delay_xms
;;   _ADC_Init->_Delay_xms
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     165
;;                        _System_init
;;                          _GPIO_Init
;;                           _ADC_Init
;;                          _PWM4_Init
;;                          _PWM5_Init
;;                         _switch_pwm
;;                         _isSwitchOn
;;                        _GetADCValue
;;                      _SetPWM_4_Duty
;;                      _SetPWM_5_Duty
;; ---------------------------------------------------------------------------------
;; (1) _isSwitchOn                                           0     0      0      30
;;                          _Delay_xms
;;                          _PWM5_Init
;;                          _PWM4_Init
;; ---------------------------------------------------------------------------------
;; (1) _ADC_Init                                             0     0      0      30
;;                          _Delay_xms
;; ---------------------------------------------------------------------------------
;; (2) _Delay_xms                                            6     4      2      30
;;                                              4 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _SetPWM_5_Duty                                        6     4      2      30
;;                                              4 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _SetPWM_4_Duty                                        6     4      2      30
;;                                              4 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _GetADCValue                                          6     4      2      45
;;                                              4 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _switch_pwm                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _PWM5_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _PWM4_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _GPIO_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _System_init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _ISR                                                  4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _System_init
;;   _GPIO_Init
;;   _ADC_Init
;;     _Delay_xms
;;   _PWM4_Init
;;   _PWM5_Init
;;   _switch_pwm
;;   _isSwitchOn
;;     _Delay_xms
;;     _PWM5_Init
;;     _PWM4_Init
;;   _GetADCValue
;;   _SetPWM_4_Duty
;;   _SetPWM_5_Duty
;;
;; _ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      A       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;BITBANK0            50      0       0       3        0.0%
;;BANK0               50      0       2       4        2.5%
;;BITBANK1            20      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BANK1               20      0       0       6        0.0%
;;ABS                  0      0      10       7        0.0%
;;DATA                 0      0      12       8        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 47 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_System_init
;;		_GPIO_Init
;;		_ADC_Init
;;		_PWM4_Init
;;		_PWM5_Init
;;		_switch_pwm
;;		_isSwitchOn
;;		_GetADCValue
;;		_SetPWM_4_Duty
;;		_SetPWM_5_Duty
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"main.c"
	line	47
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	48
	
l7458:	
;main.c: 48: System_init();
	fcall	_System_init
	line	49
	
l7460:	
;main.c: 49: GPIO_Init();
	fcall	_GPIO_Init
	line	50
	
l7462:	
;main.c: 50: ADC_Init();
	fcall	_ADC_Init
	line	51
	
l7464:	
;main.c: 51: PWM4_Init();
	fcall	_PWM4_Init
	line	52
	
l7466:	
;main.c: 52: PWM5_Init();
	fcall	_PWM5_Init
	line	53
	
l7468:	
;main.c: 53: TMR4ON =0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2226/8)^0100h,(2226)&7
	line	54
	
l7470:	
;main.c: 54: TMR5ON =0;
	bcf	(2274/8)^0100h,(2274)&7
	line	55
;main.c: 55: switch_pwm();
	fcall	_switch_pwm
	goto	l7472
	line	56
;main.c: 56: while(1) {
	
l1092:	
	line	57
	
l7472:	
;main.c: 57: isSwitchOn();
	fcall	_isSwitchOn
	line	58
	
l7474:	
;main.c: 58: ADC_Value = GetADCValue();
	fcall	_GetADCValue
	movf	(1+(?_GetADCValue)),w
	clrf	(_ADC_Value+1)
	addwf	(_ADC_Value+1)
	movf	(0+(?_GetADCValue)),w
	clrf	(_ADC_Value)
	addwf	(_ADC_Value)

	line	59
	
l7476:	
;main.c: 59: if(ADC_Value <= 180)
	movlw	high(0B5h)
	subwf	(_ADC_Value+1),w
	movlw	low(0B5h)
	skipnz
	subwf	(_ADC_Value),w
	skipnc
	goto	u2341
	goto	u2340
u2341:
	goto	l7480
u2340:
	line	60
	
l7478:	
;main.c: 60: ADC_Value=0;
	clrf	(_ADC_Value)
	clrf	(_ADC_Value+1)
	goto	l7480
	
l1093:	
	line	61
	
l7480:	
;main.c: 61: if(ADC_Value >= 1023) ADC_Value=1023;
	movlw	high(03FFh)
	subwf	(_ADC_Value+1),w
	movlw	low(03FFh)
	skipnz
	subwf	(_ADC_Value),w
	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l7484
u2350:
	
l7482:	
	movlw	low(03FFh)
	movwf	(_ADC_Value)
	movlw	high(03FFh)
	movwf	((_ADC_Value))+1
	goto	l7484
	
l1094:	
	line	62
	
l7484:	
;main.c: 62: SetPWM_4_Duty(ADC_Value);
	movf	(_ADC_Value+1),w
	clrf	(?_SetPWM_4_Duty+1)
	addwf	(?_SetPWM_4_Duty+1)
	movf	(_ADC_Value),w
	clrf	(?_SetPWM_4_Duty)
	addwf	(?_SetPWM_4_Duty)

	fcall	_SetPWM_4_Duty
	line	63
	
l7486:	
;main.c: 63: SetPWM_5_Duty(ADC_Value);
	movf	(_ADC_Value+1),w
	clrf	(?_SetPWM_5_Duty+1)
	addwf	(?_SetPWM_5_Duty+1)
	movf	(_ADC_Value),w
	clrf	(?_SetPWM_5_Duty)
	addwf	(?_SetPWM_5_Duty)

	fcall	_SetPWM_5_Duty
	goto	l7472
	line	65
	
l1095:	
	line	56
	goto	l7472
	
l1096:	
	line	66
	
l1097:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_isSwitchOn
psect	text212,local,class=CODE,delta=2
global __ptext212
__ptext212:

;; *************** function _isSwitchOn *****************
;; Defined at:
;;		line 31 in file "mykey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Delay_xms
;;		_PWM5_Init
;;		_PWM4_Init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text212
	file	"mykey.c"
	line	31
	global	__size_of_isSwitchOn
	__size_of_isSwitchOn	equ	__end_of_isSwitchOn-_isSwitchOn
	
_isSwitchOn:	
	opt	stack 5
; Regs used in _isSwitchOn: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l7410:	
;mykey.c: 32: Delay_xms(20);
	movlw	low(014h)
	movwf	(?_Delay_xms)
	movlw	high(014h)
	movwf	((?_Delay_xms))+1
	fcall	_Delay_xms
	line	33
	
l7412:	
;mykey.c: 33: if(PA6 == 0) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(46/8),(46)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l7436
u2310:
	line	34
	
l7414:	
;mykey.c: 34: if(flag0==0) {
	movf	(_flag0),f
	skipz
	goto	u2321
	goto	u2320
u2321:
	goto	l4336
u2320:
	line	35
	
l7416:	
;mykey.c: 35: flag0=1;
	clrf	(_flag0)
	bsf	status,0
	rlf	(_flag0),f
	line	36
	
l7418:	
;mykey.c: 36: flag1=0;
	clrf	(_flag1)
	line	37
	
l7420:	
;mykey.c: 37: TMR4ON =0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2226/8)^0100h,(2226)&7
	line	38
	
l7422:	
;mykey.c: 38: TMR5ON =0;
	bcf	(2274/8)^0100h,(2274)&7
	line	39
	
l7424:	
;mykey.c: 39: P4EN=0;
	bcf	(2231/8)^0100h,(2231)&7
	line	40
	
l7426:	
;mykey.c: 40: P5EN=0;
	bcf	(2279/8)^0100h,(2279)&7
	line	41
	
l7428:	
;mykey.c: 41: PC3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	42
	
l7430:	
;mykey.c: 42: PC2=0;
	bcf	(58/8),(58)&7
	line	43
	
l7432:	
;mykey.c: 43: Delay_xms(50);
	movlw	low(032h)
	movwf	(?_Delay_xms)
	movlw	high(032h)
	movwf	((?_Delay_xms))+1
	fcall	_Delay_xms
	line	44
	
l7434:	
;mykey.c: 44: PWM5_Init();
	fcall	_PWM5_Init
	goto	l4336
	line	45
	
l4333:	
	line	46
;mykey.c: 45: }
;mykey.c: 46: } else {
	goto	l4336
	
l4332:	
	line	47
	
l7436:	
;mykey.c: 47: if(flag1 == 0) {
	movf	(_flag1),f
	skipz
	goto	u2331
	goto	u2330
u2331:
	goto	l4336
u2330:
	line	48
	
l7438:	
;mykey.c: 48: flag1=1;
	clrf	(_flag1)
	bsf	status,0
	rlf	(_flag1),f
	line	49
	
l7440:	
;mykey.c: 49: flag0=0;
	clrf	(_flag0)
	line	50
	
l7442:	
;mykey.c: 50: TMR4ON =0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2226/8)^0100h,(2226)&7
	line	51
	
l7444:	
;mykey.c: 51: TMR5ON =0;
	bcf	(2274/8)^0100h,(2274)&7
	line	52
	
l7446:	
;mykey.c: 52: P4EN=0;
	bcf	(2231/8)^0100h,(2231)&7
	line	53
	
l7448:	
;mykey.c: 53: P5EN=0;
	bcf	(2279/8)^0100h,(2279)&7
	line	54
	
l7450:	
;mykey.c: 54: PC3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	55
	
l7452:	
;mykey.c: 55: PC2=0;
	bcf	(58/8),(58)&7
	line	56
	
l7454:	
;mykey.c: 56: Delay_xms(50);
	movlw	low(032h)
	movwf	(?_Delay_xms)
	movlw	high(032h)
	movwf	((?_Delay_xms))+1
	fcall	_Delay_xms
	line	57
	
l7456:	
;mykey.c: 57: PWM4_Init();
	fcall	_PWM4_Init
	goto	l4336
	line	58
	
l4335:	
	goto	l4336
	line	59
	
l4334:	
	line	60
	
l4336:	
	return
	opt stack 0
GLOBAL	__end_of_isSwitchOn
	__end_of_isSwitchOn:
;; =============== function _isSwitchOn ends ============

	signat	_isSwitchOn,88
	global	_ADC_Init
psect	text213,local,class=CODE,delta=2
global __ptext213
__ptext213:

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 19 in file "myadc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Delay_xms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text213
	file	"myadc.c"
	line	19
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
	opt	stack 5
; Regs used in _ADC_Init: [wreg+status,2+status,0+pclath+cstack]
	line	21
	
l7390:	
;myadc.c: 21: TRISC1=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1081/8)^080h,(1081)&7
	line	22
;myadc.c: 22: ANSEL5=1;
	bsf	(1165/8)^080h,(1165)&7
	line	25
;myadc.c: 25: DIVS=0;
	bcf	(1279/8)^080h,(1279)&7
	line	26
;myadc.c: 26: ADCS0=0;
	bcf	(1276/8)^080h,(1276)&7
	line	27
;myadc.c: 27: ADCS1=0;
	bcf	(1277/8)^080h,(1277)&7
	line	28
;myadc.c: 28: ADCS2=0;
	bcf	(1278/8)^080h,(1278)&7
	line	30
	
l7392:	
;myadc.c: 30: ADCON0=0B10000001;
	movlw	(081h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	31
	
l7394:	
;myadc.c: 31: VCFG0=0;
	bcf	(253/8),(253)&7
	line	32
	
l7396:	
;myadc.c: 32: CHS0=1;
	bsf	(250/8),(250)&7
	line	33
	
l7398:	
;myadc.c: 33: CHS1=0;
	bcf	(251/8),(251)&7
	line	34
	
l7400:	
;myadc.c: 34: CHS2=1;
	bsf	(252/8),(252)&7
	line	35
	
l7402:	
;myadc.c: 35: ADFM=1;
	bsf	(255/8),(255)&7
	line	36
	
l7404:	
;myadc.c: 36: ADON=1;
	bsf	(248/8),(248)&7
	line	38
	
l7406:	
;myadc.c: 38: Delay_xms(1);
	movlw	low(01h)
	movwf	(?_Delay_xms)
	movlw	high(01h)
	movwf	((?_Delay_xms))+1
	fcall	_Delay_xms
	line	39
	
l7408:	
;myadc.c: 39: GO_DONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	40
	
l2166:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
;; =============== function _ADC_Init ends ============

	signat	_ADC_Init,88
	global	_Delay_xms
psect	text214,local,class=CODE,delta=2
global __ptext214
__ptext214:

;; *************** function _Delay_xms *****************
;; Defined at:
;;		line 90 in file "myconfiguration.c"
;; Parameters:    Size  Location     Type
;;  x               2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    8[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         2       0       0
;;      Temps:          2       0       0
;;      Totals:         6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ADC_Init
;;		_isSwitchOn
;; This function uses a non-reentrant model
;;
psect	text214
	file	"myconfiguration.c"
	line	90
	global	__size_of_Delay_xms
	__size_of_Delay_xms	equ	__end_of_Delay_xms-_Delay_xms
	
_Delay_xms:	
	opt	stack 5
; Regs used in _Delay_xms: [wreg+status,2]
	line	92
	
l7386:	
;myconfiguration.c: 91: unsigned int i;
;myconfiguration.c: 92: for(i=0; i<x; i++) {
	clrf	(Delay_xms@i)
	clrf	(Delay_xms@i+1)
	goto	l3248
	
l3249:	
	line	93
	
l7388:	
;myconfiguration.c: 93: _delay((unsigned long)((1)*(16000000/4000.0)));
	opt asmopt_off
movlw	6
movwf	((??_Delay_xms+0)+0+1),f
	movlw	48
movwf	((??_Delay_xms+0)+0),f
u2367:
	decfsz	((??_Delay_xms+0)+0),f
	goto	u2367
	decfsz	((??_Delay_xms+0)+0+1),f
	goto	u2367
	clrwdt
opt asmopt_on

	line	92
	movlw	low(01h)
	addwf	(Delay_xms@i),f
	skipnc
	incf	(Delay_xms@i+1),f
	movlw	high(01h)
	addwf	(Delay_xms@i+1),f
	
l3248:	
	movf	(Delay_xms@x+1),w
	subwf	(Delay_xms@i+1),w
	skipz
	goto	u2305
	movf	(Delay_xms@x),w
	subwf	(Delay_xms@i),w
u2305:
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l7388
u2300:
	goto	l3251
	
l3250:	
	line	96
	
l3251:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_xms
	__end_of_Delay_xms:
;; =============== function _Delay_xms ends ============

	signat	_Delay_xms,4216
	global	_SetPWM_5_Duty
psect	text215,local,class=CODE,delta=2
global __ptext215
__ptext215:

;; *************** function _SetPWM_5_Duty *****************
;; Defined at:
;;		line 12 in file "mypwm.c"
;; Parameters:    Size  Location     Type
;;  duty            2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  dudata          1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         1       0       0
;;      Temps:          3       0       0
;;      Totals:         6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text215
	file	"mypwm.c"
	line	12
	global	__size_of_SetPWM_5_Duty
	__size_of_SetPWM_5_Duty	equ	__end_of_SetPWM_5_Duty-_SetPWM_5_Duty
	
_SetPWM_5_Duty:	
	opt	stack 6
; Regs used in _SetPWM_5_Duty: [wreg+status,2+status,0]
	line	13
	
l6508:	
;mypwm.c: 13: unsigned char dudata=0;
	clrf	(SetPWM_5_Duty@dudata)
	line	15
	
l6510:	
;mypwm.c: 15: dudata = (unsigned char)(duty/4);
	movf	(SetPWM_5_Duty@duty+1),w
	movwf	(??_SetPWM_5_Duty+0)+0+1
	movf	(SetPWM_5_Duty@duty),w
	movwf	(??_SetPWM_5_Duty+0)+0
	movlw	02h
u65:
	clrc
	rrf	(??_SetPWM_5_Duty+0)+1,f
	rrf	(??_SetPWM_5_Duty+0)+0,f
	addlw	-1
	skipz
	goto	u65
	movf	0+(??_SetPWM_5_Duty+0)+0,w
	movwf	(??_SetPWM_5_Duty+2)+0
	movf	(??_SetPWM_5_Duty+2)+0,w
	movwf	(SetPWM_5_Duty@dudata)
	line	16
	
l6512:	
;mypwm.c: 16: TMR5H=0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(281)^0100h	;volatile
	line	17
	
l6514:	
;mypwm.c: 17: PR5L=dudata;
	movf	(SetPWM_5_Duty@dudata),w
	movwf	(282)^0100h	;volatile
	line	18
	
l5406:	
	return
	opt stack 0
GLOBAL	__end_of_SetPWM_5_Duty
	__end_of_SetPWM_5_Duty:
;; =============== function _SetPWM_5_Duty ends ============

	signat	_SetPWM_5_Duty,4216
	global	_SetPWM_4_Duty
psect	text216,local,class=CODE,delta=2
global __ptext216
__ptext216:

;; *************** function _SetPWM_4_Duty *****************
;; Defined at:
;;		line 21 in file "mypwm.c"
;; Parameters:    Size  Location     Type
;;  duty            2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  dudata          1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         1       0       0
;;      Temps:          3       0       0
;;      Totals:         6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text216
	file	"mypwm.c"
	line	21
	global	__size_of_SetPWM_4_Duty
	__size_of_SetPWM_4_Duty	equ	__end_of_SetPWM_4_Duty-_SetPWM_4_Duty
	
_SetPWM_4_Duty:	
	opt	stack 6
; Regs used in _SetPWM_4_Duty: [wreg+status,2+status,0]
	line	22
	
l6500:	
;mypwm.c: 22: unsigned char dudata=0;
	clrf	(SetPWM_4_Duty@dudata)
	line	24
	
l6502:	
;mypwm.c: 24: dudata = (unsigned char)(duty/4);
	movf	(SetPWM_4_Duty@duty+1),w
	movwf	(??_SetPWM_4_Duty+0)+0+1
	movf	(SetPWM_4_Duty@duty),w
	movwf	(??_SetPWM_4_Duty+0)+0
	movlw	02h
u55:
	clrc
	rrf	(??_SetPWM_4_Duty+0)+1,f
	rrf	(??_SetPWM_4_Duty+0)+0,f
	addlw	-1
	skipz
	goto	u55
	movf	0+(??_SetPWM_4_Duty+0)+0,w
	movwf	(??_SetPWM_4_Duty+2)+0
	movf	(??_SetPWM_4_Duty+2)+0,w
	movwf	(SetPWM_4_Duty@dudata)
	line	25
	
l6504:	
;mypwm.c: 25: TMR4H=0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(275)^0100h	;volatile
	line	26
	
l6506:	
;mypwm.c: 26: PR4L=dudata;
	movf	(SetPWM_4_Duty@dudata),w
	movwf	(276)^0100h	;volatile
	line	27
	
l5409:	
	return
	opt stack 0
GLOBAL	__end_of_SetPWM_4_Duty
	__end_of_SetPWM_4_Duty:
;; =============== function _SetPWM_4_Duty ends ============

	signat	_SetPWM_4_Duty,4216
	global	_GetADCValue
psect	text217,local,class=CODE,delta=2
global __ptext217
__ptext217:

;; *************** function _GetADCValue *****************
;; Defined at:
;;		line 43 in file "myadc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ADC_num         2    8[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         2       0       0
;;      Temps:          2       0       0
;;      Totals:         6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text217
	file	"myadc.c"
	line	43
	global	__size_of_GetADCValue
	__size_of_GetADCValue	equ	__end_of_GetADCValue-_GetADCValue
	
_GetADCValue:	
	opt	stack 6
; Regs used in _GetADCValue: [wreg+status,2+status,0]
	line	44
	
l6490:	
;myadc.c: 44: unsigned int ADC_num=0;
	clrf	(GetADCValue@ADC_num)
	clrf	(GetADCValue@ADC_num+1)
	line	46
;myadc.c: 46: while(GO_DONE) asm("clrwdt");
	goto	l2169
	
l2170:	
# 46 "myadc.c"
clrwdt ;#
psect	text217
	
l2169:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(249/8),(249)&7
	goto	u41
	goto	u40
u41:
	goto	l2170
u40:
	goto	l6492
	
l2171:	
	line	47
	
l6492:	
;myadc.c: 47: ADC_num=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_GetADCValue+0)+0
	clrf	(??_GetADCValue+0)+0+1
	movf	0+(??_GetADCValue+0)+0,w
	movwf	(GetADCValue@ADC_num)
	movf	1+(??_GetADCValue+0)+0,w
	movwf	(GetADCValue@ADC_num+1)
	line	48
;myadc.c: 48: ADC_num=ADC_num<<8;
	movf	(GetADCValue@ADC_num),w
	movwf	(??_GetADCValue+0)+0+1
	clrf	(??_GetADCValue+0)+0
	movf	0+(??_GetADCValue+0)+0,w
	movwf	(GetADCValue@ADC_num)
	movf	1+(??_GetADCValue+0)+0,w
	movwf	(GetADCValue@ADC_num+1)
	line	49
;myadc.c: 49: ADC_num=ADC_num|ADRESL;
	movf	(GetADCValue@ADC_num),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(158)^080h,w	;volatile
	movwf	(GetADCValue@ADC_num)
	movf	(GetADCValue@ADC_num+1),w
	movwf	1+(GetADCValue@ADC_num)
	line	50
	
l6494:	
;myadc.c: 50: GO_DONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	51
	
l6496:	
;myadc.c: 51: return ADC_num;
	movf	(GetADCValue@ADC_num+1),w
	clrf	(?_GetADCValue+1)
	addwf	(?_GetADCValue+1)
	movf	(GetADCValue@ADC_num),w
	clrf	(?_GetADCValue)
	addwf	(?_GetADCValue)

	goto	l2172
	
l6498:	
	line	52
	
l2172:	
	return
	opt stack 0
GLOBAL	__end_of_GetADCValue
	__end_of_GetADCValue:
;; =============== function _GetADCValue ends ============

	signat	_GetADCValue,90
	global	_switch_pwm
psect	text218,local,class=CODE,delta=2
global __ptext218
__ptext218:

;; *************** function _switch_pwm *****************
;; Defined at:
;;		line 63 in file "mykey.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text218
	file	"mykey.c"
	line	63
	global	__size_of_switch_pwm
	__size_of_switch_pwm	equ	__end_of_switch_pwm-_switch_pwm
	
_switch_pwm:	
	opt	stack 6
; Regs used in _switch_pwm: []
	line	64
	
l6486:	
;mykey.c: 64: if(PA6 == 0) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(46/8),(46)&7
	goto	u31
	goto	u30
u31:
	goto	l4339
u30:
	line	65
	
l6488:	
;mykey.c: 65: TMR4ON =0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2226/8)^0100h,(2226)&7
	line	66
;mykey.c: 66: TMR5ON =1;
	bsf	(2274/8)^0100h,(2274)&7
	line	67
;mykey.c: 67: } else {
	goto	l4341
	
l4339:	
	line	68
;mykey.c: 68: TMR4ON =1;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bsf	(2226/8)^0100h,(2226)&7
	line	69
;mykey.c: 69: TMR5ON =0;
	bcf	(2274/8)^0100h,(2274)&7
	goto	l4341
	line	70
	
l4340:	
	line	71
	
l4341:	
	return
	opt stack 0
GLOBAL	__end_of_switch_pwm
	__end_of_switch_pwm:
;; =============== function _switch_pwm ends ============

	signat	_switch_pwm,88
	global	_PWM5_Init
psect	text219,local,class=CODE,delta=2
global __ptext219
__ptext219:

;; *************** function _PWM5_Init *****************
;; Defined at:
;;		line 29 in file "mypwm.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_isSwitchOn
;; This function uses a non-reentrant model
;;
psect	text219
	file	"mypwm.c"
	line	29
	global	__size_of_PWM5_Init
	__size_of_PWM5_Init	equ	__end_of_PWM5_Init-_PWM5_Init
	
_PWM5_Init:	
	opt	stack 5
; Regs used in _PWM5_Init: [wreg+status,2]
	line	30
	
l6474:	
;mypwm.c: 30: TRISC2=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1082/8)^080h,(1082)&7
	line	32
;mypwm.c: 32: P5INTS=0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2271/8)^0100h,(2271)&7
	line	33
;mypwm.c: 33: P5PER0=1;
	bsf	(2268/8)^0100h,(2268)&7
	line	34
;mypwm.c: 34: P5PER1=1;
	bsf	(2269/8)^0100h,(2269)&7
	line	35
;mypwm.c: 35: P5PER2=0;
	bcf	(2270/8)^0100h,(2270)&7
	line	36
;mypwm.c: 36: P5CKSRC0=1;
	bsf	(2265/8)^0100h,(2265)&7
	line	37
;mypwm.c: 37: P5CKSRC1=0;
	bcf	(2266/8)^0100h,(2266)&7
	line	38
;mypwm.c: 38: P5CKSRC2=0;
	bcf	(2267/8)^0100h,(2267)&7
	line	39
;mypwm.c: 39: P5BZR=0;
	bcf	(2264/8)^0100h,(2264)&7
	line	41
;mypwm.c: 41: P5EN=1;
	bsf	(2279/8)^0100h,(2279)&7
	line	42
;mypwm.c: 42: P5POL=0;
	bcf	(2278/8)^0100h,(2278)&7
	line	43
;mypwm.c: 43: TMR5PS0=0;
	bcf	(2275/8)^0100h,(2275)&7
	line	44
;mypwm.c: 44: TMR5PS1=0;
	bcf	(2276/8)^0100h,(2276)&7
	line	45
;mypwm.c: 45: TMR5PS2=1;
	bsf	(2277/8)^0100h,(2277)&7
	line	46
;mypwm.c: 46: TMR5ON=0;
	bcf	(2274/8)^0100h,(2274)&7
	line	47
;mypwm.c: 47: TMR5IE=0;
	bcf	(2273/8)^0100h,(2273)&7
	line	48
;mypwm.c: 48: TMR5IF=0;
	bcf	(2272/8)^0100h,(2272)&7
	line	50
	
l6476:	
;mypwm.c: 50: T5CKDIV=3;
	movlw	(03h)
	movwf	(285)^0100h	;volatile
	line	52
	
l6478:	
;mypwm.c: 52: TMR5H=0;
	clrf	(281)^0100h	;volatile
	line	53
	
l6480:	
;mypwm.c: 53: PR5L=125;
	movlw	(07Dh)
	movwf	(282)^0100h	;volatile
	line	55
	
l6482:	
;mypwm.c: 55: TMR5IF=0;
	bcf	(2272/8)^0100h,(2272)&7
	line	56
	
l6484:	
;mypwm.c: 56: TMR5ON=1;
	bsf	(2274/8)^0100h,(2274)&7
	line	57
;mypwm.c: 57: while(TMR5IF==0) asm("clrwdt");
	goto	l5412
	
l5413:	
# 57 "mypwm.c"
clrwdt ;#
psect	text219
	
l5412:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2272/8)^0100h,(2272)&7
	goto	u21
	goto	u20
u21:
	goto	l5413
u20:
	
l5414:	
	line	58
;mypwm.c: 58: TRISC2=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1082/8)^080h,(1082)&7
	line	62
	
l5415:	
	return
	opt stack 0
GLOBAL	__end_of_PWM5_Init
	__end_of_PWM5_Init:
;; =============== function _PWM5_Init ends ============

	signat	_PWM5_Init,88
	global	_PWM4_Init
psect	text220,local,class=CODE,delta=2
global __ptext220
__ptext220:

;; *************** function _PWM4_Init *****************
;; Defined at:
;;		line 65 in file "mypwm.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_isSwitchOn
;; This function uses a non-reentrant model
;;
psect	text220
	file	"mypwm.c"
	line	65
	global	__size_of_PWM4_Init
	__size_of_PWM4_Init	equ	__end_of_PWM4_Init-_PWM4_Init
	
_PWM4_Init:	
	opt	stack 5
; Regs used in _PWM4_Init: [wreg+status,2]
	line	66
	
l6462:	
;mypwm.c: 66: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	68
;mypwm.c: 68: P4INTS=0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2223/8)^0100h,(2223)&7
	line	69
;mypwm.c: 69: P4PER0=1;
	bsf	(2220/8)^0100h,(2220)&7
	line	70
;mypwm.c: 70: P4PER1=1;
	bsf	(2221/8)^0100h,(2221)&7
	line	71
;mypwm.c: 71: P4PER2=0;
	bcf	(2222/8)^0100h,(2222)&7
	line	72
;mypwm.c: 72: P4CKSRC0=1;
	bsf	(2217/8)^0100h,(2217)&7
	line	73
;mypwm.c: 73: P4CKSRC1=0;
	bcf	(2218/8)^0100h,(2218)&7
	line	74
;mypwm.c: 74: P4CKSRC2=0;
	bcf	(2219/8)^0100h,(2219)&7
	line	75
;mypwm.c: 75: P4BZR=0;
	bcf	(2216/8)^0100h,(2216)&7
	line	77
;mypwm.c: 77: P4EN=1;
	bsf	(2231/8)^0100h,(2231)&7
	line	78
;mypwm.c: 78: P4POL=0;
	bcf	(2230/8)^0100h,(2230)&7
	line	79
;mypwm.c: 79: TMR4PS0=0;
	bcf	(2227/8)^0100h,(2227)&7
	line	80
;mypwm.c: 80: TMR4PS1=0;
	bcf	(2228/8)^0100h,(2228)&7
	line	81
;mypwm.c: 81: TMR4PS2=1;
	bsf	(2229/8)^0100h,(2229)&7
	line	82
;mypwm.c: 82: TMR4ON=0;
	bcf	(2226/8)^0100h,(2226)&7
	line	83
;mypwm.c: 83: TMR4IE=0;
	bcf	(2225/8)^0100h,(2225)&7
	line	84
;mypwm.c: 84: TMR4IF=0;
	bcf	(2224/8)^0100h,(2224)&7
	line	86
	
l6464:	
;mypwm.c: 86: T4CKDIV=3;
	movlw	(03h)
	movwf	(279)^0100h	;volatile
	line	88
	
l6466:	
;mypwm.c: 88: TMR4H=0;
	clrf	(275)^0100h	;volatile
	line	89
	
l6468:	
;mypwm.c: 89: PR4L=125;
	movlw	(07Dh)
	movwf	(276)^0100h	;volatile
	line	92
	
l6470:	
;mypwm.c: 92: TMR4IF=0;
	bcf	(2224/8)^0100h,(2224)&7
	line	93
	
l6472:	
;mypwm.c: 93: TMR4ON=1;
	bsf	(2226/8)^0100h,(2226)&7
	line	94
;mypwm.c: 94: while(TMR4IF==0) asm("clrwdt");
	goto	l5418
	
l5419:	
# 94 "mypwm.c"
clrwdt ;#
psect	text220
	
l5418:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2224/8)^0100h,(2224)&7
	goto	u11
	goto	u10
u11:
	goto	l5419
u10:
	
l5420:	
	line	95
;mypwm.c: 95: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	line	97
	
l5421:	
	return
	opt stack 0
GLOBAL	__end_of_PWM4_Init
	__end_of_PWM4_Init:
;; =============== function _PWM4_Init ends ============

	signat	_PWM4_Init,88
	global	_GPIO_Init
psect	text221,local,class=CODE,delta=2
global __ptext221
__ptext221:

;; *************** function _GPIO_Init *****************
;; Defined at:
;;		line 34 in file "myconfiguration.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text221
	file	"myconfiguration.c"
	line	34
	global	__size_of_GPIO_Init
	__size_of_GPIO_Init	equ	__end_of_GPIO_Init-_GPIO_Init
	
_GPIO_Init:	
	opt	stack 6
; Regs used in _GPIO_Init: []
	line	36
	
l6460:	
;myconfiguration.c: 36: TRISA0=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1064/8)^080h,(1064)&7
	line	37
;myconfiguration.c: 37: TRISA1=0;
	bcf	(1065/8)^080h,(1065)&7
	line	38
;myconfiguration.c: 38: TRISA2=0;
	bcf	(1066/8)^080h,(1066)&7
	line	39
;myconfiguration.c: 39: TRISA3=0;
	bcf	(1067/8)^080h,(1067)&7
	line	40
;myconfiguration.c: 40: TRISA4=0;
	bcf	(1068/8)^080h,(1068)&7
	line	41
;myconfiguration.c: 41: TRISA5=0;
	bcf	(1069/8)^080h,(1069)&7
	line	42
;myconfiguration.c: 42: TRISA6=1;
	bsf	(1070/8)^080h,(1070)&7
	line	43
;myconfiguration.c: 43: TRISA7=0;
	bcf	(1071/8)^080h,(1071)&7
	line	45
;myconfiguration.c: 45: TRISC0=0;
	bcf	(1080/8)^080h,(1080)&7
	line	46
;myconfiguration.c: 46: TRISC1=0;
	bcf	(1081/8)^080h,(1081)&7
	line	47
;myconfiguration.c: 47: TRISC2=0;
	bcf	(1082/8)^080h,(1082)&7
	line	48
;myconfiguration.c: 48: TRISC3=0;
	bcf	(1083/8)^080h,(1083)&7
	line	49
;myconfiguration.c: 49: TRISC4=0;
	bcf	(1084/8)^080h,(1084)&7
	line	50
;myconfiguration.c: 50: TRISC5=0;
	bcf	(1085/8)^080h,(1085)&7
	line	52
;myconfiguration.c: 52: CM0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(200/8),(200)&7
	line	53
;myconfiguration.c: 53: CM1=1;
	bsf	(201/8),(201)&7
	line	54
;myconfiguration.c: 54: CM2=1;
	bsf	(202/8),(202)&7
	line	58
;myconfiguration.c: 58: ANSEL0=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1160/8)^080h,(1160)&7
	line	59
;myconfiguration.c: 59: ANSEL1=0;
	bcf	(1161/8)^080h,(1161)&7
	line	60
;myconfiguration.c: 60: ANSEL2=0;
	bcf	(1162/8)^080h,(1162)&7
	line	61
;myconfiguration.c: 61: ANSEL3=0;
	bcf	(1163/8)^080h,(1163)&7
	line	62
;myconfiguration.c: 62: ANSEL4=0;
	bcf	(1164/8)^080h,(1164)&7
	line	63
;myconfiguration.c: 63: ANSEL5=0;
	bcf	(1165/8)^080h,(1165)&7
	line	64
;myconfiguration.c: 64: ANSEL6=0;
	bcf	(1166/8)^080h,(1166)&7
	line	65
;myconfiguration.c: 65: ANSEL7=0;
	bcf	(1167/8)^080h,(1167)&7
	line	67
;myconfiguration.c: 67: WPUA0=1;
	bsf	(1192/8)^080h,(1192)&7
	line	68
;myconfiguration.c: 68: WPUA1=1;
	bsf	(1193/8)^080h,(1193)&7
	line	69
;myconfiguration.c: 69: WPUA2=1;
	bsf	(1194/8)^080h,(1194)&7
	line	70
;myconfiguration.c: 70: WPUA3=1;
	bsf	(1195/8)^080h,(1195)&7
	line	71
;myconfiguration.c: 71: WPUA4=1;
	bsf	(1196/8)^080h,(1196)&7
	line	72
;myconfiguration.c: 72: WPUA5=1;
	bsf	(1197/8)^080h,(1197)&7
	line	73
;myconfiguration.c: 73: WPUA6=1;
	bsf	(1198/8)^080h,(1198)&7
	line	74
;myconfiguration.c: 74: WPUA7=1;
	bsf	(1199/8)^080h,(1199)&7
	line	76
;myconfiguration.c: 76: WPUC0=0;
	bcf	(1088/8)^080h,(1088)&7
	line	77
;myconfiguration.c: 77: WPUC1=1;
	bsf	(1089/8)^080h,(1089)&7
	line	78
;myconfiguration.c: 78: WPUC2=1;
	bsf	(1090/8)^080h,(1090)&7
	line	79
;myconfiguration.c: 79: WPUC3=1;
	bsf	(1091/8)^080h,(1091)&7
	line	80
;myconfiguration.c: 80: WPUC4=1;
	bsf	(1092/8)^080h,(1092)&7
	line	81
;myconfiguration.c: 81: WPUC5=1;
	bsf	(1093/8)^080h,(1093)&7
	line	83
;myconfiguration.c: 83: WPDA4=0;
	bcf	(1100/8)^080h,(1100)&7
	line	84
;myconfiguration.c: 84: WPDC1=0;
	bcf	(1099/8)^080h,(1099)&7
	line	85
;myconfiguration.c: 85: WPDC2=0;
	bcf	(1098/8)^080h,(1098)&7
	line	86
;myconfiguration.c: 86: WPDC3=0;
	bcf	(1097/8)^080h,(1097)&7
	line	87
	
l3245:	
	return
	opt stack 0
GLOBAL	__end_of_GPIO_Init
	__end_of_GPIO_Init:
;; =============== function _GPIO_Init ends ============

	signat	_GPIO_Init,88
	global	_System_init
psect	text222,local,class=CODE,delta=2
global __ptext222
__ptext222:

;; *************** function _System_init *****************
;; Defined at:
;;		line 21 in file "myconfiguration.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text222
	file	"myconfiguration.c"
	line	21
	global	__size_of_System_init
	__size_of_System_init	equ	__end_of_System_init-_System_init
	
_System_init:	
	opt	stack 6
; Regs used in _System_init: [wreg+status,2]
	line	22
	
l6454:	
;myconfiguration.c: 22: OPTION = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	line	23
	
l6456:	
;myconfiguration.c: 23: OSCCON = 0x70;
	movlw	(070h)
	movwf	(143)^080h	;volatile
	line	24
	
l6458:	
;myconfiguration.c: 24: WDTCON = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(24)	;volatile
	line	25
	
l3242:	
	return
	opt stack 0
GLOBAL	__end_of_System_init
	__end_of_System_init:
;; =============== function _System_init ends ============

	signat	_System_init,88
	global	_ISR
psect	text223,local,class=CODE,delta=2
global __ptext223
__ptext223:

;; *************** function _ISR *****************
;; Defined at:
;;		line 37 in file "main.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          4       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text223
	file	"main.c"
	line	37
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 5
; Regs used in _ISR: []
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text223
	line	38
	
i1l1089:	
	movf	(??_ISR+3),w
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	text224,local,class=CODE,delta=2
global __ptext224
__ptext224:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
