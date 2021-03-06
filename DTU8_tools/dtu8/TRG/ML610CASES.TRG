;------------------------------------------------
; ML610CAS Target Information File
; Version 1.01
; Last Edition  Sep 26, 2012
;
; Copyright (C) 2012 LAPIS SEMICONDUCTOR CO., LTD.
;------------------------------------------------

[ICEFUNC]
TRACE=ENABLE
IEBIT=ENABLE
RAMDM=ENABLE
EXTBRK=ENABLE
EEPROMWR=DISABLE
FUSE=DISABLE
EEPROMEXE=DISABLE
EEPROMACCESS=DISABLE
URST=ENABLE
RTRAMREAD=ENABLE
MAPCHANGE=ENABLE
PASCNTBRK=ENABLE

[DRICEFUNC]
TRACE=ENABLE
IEBIT=DISABLE
RAMDM=ENABLE
EXTBRK=ENABLE
EEPROMWR=DISABLE
FUSE=DISABLE
EEPROMEXE=DISABLE
EEPROMACCESS=DISABLE
URST=DISABLE
RTRAMREAD=ENABLE
MAPCHANGE=DISABLE
PASCNTBRK=ENABLE

[UEASEFUNC]
TRACE=DISABLE
IEBIT=DISABLE
RAMDM=ENABLE
EXTBRK=DISABLE
EEPROMWR=DISABLE
FUSE=DISABLE
EEPROMEXE=DISABLE
EEPROMACCESS=DISABLE
URST=DISABLE
RTRAMREAD=DISABLE
MAPCHANGE=DISABLE
PASCNTBRK=ENABLE

[SIMFUNC]
TRACE=ENABLE
IEBIT=ENABLE
RAMDM=ENABLE
EXTBRK=DISABLE
EEPROMWR=DISABLE
FUSE=DISABLE
EEPROMEXE=DISABLE
EEPROMACCESS=DISABLE
URST=DISABLE
RTRAMREAD=ENABLE
MAPCHANGE=ENABLE
PASCNTBRK=ENABLE

; FOR ONLINE DEBUG AND SIMULATION DEBUG
; CODE MEM LAYOUT
[MMAP]
NUMBER=2

STARTADRS1=0000H
ENDADRS1=00FFH
ATTRIBUTE1=SCT,N
DEFAULT1=SCT

STARTADRS2=0100H
ENDADRS2=1FFFFH
ATTRIBUTE2=SCT,N
DEFAULT2=SCT

; DATA MEM LAYOUT
[PMAP]
NUMBER=2

STARTADRS1=0000H
ENDADRS1=07FFFH
ATTRIBUTE1=ROMWIN,N
DEFAULT1=ROMWIN

STARTADRS2=08000H
ENDADRS2=8FFFFH
ATTRIBUTE2=SD,N
DEFAULT2=SD


[GMAP]
NUMBER=2

STARTADRS1=010000H
ENDADRS1=01FFFFH
ATTRIBUTE1=SCT,N
DEFAULT1=SCT

STARTADRS2=020000H
ENDADRS2=08FFFFH
ATTRIBUTE2=SD,N
DEFAULT2=SD


[ROMWIN]
TYPE=FIXED
SFRNAME=NONE

[LIBRARIES]
STEPIN_SKIP_SEG=STEPIN_SKIP_SEG.$DL
STEPIN_CONT_SEG=STEPIN_CONT_SEG.$DL

[USB]
USB=DISABLE

[UEASE]
UEASEDEBUG=DISABLE
BRKPOINTVAL=2
ICEID=04
TARGETID00=00119330H
TARGETID32=0BF283332H
TARGETID64=00000000H
TARGETID96=00000000H
TARGETID_BIT_NUM=64
UEASE_VERSION=1.12

[ICE]
ASHLING=DISABLE

[MEMORYMODEL]
MEMMODEL=SMALL
MEMMODEL_NOTDEPEND_ON_MEMSIZE=TRUE

[SFRSAV]
NUMBER=1
STARTADRS1=0F000H
ENDADRS1=0FFFFH

[CORE]
FAMILY_ID=U8

[SIMULATOR]
PERIPHERAL_NUM=0
MEMORY_NAME=SimMem.DLL
DBG_NAME=SimDbg.DLL
