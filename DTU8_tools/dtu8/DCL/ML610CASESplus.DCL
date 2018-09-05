;;*********************************************************
;;   DCL FILE for ML610CAS, Ver.1.00
;;   Copyright (C) 2012 LAPIS SEMICONDUCTOR CO., LTD.
;;
;;   Last Edition  Jun 08, 2012
;;*********************************************************

#CORE           "nX-U8/100"
#REVISION       "A3"
#TARGET         "ML610CASESplus"
#VERSION        "1.00"

;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;       MEMORY RANGE
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;Program memory space (physical segment #0)
#ROM    0H , 2FFFFH
        SWI_VECTOR  00000H  , 000FFH
        CODE        00100H  , 2FFFFH

;Data memory space (physical segment #0)
#RAM    0H , 8FFFFH
        DATA        08000H  , 8FFFFH
	SFR         0F000H  , 0FFFFH
;;                  start_adr end_adr   WINVAL
        ROMWINDOW   00000H  , 07FFFH    , 0FFH ; WINVAL is dummy

;;definition of physical segment #1 and over memory space

;; #EXTEND  cs_max, ds_max
;;      cs_max : number of physical segment for Program memory
;;      ds_max : number of physical segment for Data memory

#EXTEND  2, 16


;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;       CODE ADDRESS SYMBOLS
;
;       definition of CODE type symbols
;       - SYNTAX -
;       #DEFCODE
;               Symbol  Code_Address
;               ....................
;+++++++++++++++++++++++++++++++++++++++++++++++++++++

#DEFCODE
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;       VECTOR AREA
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
        WDTINT          0008H
        P00INT          0010H
        P01INT          0012H
        P02INT          0014H
        P03INT          0016H
        P04INT          0018H
        P05INT          001AH
        SIO0INT         0020H
        SADINT          0024H
        I2C1INT         002CH
        I2C0INT         002EH
        TM0INT          0030H
        TM1INT          0032H
        TM4INT          0034H
        TM5INT          0036H
        UA0INT          0040H
        UA1INT          0042H
        TM2INT          0058H
        TM3INT          005AH
        TM6INT          005CH
        TM7INT          005EH
        PW0INT          0060H
        PW1INT          0062H
        T128HINT        006AH
        T32HINT         006EH
        T16HINT         0070H
        T2HINT          0076H

;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;       DATA ADDRESS SYMBOLS
;
;       definition of DATA type symbols
;
;       - SYNTAX -
;       #DEFDATA
;               Symbol  Data_Address
;               ....................
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#DEFDATA
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;       SFR AREA
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
          DSR             0F000H
          RSTAT           0F001H
        FCON            0F002H
          FCON0           0F002H
          FCON1           0F003H
          STPACP          0F008H
          SBYCON          0F009H
          LTBR            0F00AH
          HTBDR           0F00BH
        LTBADJ          0F00CH
          LTBADJL         0F00CH
          LTBADJH         0F00DH
          WDTCON          0F00EH
          WDTMOD          0F00FH
          IE1             0F011H
          IE2             0F012H
          IE3             0F013H
          IE4             0F014H
          IE5             0F015H
          IE6             0F016H
          IE7             0F017H
          IRQ0            0F018H
          IRQ1            0F019H
          IRQ2            0F01AH
          IRQ3            0F01BH
          IRQ4            0F01CH
          IRQ5            0F01DH
          IRQ6            0F01EH
          IRQ7            0F01FH
          EXICON0         0F020H
          EXICON1         0F021H
          EXICON2         0F022H
          BLKCON0         0F028H
          BLKCON1         0F029H
          BLKCON2         0F02AH
          BLKCON4         0F02CH
        TM0DC           0F030H
          TM0D            0F030H
          TM0C            0F031H
        TM0CON          0F032H
          TM0CON0         0F032H
          TM0CON1         0F033H
        TM1DC           0F034H
          TM1D            0F034H
          TM1C            0F035H
        TM1CON          0F036H
          TM1CON0         0F036H
          TM1CON1         0F037H
        TM2DC           0F038H
          TM2D            0F038H
          TM2C            0F039H
        TM2CON          0F03AH
          TM2CON0         0F03AH
          TM2CON1         0F03BH
        TM3DC           0F03CH
          TM3D            0F03CH
          TM3C            0F03DH
        TM3CON          0F03EH
          TM3CON0         0F03EH
          TM3CON1         0F03FH
        TM4DC           0F040H
          TM4D            0F040H
          TM4C            0F041H
        TM4CON          0F042H
          TM4CON0         0F042H
          TM4CON1         0F043H
        TM5DC           0F044H
          TM5D            0F044H
          TM5C            0F045H
        TM5CON          0F046H
          TM5CON0         0F046H
          TM5CON1         0F047H
        TM6DC           0F048H
          TM6D            0F048H
          TM6C            0F049H
        TM6CON          0F04AH
          TM6CON0         0F04AH
          TM6CON1         0F04BH
        TM7DC           0F04CH
          TM7D            0F04CH
          TM7C            0F04DH
        TM7CON          0F04EH
          TM7CON0         0F04EH
          TM7CON1         0F04FH
        PW0P            0F0A0H
          PW0PL           0F0A0H
          PW0PH           0F0A1H
        PW0D            0F0A2H
          PW0DL           0F0A2H
          PW0DH           0F0A3H
        PW0C            0F0A4H
          PW0CL           0F0A4H
          PW0CH           0F0A5H
        PW0CON          0F0A6H
          PW0CON0         0F0A6H
          PW0CON1         0F0A7H
        PW1P            0F0A8H
          PW1PL           0F0A8H
          PW1PH           0F0A9H
        PW1D            0F0AAH
          PW1DL           0F0AAH
          PW1DH           0F0ABH
        PW1C            0F0ACH
          PW1CL           0F0ACH
          PW1CH           0F0ADH
        PW1CON          0F0AEH
          PW1CON0         0F0AEH
          PW1CON1         0F0AFH
        FLASHA          0F0E0H
          FLASHAL         0F0E0H
          FLASHAH         0F0E1H
        FLASHD          0F0E2H
          FLASHDL         0F0E2H
          FLASHDH         0F0E3H
          FLASHCON        0F0E4H
          FLASHACP        0F0E5H
          FLASHSLF        0F0E7H
          FLASHSTA        0F0EAH
          REMAPADD        0F0ECH
          REMAPS          0F0EEH
          P0D             0F204H
        P0CON           0F206H
          P0CON0          0F206H
          P0CON1          0F207H
          P2D             0F210H
        P2CON           0F212H
          P2CON0          0F212H
          P2CON1          0F213H
          P2MOD           0F214H
          P3D             0F218H
          P3DIR           0F219H
        P3CON           0F21AH
          P3CON0          0F21AH
          P3CON1          0F21BH
        P3MOD           0F21CH
          P3MOD0          0F21CH
          P3MOD1          0F21DH
          P4D             0F220H
          P4DIR           0F221H
        P4CON           0F222H
          P4CON0          0F222H
          P4CON1          0F223H
        P4MOD           0F224H
          P4MOD0          0F224H
          P4MOD1          0F225H
          P5D             0F228H
          P5DIR           0F229H
        P5CON           0F22AH
          P5CON0          0F22AH
          P5CON1          0F22BH
        P5MOD           0F22CH
          P5MOD0          0F22CH
          P5MOD1          0F22DH
        SIO0BUF         0F280H
          SIO0BUFL        0F280H
          SIO0BUFH        0F281H
          SIO0CON         0F282H
        SIO0MOD         0F284H
          SIO0MOD0        0F284H
          SIO0MOD1        0F285H
          UA0BUF          0F290H
          UA0CON          0F291H
        UA0MOD          0F292H
          UA0MOD0         0F292H
          UA0MOD1         0F293H
        UA0BRT          0F294H
          UA0BRTL         0F294H
          UA0BRTH         0F295H
          UA0STAT         0F296H
          UA1BUF          0F298H
          UA1CON          0F299H
        UA1MOD          0F29AH
          UA1MOD0         0F29AH
          UA1MOD1         0F29BH
        UA1BRT          0F29CH
          UA1BRTL         0F29CH
          UA1BRTH         0F29DH
          UA1STAT         0F29EH
          I2C0RD          0F2A0H
          I2C0SA          0F2A1H
          I2C0TD          0F2A2H
          I2C0CON         0F2A3H
          I2C0MOD         0F2A4H
          I2C0STAT        0F2A5H
          I2C1RD          0F2A8H
          I2C1SA          0F2A9H
          I2C1TD          0F2AAH
          I2C1CON         0F2ABH
          I2C1MOD         0F2ACH
          I2C1STAT        0F2ADH
        SADR0           0F2D0H
          SADR0L          0F2D0H
          SADR0H          0F2D1H
        SADR1           0F2D2H
          SADR1L          0F2D2H
          SADR1H          0F2D3H
        SADR2           0F2D4H
          SADR2L          0F2D4H
          SADR2H          0F2D5H
        SADCON          0F2F0H
          SADCON0         0F2F0H
          SADCON1         0F2F1H
        SADMOD          0F2F2H
          SADMOD0         0F2F2H
          CODEOP0         0F3D8H

;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;       BIT ADDRESS SYMBOLS
;
;       definition of BIT type symbols
;
;       - SYNTAX -
;       #DEFBIT
;               Symbol  Bit_Address
;               ....................
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#DEFBIT

;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;       SFR AREA
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
        DSR0            DSR.0
        DSR1            DSR.1
        DSR2            DSR.2
        DSR3            DSR.3

        POR             RSTAT.0
        XSTR            RSTAT.1
        WDTR            RSTAT.2

        SYSC0           FCON0.0
        SYSC1           FCON0.1
        OUTC0           FCON0.4
        OUTC1           FCON0.5

        SYSCLK          FCON1.0
        ENOSC           FCON1.1
        ENMLT           FCON1.2

        HLT             SBYCON.0
        STP             SBYCON.1

        T128HZ          LTBR.0
        T64HZ           LTBR.1
        T32HZ           LTBR.2
        T16HZ           LTBR.3
        T8HZ            LTBR.4
        T4HZ            LTBR.5
        T2HZ            LTBR.6
        T1HZ            LTBR.7

        HTD0            HTBDR.0
        HTD1            HTBDR.1
        HTD2            HTBDR.2
        HTD3            HTBDR.3

        LADJ0           LTBADJL.0
        LADJ1           LTBADJL.1
        LADJ2           LTBADJL.2
        LADJ3           LTBADJL.3
        LADJ4           LTBADJL.4
        LADJ5           LTBADJL.5
        LADJ6           LTBADJL.6
        LADJ7           LTBADJL.7

        LADJ8           LTBADJH.0
        LADJ9           LTBADJH.1
        LADJS           LTBADJH.2

        WDP             WDTCON.0

        WDT0            WDTMOD.0
        WDT1            WDTMOD.1

        EP00            IE1.0
        EP01            IE1.1
        EP02            IE1.2
        EP03            IE1.3
        EP04            IE1.4
        EP05            IE1.5

        ESIO0           IE2.0
        ESAD            IE2.2
        EI2C1           IE2.6
        EI2C0           IE2.7

        ETM0            IE3.0
        ETM1            IE3.1
        ETM4            IE3.2
        ETM5            IE3.3

        EUA0            IE4.0
        EUA1            IE4.1

        ETM2            IE5.4
        ETM3            IE5.5
        ETM6            IE5.6
        ETM7            IE5.7

        EPW0            IE6.0
        EPW1            IE6.1
        E128H           IE6.5
        E32H            IE6.7

        E16H            IE7.0
        E2H             IE7.3

        QWDT            IRQ0.0

        QP00            IRQ1.0
        QP01            IRQ1.1
        QP02            IRQ1.2
        QP03            IRQ1.3
        QP04            IRQ1.4
        QP05            IRQ1.5

        QSIO0           IRQ2.0
        QSAD            IRQ2.2
        QI2C1           IRQ2.6
        QI2C0           IRQ2.7

        QTM0            IRQ3.0
        QTM1            IRQ3.1
        QTM4            IRQ3.2
        QTM5            IRQ3.3

        QUA0            IRQ4.0
        QUA1            IRQ4.1

        QTM2            IRQ5.4
        QTM3            IRQ5.5
        QTM6            IRQ5.6
        QTM7            IRQ5.7

        QPW0            IRQ6.0
        QPW1            IRQ6.1
        Q128H           IRQ6.5
        Q32H            IRQ6.7

        Q16H            IRQ7.0
        Q2H             IRQ7.3

        P00E0           EXICON0.0
        P01E0           EXICON0.1
        P02E0           EXICON0.2
        P03E0           EXICON0.3
        P04E0           EXICON0.4
        P05E0           EXICON0.5

        P00E1           EXICON1.0
        P01E1           EXICON1.1
        P02E1           EXICON1.2
        P03E1           EXICON1.3
        P04E1           EXICON1.4
        P05E1           EXICON1.5

        P00SM           EXICON2.0
        P01SM           EXICON2.1
        P02SM           EXICON2.2
        P03SM           EXICON2.3
        P04SM           EXICON2.4
        P05SM           EXICON2.5

        DTM0            BLKCON0.0
        DTM1            BLKCON0.1
        DTM2            BLKCON0.2
        DTM3            BLKCON0.3
        DTM4            BLKCON0.4
        DTM5            BLKCON0.5
        DTM6            BLKCON0.6
        DTM7            BLKCON0.7

        DPW0            BLKCON1.0
        DPW1            BLKCON1.1

        DSIO0           BLKCON2.0
        DUA0            BLKCON2.2
        DUA1            BLKCON2.3
        DI2C1           BLKCON2.6
        DI2C0           BLKCON2.7

        DSAD            BLKCON4.0

        T0D0            TM0D.0
        T0D1            TM0D.1
        T0D2            TM0D.2
        T0D3            TM0D.3
        T0D4            TM0D.4
        T0D5            TM0D.5
        T0D6            TM0D.6
        T0D7            TM0D.7

        T0C0            TM0C.0
        T0C1            TM0C.1
        T0C2            TM0C.2
        T0C3            TM0C.3
        T0C4            TM0C.4
        T0C5            TM0C.5
        T0C6            TM0C.6
        T0C7            TM0C.7

        T0CS0           TM0CON0.0
        T0CS1           TM0CON0.1
        T01M16          TM0CON0.2

        T0RUN           TM0CON1.0
        T0STAT          TM0CON1.7

        T1D0            TM1D.0
        T1D1            TM1D.1
        T1D2            TM1D.2
        T1D3            TM1D.3
        T1D4            TM1D.4
        T1D5            TM1D.5
        T1D6            TM1D.6
        T1D7            TM1D.7

        T1C0            TM1C.0
        T1C1            TM1C.1
        T1C2            TM1C.2
        T1C3            TM1C.3
        T1C4            TM1C.4
        T1C5            TM1C.5
        T1C6            TM1C.6
        T1C7            TM1C.7

        T1CS0           TM1CON0.0
        T1CS1           TM1CON0.1

        T1RUN           TM1CON1.0
        T1STAT          TM1CON1.7

        T2D0            TM2D.0
        T2D1            TM2D.1
        T2D2            TM2D.2
        T2D3            TM2D.3
        T2D4            TM2D.4
        T2D5            TM2D.5
        T2D6            TM2D.6
        T2D7            TM2D.7

        T2C0            TM2C.0
        T2C1            TM2C.1
        T2C2            TM2C.2
        T2C3            TM2C.3
        T2C4            TM2C.4
        T2C5            TM2C.5
        T2C6            TM2C.6
        T2C7            TM2C.7

        T2CS0           TM2CON0.0
        T2CS1           TM2CON0.1
        T23M16          TM2CON0.2

        T2RUN           TM2CON1.0
        T2STAT          TM2CON1.7

        T3D0            TM3D.0
        T3D1            TM3D.1
        T3D2            TM3D.2
        T3D3            TM3D.3
        T3D4            TM3D.4
        T3D5            TM3D.5
        T3D6            TM3D.6
        T3D7            TM3D.7

        T3C0            TM3C.0
        T3C1            TM3C.1
        T3C2            TM3C.2
        T3C3            TM3C.3
        T3C4            TM3C.4
        T3C5            TM3C.5
        T3C6            TM3C.6
        T3C7            TM3C.7

        T3CS0           TM3CON0.0
        T3CS1           TM3CON0.1

        T3RUN           TM3CON1.0
        T3STAT          TM3CON1.7

        T4D0            TM4D.0
        T4D1            TM4D.1
        T4D2            TM4D.2
        T4D3            TM4D.3
        T4D4            TM4D.4
        T4D5            TM4D.5
        T4D6            TM4D.6
        T4D7            TM4D.7

        T4C0            TM4C.0
        T4C1            TM4C.1
        T4C2            TM4C.2
        T4C3            TM4C.3
        T4C4            TM4C.4
        T4C5            TM4C.5
        T4C6            TM4C.6
        T4C7            TM4C.7

        T4CS0           TM4CON0.0
        T4CS1           TM4CON0.1
        T45M16          TM4CON0.2

        T4RUN           TM4CON1.0
        T4STAT          TM4CON1.7

        T5D0            TM5D.0
        T5D1            TM5D.1
        T5D2            TM5D.2
        T5D3            TM5D.3
        T5D4            TM5D.4
        T5D5            TM5D.5
        T5D6            TM5D.6
        T5D7            TM5D.7

        T5C0            TM5C.0
        T5C1            TM5C.1
        T5C2            TM5C.2
        T5C3            TM5C.3
        T5C4            TM5C.4
        T5C5            TM5C.5
        T5C6            TM5C.6
        T5C7            TM5C.7

        T5CS0           TM5CON0.0
        T5CS1           TM5CON0.1

        T5RUN           TM5CON1.0
        T5STAT          TM5CON1.7

        T6D0            TM6D.0
        T6D1            TM6D.1
        T6D2            TM6D.2
        T6D3            TM6D.3
        T6D4            TM6D.4
        T6D5            TM6D.5
        T6D6            TM6D.6
        T6D7            TM6D.7

        T6C0            TM6C.0
        T6C1            TM6C.1
        T6C2            TM6C.2
        T6C3            TM6C.3
        T6C4            TM6C.4
        T6C5            TM6C.5
        T6C6            TM6C.6
        T6C7            TM6C.7

        T6CS0           TM6CON0.0
        T6CS1           TM6CON0.1
        T67M16          TM6CON0.2

        T6RUN           TM6CON1.0
        T6STAT          TM6CON1.7

        T7D0            TM7D.0
        T7D1            TM7D.1
        T7D2            TM7D.2
        T7D3            TM7D.3
        T7D4            TM7D.4
        T7D5            TM7D.5
        T7D6            TM7D.6
        T7D7            TM7D.7

        T7C0            TM7C.0
        T7C1            TM7C.1
        T7C2            TM7C.2
        T7C3            TM7C.3
        T7C4            TM7C.4
        T7C5            TM7C.5
        T7C6            TM7C.6
        T7C7            TM7C.7

        T7CS0           TM7CON0.0
        T7CS1           TM7CON0.1

        T7RUN           TM7CON1.0
        T7STAT          TM7CON1.7

        P0P0            PW0PL.0
        P0P1            PW0PL.1
        P0P2            PW0PL.2
        P0P3            PW0PL.3
        P0P4            PW0PL.4
        P0P5            PW0PL.5
        P0P6            PW0PL.6
        P0P7            PW0PL.7

        P0P8            PW0PH.0
        P0P9            PW0PH.1
        P0P10           PW0PH.2
        P0P11           PW0PH.3
        P0P12           PW0PH.4
        P0P13           PW0PH.5
        P0P14           PW0PH.6
        P0P15           PW0PH.7

        P0D0            PW0DL.0
        P0D1            PW0DL.1
        P0D2            PW0DL.2
        P0D3            PW0DL.3
        P0D4            PW0DL.4
        P0D5            PW0DL.5
        P0D6            PW0DL.6
        P0D7            PW0DL.7

        P0D8            PW0DH.0
        P0D9            PW0DH.1
        P0D10           PW0DH.2
        P0D11           PW0DH.3
        P0D12           PW0DH.4
        P0D13           PW0DH.5
        P0D14           PW0DH.6
        P0D15           PW0DH.7

        P0C0            PW0CL.0
        P0C1            PW0CL.1
        P0C2            PW0CL.2
        P0C3            PW0CL.3
        P0C4            PW0CL.4
        P0C5            PW0CL.5
        P0C6            PW0CL.6
        P0C7            PW0CL.7

        P0C8            PW0CH.0
        P0C9            PW0CH.1
        P0C10           PW0CH.2
        P0C11           PW0CH.3
        P0C12           PW0CH.4
        P0C13           PW0CH.5
        P0C14           PW0CH.6
        P0C15           PW0CH.7

        P0CS0           PW0CON0.0
        P0CS1           PW0CON0.1
        P0IS0           PW0CON0.2
        P0IS1           PW0CON0.3
        P0NEG           PW0CON0.4

        P0RUN           PW0CON1.0
        P0FLG           PW0CON1.6
        P0STAT          PW0CON1.7

        P1P0            PW1PL.0
        P1P1            PW1PL.1
        P1P2            PW1PL.2
        P1P3            PW1PL.3
        P1P4            PW1PL.4
        P1P5            PW1PL.5
        P1P6            PW1PL.6
        P1P7            PW1PL.7

        P1P8            PW1PH.0
        P1P9            PW1PH.1
        P1P10           PW1PH.2
        P1P11           PW1PH.3
        P1P12           PW1PH.4
        P1P13           PW1PH.5
        P1P14           PW1PH.6
        P1P15           PW1PH.7

        P1D0            PW1DL.0
        P1D1            PW1DL.1
        P1D2            PW1DL.2
        P1D3            PW1DL.3
        P1D4            PW1DL.4
        P1D5            PW1DL.5
        P1D6            PW1DL.6
        P1D7            PW1DL.7

        P1D8            PW1DH.0
        P1D9            PW1DH.1
        P1D10           PW1DH.2
        P1D11           PW1DH.3
        P1D12           PW1DH.4
        P1D13           PW1DH.5
        P1D14           PW1DH.6
        P1D15           PW1DH.7

        P1C0            PW1CL.0
        P1C1            PW1CL.1
        P1C2            PW1CL.2
        P1C3            PW1CL.3
        P1C4            PW1CL.4
        P1C5            PW1CL.5
        P1C6            PW1CL.6
        P1C7            PW1CL.7

        P1C8            PW1CH.0
        P1C9            PW1CH.1
        P1C10           PW1CH.2
        P1C11           PW1CH.3
        P1C12           PW1CH.4
        P1C13           PW1CH.5
        P1C14           PW1CH.6
        P1C15           PW1CH.7

        P1CS0           PW1CON0.0
        P1CS1           PW1CON0.1
        P1IS0           PW1CON0.2
        P1IS1           PW1CON0.3
        P1NEG           PW1CON0.4

        P1RUN           PW1CON1.0
        P1FLG           PW1CON1.6
        P1STAT          PW1CON1.7

        FA0             FLASHAL.0
        FA1             FLASHAL.1
        FA2             FLASHAL.2
        FA3             FLASHAL.3
        FA4             FLASHAL.4
        FA5             FLASHAL.5
        FA6             FLASHAL.6
        FA7             FLASHAL.7

        FA8             FLASHAH.0
        FA9             FLASHAH.1
        FA10            FLASHAH.2
        FA11            FLASHAH.3
        FA12            FLASHAH.4
        FA13            FLASHAH.5
        FA14            FLASHAH.6
        FA15            FLASHAH.7

        FD0             FLASHDL.0
        FD1             FLASHDL.1
        FD2             FLASHDL.2
        FD3             FLASHDL.3
        FD4             FLASHDL.4
        FD5             FLASHDL.5
        FD6             FLASHDL.6
        FD7             FLASHDL.7

        FD8             FLASHDH.0
        FD9             FLASHDH.1
        FD10            FLASHDH.2
        FD11            FLASHDH.3
        FD12            FLASHDH.4
        FD13            FLASHDH.5
        FD14            FLASHDH.6
        FD15            FLASHDH.7

        FERS            FLASHCON.0
        FSERS           FLASHCON.1

        FSELF           FLASHSLF.0

        BSTF            FLASHSTA.7

        REA12           REMAPADD.0
        REA13           REMAPADD.1
        REA14           REMAPADD.2
        REA15           REMAPADD.3
        RES0            REMAPADD.4
        RES1            REMAPADD.5
        RES2            REMAPADD.6
        RBTA            REMAPADD.7

        REAS12          REMAPS.0
        REAS13          REMAPS.1
        REAS14          REMAPS.2
        REAS15          REMAPS.3
        RESS0           REMAPS.4
        RESS1           REMAPS.5
        RESS2           REMAPS.6

        P00D            P0D.0
        P01D            P0D.1
        P02D            P0D.2
        P03D            P0D.3
        P04D            P0D.4
        P05D            P0D.5

        P00C0           P0CON0.0
        P01C0           P0CON0.1
        P02C0           P0CON0.2
        P03C0           P0CON0.3
        P04C0           P0CON0.4
        P05C0           P0CON0.5

        P00C1           P0CON1.0
        P01C1           P0CON1.1
        P02C1           P0CON1.2
        P03C1           P0CON1.3
        P04C1           P0CON1.4
        P05C1           P0CON1.5

        P20D            P2D.0
        P21D            P2D.1
        P24D            P2D.4
        P25D            P2D.5

        P20C0           P2CON0.0
        P21C0           P2CON0.1
        P24C0           P2CON0.4
        P25C0           P2CON0.5

        P20C1           P2CON1.0
        P21C1           P2CON1.1
        P24C1           P2CON1.4
        P25C1           P2CON1.5

        P20MD           P2MOD.0
        P21MD           P2MOD.1
        P24MD           P2MOD.4
        P25MD           P2MOD.5

        P30D            P3D.0
        P31D            P3D.1
        P32D            P3D.2
        P33D            P3D.3
        P34D            P3D.4
        P35D            P3D.5
        P36D            P3D.6
        P37D            P3D.7

        P30DIR          P3DIR.0
        P31DIR          P3DIR.1
        P32DIR          P3DIR.2
        P33DIR          P3DIR.3
        P34DIR          P3DIR.4
        P35DIR          P3DIR.5
        P36DIR          P3DIR.6
        P37DIR          P3DIR.7

        P30C0           P3CON0.0
        P31C0           P3CON0.1
        P32C0           P3CON0.2
        P33C0           P3CON0.3
        P34C0           P3CON0.4
        P35C0           P3CON0.5
        P36C0           P3CON0.6
        P37C0           P3CON0.7

        P30C1           P3CON1.0
        P31C1           P3CON1.1
        P32C1           P3CON1.2
        P33C1           P3CON1.3
        P34C1           P3CON1.4
        P35C1           P3CON1.5
        P36C1           P3CON1.6
        P37C1           P3CON1.7

        P30MD0          P3MOD0.0
        P31MD0          P3MOD0.1
        P32MD0          P3MOD0.2
        P33MD0          P3MOD0.3
        P34MD0          P3MOD0.4
        P35MD0          P3MOD0.5
        P36MD0          P3MOD0.6
        P37MD0          P3MOD0.7

        P30MD1          P3MOD1.0
        P31MD1          P3MOD1.1
        P32MD1          P3MOD1.2
        P33MD1          P3MOD1.3
        P34MD1          P3MOD1.4
        P35MD1          P3MOD1.5
        P36MD1          P3MOD1.6
        P37MD1          P3MOD1.7

        P40D            P4D.0
        P41D            P4D.1
        P42D            P4D.2
        P43D            P4D.3
        P44D            P4D.4
        P45D            P4D.5
        P46D            P4D.6
        P47D            P4D.7

        P40DIR          P4DIR.0
        P41DIR          P4DIR.1
        P42DIR          P4DIR.2
        P43DIR          P4DIR.3
        P44DIR          P4DIR.4
        P45DIR          P4DIR.5
        P46DIR          P4DIR.6
        P47DIR          P4DIR.7

        P40C0           P4CON0.0
        P41C0           P4CON0.1
        P42C0           P4CON0.2
        P43C0           P4CON0.3
        P44C0           P4CON0.4
        P45C0           P4CON0.5
        P46C0           P4CON0.6
        P47C0           P4CON0.7

        P40C1           P4CON1.0
        P41C1           P4CON1.1
        P42C1           P4CON1.2
        P43C1           P4CON1.3
        P44C1           P4CON1.4
        P45C1           P4CON1.5
        P46C1           P4CON1.6
        P47C1           P4CON1.7

        P40MD0          P4MOD0.0
        P41MD0          P4MOD0.1
        P42MD0          P4MOD0.2
        P43MD0          P4MOD0.3
        P44MD0          P4MOD0.4
        P45MD0          P4MOD0.5
        P46MD0          P4MOD0.6
        P47MD0          P4MOD0.7

        P40MD1          P4MOD1.0
        P41MD1          P4MOD1.1
        P42MD1          P4MOD1.2
        P43MD1          P4MOD1.3
        P44MD1          P4MOD1.4
        P45MD1          P4MOD1.5
        P46MD1          P4MOD1.6
        P47MD1          P4MOD1.7

        P50D            P5D.0
        P51D            P5D.1
        P52D            P5D.2
        P53D            P5D.3
        P54D            P5D.4
        P55D            P5D.5
        P56D            P5D.6

        P50DIR          P5DIR.0
        P51DIR          P5DIR.1
        P52DIR          P5DIR.2
        P53DIR          P5DIR.3
        P54DIR          P5DIR.4
        P55DIR          P5DIR.5
        P56DIR          P5DIR.6

        P50C0           P5CON0.0
        P51C0           P5CON0.1
        P52C0           P5CON0.2
        P53C0           P5CON0.3
        P54C0           P5CON0.4
        P55C0           P5CON0.5
        P56C0           P5CON0.6

        P50C1           P5CON1.0
        P51C1           P5CON1.1
        P52C1           P5CON1.2
        P53C1           P5CON1.3
        P54C1           P5CON1.4
        P55C1           P5CON1.5
        P56C1           P5CON1.6

        P50MD0          P5MOD0.0
        P51MD0          P5MOD0.1
        P52MD0          P5MOD0.2
        P53MD0          P5MOD0.3
        P54MD0          P5MOD0.4
        P55MD0          P5MOD0.5
        P56MD0          P5MOD0.6

        P50MD1          P5MOD1.0
        P51MD1          P5MOD1.1
        P52MD1          P5MOD1.2
        P53MD1          P5MOD1.3
        P54MD1          P5MOD1.4
        P55MD1          P5MOD1.5
        P56MD1          P5MOD1.6

        S0B0            SIO0BUFL.0
        S0B1            SIO0BUFL.1
        S0B2            SIO0BUFL.2
        S0B3            SIO0BUFL.3
        S0B4            SIO0BUFL.4
        S0B5            SIO0BUFL.5
        S0B6            SIO0BUFL.6
        S0B7            SIO0BUFL.7

        S0B8            SIO0BUFH.0
        S0B9            SIO0BUFH.1
        S0B10           SIO0BUFH.2
        S0B11           SIO0BUFH.3
        S0B12           SIO0BUFH.4
        S0B13           SIO0BUFH.5
        S0B14           SIO0BUFH.6
        S0B15           SIO0BUFH.7

        S0EN            SIO0CON.0

        S0DIR           SIO0MOD0.0
        S0MD0           SIO0MOD0.1
        S0MD1           SIO0MOD0.2
        S0LG            SIO0MOD0.3

        S0CK0           SIO0MOD1.0
        S0CK1           SIO0MOD1.1
        S0CK2           SIO0MOD1.2
        S0CK3           SIO0MOD1.3
        S0CKT           SIO0MOD1.4

        U0B0            UA0BUF.0
        U0B1            UA0BUF.1
        U0B2            UA0BUF.2
        U0B3            UA0BUF.3
        U0B4            UA0BUF.4
        U0B5            UA0BUF.5
        U0B6            UA0BUF.6
        U0B7            UA0BUF.7

        U0EN            UA0CON.0

        U0IO            UA0MOD0.0
        U0CK0           UA0MOD0.1
        U0CK1           UA0MOD0.2
        U0RSEL          UA0MOD0.4
        U0RSS           UA0MOD0.5

        U0LG0           UA0MOD1.0
        U0LG1           UA0MOD1.1
        U0PT0           UA0MOD1.2
        U0PT1           UA0MOD1.3
        U0STP           UA0MOD1.4
        U0NEG           UA0MOD1.5
        U0DIR           UA0MOD1.6

        U0BR0           UA0BRTL.0
        U0BR1           UA0BRTL.1
        U0BR2           UA0BRTL.2
        U0BR3           UA0BRTL.3
        U0BR4           UA0BRTL.4
        U0BR5           UA0BRTL.5
        U0BR6           UA0BRTL.6
        U0BR7           UA0BRTL.7

        U0BR8           UA0BRTH.0
        U0BR9           UA0BRTH.1
        U0BR10          UA0BRTH.2
        U0BR11          UA0BRTH.3

        U0FER           UA0STAT.0
        U0OER           UA0STAT.1
        U0PER           UA0STAT.2
        U0FUL           UA0STAT.3

        U1B0            UA1BUF.0
        U1B1            UA1BUF.1
        U1B2            UA1BUF.2
        U1B3            UA1BUF.3
        U1B4            UA1BUF.4
        U1B5            UA1BUF.5
        U1B6            UA1BUF.6
        U1B7            UA1BUF.7

        U1EN            UA1CON.0

        U1IO            UA1MOD0.0
        U1CK0           UA1MOD0.1
        U1CK1           UA1MOD0.2
        U1RSEL          UA1MOD0.4
        U1RSS           UA1MOD0.5

        U1LG0           UA1MOD1.0
        U1LG1           UA1MOD1.1
        U1PT0           UA1MOD1.2
        U1PT1           UA1MOD1.3
        U1STP           UA1MOD1.4
        U1NEG           UA1MOD1.5
        U1DIR           UA1MOD1.6

        U1BR0           UA1BRTL.0
        U1BR1           UA1BRTL.1
        U1BR2           UA1BRTL.2
        U1BR3           UA1BRTL.3
        U1BR4           UA1BRTL.4
        U1BR5           UA1BRTL.5
        U1BR6           UA1BRTL.6
        U1BR7           UA1BRTL.7

        U1BR8           UA1BRTH.0
        U1BR9           UA1BRTH.1
        U1BR10          UA1BRTH.2
        U1BR11          UA1BRTH.3

        U1FER           UA1STAT.0
        U1OER           UA1STAT.1
        U1PER           UA1STAT.2
        U1FUL           UA1STAT.3

        I20R0           I2C0RD.0
        I20R1           I2C0RD.1
        I20R2           I2C0RD.2
        I20R3           I2C0RD.3
        I20R4           I2C0RD.4
        I20R5           I2C0RD.5
        I20R6           I2C0RD.6
        I20R7           I2C0RD.7

        I20RW           I2C0SA.0
        I20A0           I2C0SA.1
        I20A1           I2C0SA.2
        I20A2           I2C0SA.3
        I20A3           I2C0SA.4
        I20A4           I2C0SA.5
        I20A5           I2C0SA.6
        I20A6           I2C0SA.7

        I20T0           I2C0TD.0
        I20T1           I2C0TD.1
        I20T2           I2C0TD.2
        I20T3           I2C0TD.3
        I20T4           I2C0TD.4
        I20T5           I2C0TD.5
        I20T6           I2C0TD.6
        I20T7           I2C0TD.7

        I20ST           I2C0CON.0
        I20SP           I2C0CON.1
        I20RS           I2C0CON.2
        I20ACT          I2C0CON.7

        I20EN           I2C0MOD.0
        I20MD           I2C0MOD.1
        I20DW0          I2C0MOD.2
        I20DW1          I2C0MOD.3
        I20SYN          I2C0MOD.4

        I20BB           I2C0STAT.0
        I20ACR          I2C0STAT.1
        I20ER           I2C0STAT.2

        I21R0           I2C1RD.0
        I21R1           I2C1RD.1
        I21R2           I2C1RD.2
        I21R3           I2C1RD.3
        I21R4           I2C1RD.4
        I21R5           I2C1RD.5
        I21R6           I2C1RD.6
        I21R7           I2C1RD.7

        I21A0           I2C1SA.1
        I21A1           I2C1SA.2
        I21A2           I2C1SA.3
        I21A3           I2C1SA.4
        I21A4           I2C1SA.5
        I21A5           I2C1SA.6
        I21A6           I2C1SA.7

        I21T0           I2C1TD.0
        I21T1           I2C1TD.1
        I21T2           I2C1TD.2
        I21T3           I2C1TD.3
        I21T4           I2C1TD.4
        I21T5           I2C1TD.5
        I21T6           I2C1TD.6
        I21T7           I2C1TD.7

        I21WT           I2C1CON.5
        I21ACT          I2C1CON.7

        I21EN           I2C1MOD.0
        I21PIE          I2C1MOD.5
        I21SIE          I2C1MOD.6

        I21BB           I2C1STAT.0
        I21ACR          I2C1STAT.1
        I21ER           I2C1STAT.2
        I21SAA          I2C1STAT.3
        I21TR           I2C1STAT.4

        SAR02           SADR0L.6
        SAR03           SADR0L.7

        SAR04           SADR0H.0
        SAR05           SADR0H.1
        SAR06           SADR0H.2
        SAR07           SADR0H.3
        SAR08           SADR0H.4
        SAR09           SADR0H.5
        SAR0A           SADR0H.6
        SAR0B           SADR0H.7

        SAR12           SADR1L.6
        SAR13           SADR1L.7

        SAR14           SADR1H.0
        SAR15           SADR1H.1
        SAR16           SADR1H.2
        SAR17           SADR1H.3
        SAR18           SADR1H.4
        SAR19           SADR1H.5
        SAR1A           SADR1H.6
        SAR1B           SADR1H.7

        SAR22           SADR2L.6
        SAR23           SADR2L.7

        SAR24           SADR2H.0
        SAR25           SADR2H.1
        SAR26           SADR2H.2
        SAR27           SADR2H.3
        SAR28           SADR2H.4
        SAR29           SADR2H.5
        SAR2A           SADR2H.6
        SAR2B           SADR2H.7

        SALP            SADCON0.0

        SARUN           SADCON1.0

        SACH0           SADMOD0.0
        SACH1           SADMOD0.1
        SACH2           SADMOD0.2

        COWT0           CODEOP0.4
        COWT1           CODEOP0.5
        COICUT          CODEOP0.6



;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;       SFR ACCESS ATTRIBUTE DEFINITIONS
;
;       - SYNTAX -
;       #ACCESS
;  Data_Address:| Access_Unit |        Bit_Pattern        |
;   Address     |   Word/Byte |   Read      |      Write  |
;   .......         .........     ....             .....
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#ACCESS
    DSR             :   --RW    0000_1111B  0000_1111B
    RSTAT           :   --RW    0000_0111B  0000_0111B
    FCON0           :   RWRW    0011_0011B  0011_0011B
    FCON1           :   --RW    0000_0111B  0000_0111B
    STPACP          :   ---W    -           -         
    SBYCON          :   ---W    0000_0011B  0000_0011B
    LTBR            :   --RW    1111_1111B  1111_1111B
    HTBDR           :   --RW    0000_1111B  0000_1111B
    LTBADJL         :   RWRW    1111_1111B  1111_1111B
    LTBADJH         :   --RW    0000_0111B  0000_0111B
    WDTCON          :   --RW    1111_1111B  1111_1111B
    WDTMOD          :   --RW    0000_0011B  0000_0011B
    IE1             :   --RW    0011_1111B  0011_1111B
    IE2             :   --RW    1100_0101B  1100_0101B
    IE3             :   --RW    0000_1111B  0000_1111B
    IE4             :   --RW    0000_0011B  0000_0011B
    IE5             :   --RW    1111_0000B  1111_0000B
    IE6             :   --RW    1010_0011B  1010_0011B
    IE7             :   --RW    0000_1001B  0000_1001B
    IRQ0            :   --RW    0000_0001B  0000_0001B
    IRQ1            :   --RW    0011_1111B  0011_1111B
    IRQ2            :   --RW    1100_0101B  1100_0101B
    IRQ3            :   --RW    0000_1111B  0000_1111B
    IRQ4            :   --RW    0000_0011B  0000_0011B
    IRQ5            :   --RW    1111_0000B  1111_0000B
    IRQ6            :   --RW    1010_0011B  1010_0011B
    IRQ7            :   --RW    0000_1001B  0000_1001B
    EXICON0         :   --RW    0011_1111B  0011_1111B
    EXICON1         :   --RW    0011_1111B  0011_1111B
    EXICON2         :   --RW    0011_1111B  0011_1111B
    BLKCON0         :   --RW    1111_1111B  1111_1111B
    BLKCON1         :   --RW    0000_0011B  0000_0011B
    BLKCON2         :   --RW    1100_1101B  1100_1101B
    BLKCON4         :   --RW    0000_0001B  0000_0001B
    TM0D            :   RWRW    1111_1111B  1111_1111B
    TM0C            :   --RW    1111_1111B  1111_1111B
    TM0CON0         :   RWRW    0000_0111B  0000_0111B
    TM0CON1         :   --RW    1000_0001B  1000_0001B
    TM1D            :   RWRW    1111_1111B  1111_1111B
    TM1C            :   --RW    1111_1111B  1111_1111B
    TM1CON0         :   RWRW    0000_0011B  0000_0011B
    TM1CON1         :   --RW    1000_0001B  1000_0001B
    TM2D            :   RWRW    1111_1111B  1111_1111B
    TM2C            :   --RW    1111_1111B  1111_1111B
    TM2CON0         :   RWRW    0000_0111B  0000_0111B
    TM2CON1         :   --RW    1000_0001B  1000_0001B
    TM3D            :   RWRW    1111_1111B  1111_1111B
    TM3C            :   --RW    1111_1111B  1111_1111B
    TM3CON0         :   RWRW    0000_0011B  0000_0011B
    TM3CON1         :   --RW    1000_0001B  1000_0001B
    TM4D            :   RWRW    1111_1111B  1111_1111B
    TM4C            :   --RW    1111_1111B  1111_1111B
    TM4CON0         :   RWRW    0000_0111B  0000_0111B
    TM4CON1         :   --RW    1000_0001B  1000_0001B
    TM5D            :   RWRW    1111_1111B  1111_1111B
    TM5C            :   --RW    1111_1111B  1111_1111B
    TM5CON0         :   RWRW    0000_0011B  0000_0011B
    TM5CON1         :   --RW    1000_0001B  1000_0001B
    TM6D            :   RWRW    1111_1111B  1111_1111B
    TM6C            :   --RW    1111_1111B  1111_1111B
    TM6CON0         :   RWRW    0000_0111B  0000_0111B
    TM6CON1         :   --RW    1000_0001B  1000_0001B
    TM7D            :   RWRW    1111_1111B  1111_1111B
    TM7C            :   --RW    1111_1111B  1111_1111B
    TM7CON0         :   RWRW    0000_0011B  0000_0011B
    TM7CON1         :   --RW    1000_0001B  1000_0001B
    PW0PL           :   RWRW    1111_1111B  1111_1111B
    PW0PH           :   --RW    1111_1111B  1111_1111B
    PW0DL           :   RWRW    1111_1111B  1111_1111B
    PW0DH           :   --RW    1111_1111B  1111_1111B
    PW0CL           :   RWRW    1111_1111B  1111_1111B
    PW0CH           :   --RW    1111_1111B  1111_1111B
    PW0CON0         :   RWRW    0001_1111B  0001_1111B
    PW0CON1         :   --RW    1100_0001B  1100_0001B
    PW1PL           :   RWRW    1111_1111B  1111_1111B
    PW1PH           :   --RW    1111_1111B  1111_1111B
    PW1DL           :   RWRW    1111_1111B  1111_1111B
    PW1DH           :   --RW    1111_1111B  1111_1111B
    PW1CL           :   RWRW    1111_1111B  1111_1111B
    PW1CH           :   --RW    1111_1111B  1111_1111B
    PW1CON0         :   RWRW    0001_1111B  0001_1111B
    PW1CON1         :   --RW    1100_0001B  1100_0001B
    FLASHAL         :   RWRW    1111_1111B  1111_1111B
    FLASHAH         :   --RW    1111_1111B  1111_1111B
    FLASHDL         :   RWRW    1111_1111B  1111_1111B
    FLASHDH         :   --RW    1111_1111B  1111_1111B
    FLASHCON        :   ---W    0000_0011B  0000_0011B
    FLASHACP        :   ---W    1111_1111B  1111_1111B
    FLASHSLF        :   --RW    0000_0001B  0000_0001B
    FLASHSTA        :   --R-    1000_0000B  -         
    REMAPADD        :   --RW    1111_1111B  1111_1111B
    REMAPS          :   --R-    0111_1111B  -         
    P0D             :   --R-    0011_1111B  -         
    P0CON0          :   RWRW    0011_1111B  0011_1111B
    P0CON1          :   --RW    0011_1111B  0011_1111B
    P2D             :   --RW    0011_0011B  0011_0011B
    P2CON0          :   RWRW    0011_0011B  0011_0011B
    P2CON1          :   --RW    0011_0011B  0011_0011B
    P2MOD           :   --RW    0011_0011B  0011_0011B
    P3D             :   --RW    1111_1111B  1111_1111B
    P3DIR           :   --RW    1111_1111B  1111_1111B
    P3CON0          :   RWRW    1111_1111B  1111_1111B
    P3CON1          :   --RW    1111_1111B  1111_1111B
    P3MOD0          :   RWRW    1111_1111B  1111_1111B
    P3MOD1          :   --RW    1111_1111B  1111_1111B
    P4D             :   --RW    1111_1111B  1111_1111B
    P4DIR           :   --RW    1111_1111B  1111_1111B
    P4CON0          :   RWRW    1111_1111B  1111_1111B
    P4CON1          :   --RW    1111_1111B  1111_1111B
    P4MOD0          :   RWRW    1111_1111B  1111_1111B
    P4MOD1          :   --RW    1111_1111B  1111_1111B
    P5D             :   --RW    0111_1111B  0111_1111B
    P5DIR           :   --RW    0111_1111B  0111_1111B
    P5CON0          :   RWRW    0111_1111B  0111_1111B
    P5CON1          :   --RW    0111_1111B  0111_1111B
    P5MOD0          :   RWRW    0111_1111B  0111_1111B
    P5MOD1          :   --RW    0111_1111B  0111_1111B
    SIO0BUFL        :   RWRW    1111_1111B  1111_1111B
    SIO0BUFH        :   --RW    1111_1111B  1111_1111B
    SIO0CON         :   --RW    0000_0001B  0000_0001B
    SIO0MOD0        :   RWRW    0000_1111B  0000_1111B
    SIO0MOD1        :   --RW    0001_1111B  0001_1111B
    UA0BUF          :   --RW    1111_1111B  1111_1111B
    UA0CON          :   --RW    0000_0001B  0000_0001B
    UA0MOD0         :   RWRW    0011_0111B  0011_0111B
    UA0MOD1         :   --RW    0111_1111B  0111_1111B
    UA0BRTL         :   RWRW    1111_1111B  1111_1111B
    UA0BRTH         :   --RW    0000_1111B  0000_1111B
    UA0STAT         :   --RW    0000_1111B  0000_1111B
    UA1BUF          :   --RW    1111_1111B  1111_1111B
    UA1CON          :   --RW    0000_0001B  0000_0001B
    UA1MOD0         :   RWRW    0011_0111B  0011_0111B
    UA1MOD1         :   --RW    0111_1111B  0111_1111B
    UA1BRTL         :   RWRW    1111_1111B  1111_1111B
    UA1BRTH         :   --RW    0000_1111B  0000_1111B
    UA1STAT         :   --RW    0000_1111B  0000_1111B
    I2C0RD          :   --R-    1111_1111B  -         
    I2C0SA          :   --RW    1111_1111B  1111_1111B
    I2C0TD          :   --RW    1111_1111B  1111_1111B
    I2C0CON         :   --RW    1000_0111B  1000_0111B
    I2C0MOD         :   --RW    0001_1111B  0001_1111B
    I2C0STAT        :   --R-    0000_0111B  -         
    I2C1RD          :   --R-    1111_1111B  -         
    I2C1SA          :   --RW    1111_1110B  1111_1110B
    I2C1TD          :   --RW    1111_1111B  1111_1111B
    I2C1CON         :   --RW    1010_0000B  1010_0000B
    I2C1MOD         :   --RW    0110_0001B  0110_0001B
    I2C1STAT        :   --R-    0001_1111B  -         
    SADR0L          :   R-R-    1100_0000B  -         
    SADR0H          :   --R-    1111_1111B  -         
    SADR1L          :   R-R-    1100_0000B  -         
    SADR1H          :   --R-    1111_1111B  -         
    SADR2L          :   R-R-    1100_0000B  -         
    SADR2H          :   --R-    1111_1111B  -         
    SADCON0         :   RWRW    0000_0001B  0000_0001B
    SADCON1         :   --RW    0000_0001B  0000_0001B
    SADMOD0         :   --RW    0000_0111B  0000_0111B
    CODEOP0         :   --R-    0111_0000B  -         


;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;       INSTRUCTION
;
;       definition of basic instruction mnemonic symbols
;       - SYNTAX -
;       #INSTRUCTION
;               Mnemonic List
;               .............
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
#INSTRUCTION
L     ST    LEA
MOV   CMP   ADD   SUB   AND   OR    XOR   SLL   SRL   SRA
CMPC  ADDC  SUBC  SLLC  SRLC
NEG   DAA   DAS
SB    RB    TB
INC   DEC
PUSH  POP
EI    DI    SC    RC    CPLC
EXTBW
MUL   DIV
BEQ   BNE   BAL
BLT   BLE   BGT   BGE
BLTS  BLES  BGTS  BGES
BOV   BNV   BPS   BNS
BNC   BCY   BNZ   BZ
BC
SWI   B     BL    RTI    RT    NOP
BRK

;#COPROCESSOR

;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;        Absolute Assembler Information.
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
#CASE   ASM



#ENDCASE

;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;        Relocatable Assembler Information.
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
#CASE   RAS

;   definition depends on RASU8

#ENDCASE

;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;        Debugger Information.
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
#CASE   DEBUGGER

;   definition depends on DEBUGGER

;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;        Interrupt Information.
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
#INTERRUPT
    WDTINT,         -,          QWDT
    P00INT,         EP00,       QP00
    P01INT,         EP01,       QP01
    P02INT,         EP02,       QP02
    P03INT,         EP03,       QP03
    P04INT,         EP04,       QP04
    P05INT,         EP05,       QP05
    SIO0INT,        ESIO0,      QSIO0
    SADINT,         ESAD,       QSAD
    I2C1INT,        EI2C1,      QI2C1
    I2C0INT,        EI2C0,      QI2C0
    TM0INT,         ETM0,       QTM0
    TM1INT,         ETM1,       QTM1
    TM4INT,         ETM4,       QTM4
    TM5INT,         ETM5,       QTM5
    UA0INT,         EUA0,       QUA0
    UA1INT,         EUA1,       QUA1
    TM2INT,         ETM2,       QTM2
    TM3INT,         ETM3,       QTM3
    TM6INT,         ETM6,       QTM6
    TM7INT,         ETM7,       QTM7
    PW0INT,         EPW0,       QPW0
    PW1INT,         EPW1,       QPW1
    T128HINT,       E128H,      Q128H
    T32HINT,        E32H,       Q32H
    T16HINT,        E16H,       Q16H
    T2HINT,         E2H,        Q2H

#ENDCASE

;------------- END OF DCL (ML610CAS) -------------
