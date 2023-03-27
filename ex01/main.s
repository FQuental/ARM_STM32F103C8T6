;------DIRETIVAS uVision
	EXPORT	__main	;define o Startup
;------------------------------------------
;------DIRETIVA AREA - DADOS (RAM)
	AREA	MEUS_DADOS, DATA, READWRITE;
CTB01	DCB	0xAC,&EE; reserva/valor em memoria, usando 0x ou & pode ser usado para usar numero em hexadecimal
;==========================================
;------DIRETIVA AREA - PROGRAMA (FLASH)
	AREA	MEUPROGR, CODE,	READONLY
__main
	LDR	R1, =CTB01	;R1=(CTB1)
AQUI	B	AQUI
	END
;
;=========================================