10 REM DEAD END - Idea original: Wolfgang Thaller for Macintosh (C) 1993-1998
15 REM Programa: Miguel A. Garcia Prada for ZX-Spectrum 2019
17 REM Graficos: Javier Vispe
20 REM Concurso Basic Bytemaniacos 2019-2020
25 REM EMPEZADO A PROGRAMAR: 22/07/2019 - TERMINADO 24/07/2019

35 BORDER 0: PAPER 0: INK 0
40 CLEAR 59999
42 REM GENERANDO UDG
45 RESTORE 9500: FOR F=USR "A" TO USR "A"+143: READ A: POKE F,A: NEXT F
50 LET BUFFER=60000
60 LET NIVEL=0
62 LET V$="{PAPER 0}{INK 7}{I}{BRIGHT 1}{J}": REM PARTE ARRIBA PROTA
63 LET W$="{PAPER 0}{INK 5}{BRIGHT 0}{K}{BRIGHT 1}{L}": REM PARTE DE ABAJO DEL PROTA
64 LET X$="{PAPER 0}{INK 6}{E}{BRIGHT1}{F}": REM PARTE DE ARRIBA DE LA CAJA
65 LET Y$="{PAPER 0}{INK 6}{BRIGHT 1}{G}{INK 7}{H}": REM PARTE DE ARRIBA DE LA CAJA

100 REM MENU DEL JUEGO
105 BORDER 0: PAPER 0: INK 1: CLS
110 PRINT AT 1,7; "{INK 5}{PAPER 7}{M}{M}{M}{PAPER 0}  {PAPER 7}{M}{M}{M}{PAPER 0}  {PAPER 7}{M}{M}{M}{M}{PAPER 0} {PAPER 7}{M}{M}{M}"
115 PRINT AT 2,7;"{INK 1}{PAPER 5}{M}{PAPER 0}  {PAPER 5}{M}{PAPER 0} {PAPER 5}{M}{PAPER 0}    {PAPER 5}{M}{PAPER 0}  {PAPER 5}{M}{PAPER 0} {PAPER 5}{M}{PAPER 0}  {PAPER 5}{M}"
120 PRINT AT 3,7;"{INK 0}{PAPER 1}{M}{PAPER 0}  {PAPER 1}{M}{PAPER 0} {PAPER 1}{M}{PAPER 0}    {PAPER 1}{M}{PAPER 0}  {PAPER 1}{M}{PAPER 0} {PAPER 1}{M}{PAPER 0}  {PAPER 1}{M}"
125 PRINT AT 4,7;"{INK 2}{PAPER 0}{M}  {M} {M}{M}{M}  {M}{M}{M}{M} {M}  {M}"
130 PRINT AT 5,7;"{INK 6}{PAPER 2}{M}{PAPER 0}  {PAPER 2}{M}{PAPER 0} {PAPER 2}{M}{PAPER 0}    {PAPER 2}{M}{PAPER 0}  {PAPER 2}{M}{PAPER 0} {PAPER 2}{M}{PAPER 0}  {PAPER 2}{M}"
135 PRINT AT 6,7;"{INK 7}{PAPER 6}{M}{M}{M}{PAPER 0}  {PAPER 6}{M}{M}{M}{M}{PAPER 0} {PAPER 6}{M}{PAPER 0}  {PAPER 6}{M}{PAPER 0} {PAPER 6}{M}{M}{M}"
140 PRINT AT 8,7;"{INK 5}{PAPER 7}{M}{M}{M}{PAPER 0}  {PAPER 7}{M}{PAPER 0}  {PAPER 7}{M}{PAPER 0} {PAPER 7}{M}{M}{M}"
145 PRINT AT 9,7;"{INK 1}{PAPER 5}{M}{PAPER 0}    {INK 1}{PAPER 5}{M}{PAPER 0}  {INK 1}{PAPER 5}{M}{PAPER 0} {INK 1}{PAPER 5}{M}{PAPER 0}  {INK 1}{PAPER 5}{M}"
150 PRINT AT 10,7;"{INK 0}{PAPER 1}{M}{PAPER 0}    {PAPER 1}{M}{M}{PAPER 0} {PAPER 1}{M}{PAPER 0} {PAPER 1}{M}{PAPER 0}  {PAPER 1}{M}"
155 PRINT AT 11,7;"{INK 2}{PAPER 0}{M}{M}{M}  {M} {M}{M} {M}  {M}"
160 PRINT AT 12,7;"{INK 6}{PAPER 2}{M}{PAPER 0}    {PAPER 2}{M}{PAPER 0}  {PAPER 2}{M}{PAPER 0} {PAPER 2}{M}{PAPER 0}  {PAPER 2}{M}"
165 PRINT AT 13,7;"{INK 7}{PAPER 6}{M}{M}{M}{M}{PAPER 0} {PAPER 6}{M}{PAPER 0}  {PAPER 6}{M}{PAPER 0} {PAPER 6}{M}{M}{M}{PAPER 0}  {PAPER 6}{M}{M}{M}{M}{PAPER 0}"
170 PRINT AT 16,12; INVERSE 1; "N"; INVERSE 0; "IVEL "; NIVEL+1
175 PRINT AT 18,12; INVERSE 1; "C"; INVERSE 0; "OMIENZA"
180 PRINT AT 20,14; INVERSE 1; "I"; INVERSE 0; "NFO"
185 LET A$=INKEY$
190 IF A$="I" OR A$="i" THEN GO TO 300
195 IF A$="C" OR A$="c" THEN GO TO 500
200 IF A$="N" OR A$="n" THEN GO TO 205
202 GO TO 185
205 LET NIVEL=NIVEL+1: IF NIVEL=10 THEN LET NIVEL=0
210 PRINT AT 16,18; BRIGHT 0; "  "; AT 16,18; NIVEL+1
215 IF INKEY$<>"" THEN GO TO 215
220 GO TO 185

300 REM INFO
305 BORDER 0: PAPER 0: INK 1: CLS
310 PRINT AT 20,4; "MIGUEL G. PRADA. PARA EL"
315 PRINT AT 21,0; "CONCURSO BASIC BYTEMANIACOS 2019"
320 PRINT AT 0,3; "DEAD END ESTA BASADO EN EL"
325 PRINT AT 1,1; "JUEGO DEL MISMO NOMBRE, CREADO"
330 PRINT AT 2,0; "PARA MACINTOSH ENTRE 1993 Y 1998"
335 PRINT AT 3,6; "POR WOLFGANG THALLER"
337 PRINT AT 5,3; "GRAFICOS GRACIAS A J.VISPE"
340 PRINT AT 10,4; "EL JUEGO SE CONTROLA CON"
350 PRINT AT 12,2; "O - IZQUIERDA    P - DERECHA"
355 PRINT AT 13,2; "Q - ARRIBA       A - ABAJO"
360 PRINT AT 14,2; "R - REINICIA EL NIVEL"
365 PRINT AT 15,2; "Y - REGRESA AL MENU"
380 IF INKEY$<>"" THEN GO TO 380
385 IF INKEY$<>"" THEN GO TO 100
390 GO TO 385

500 REM LANZANDO EL NIVEL
510 LET MOV=0
515 PRINT #0; AT 0,0; PAPER 0; INK 1; " {M}{M}{M}{M}{M}{M}{M}{M}{M}{M}{M}{M}{M}{M}{M}{M}{M}{M}{M}{M}{M}{M}{M}{M}{M}{M}{M}{M}{M}{M} "
520 PRINT #0; AT 1,0; INK 5; "   Nivel: ";NIVEL+1; TAB 15; "Movimientos:     "; AT 1,28; MOV
522 GO SUB 800
525 GO SUB 1000
530 REM PRINT AT YPROTA, XPROTA; "{PAPER 0}{INK 7}{I}{BRIGHT 1}{J}"; AT YPROTA+1, XPROTA;"{PAPER 0}{INK 5}{BRIGHT 0}{K}{BRIGHT 1}{L}"
532 PRINT AT YPROTA, XPROTA; V$; AT YPROTA+1, XPROTA; W$
535 LET PUNT=BUFFER+(((YPROTA/2)*16)+(XPROTA/2))
540 GO TO 1100

800 REM BARRIDO CLS
805 FOR F=21 TO 0 STEP -1
810 PRINT AT F,0; INK 0; PAPER 0; "                                "
815 NEXT F
820 RETURN

900 REM FINAL DEL NIVEL
901 LET NIVEL=NIVEL+1: IF NIVEL=10 THEN LET NIVEL=0
902 LET C$="{R}{R}{R}{R}{R}{R}{R}{R}{R}{R}{R}{R}{R}{R}{R}{R}{R}{R}{R}{R}{R}{R}"
905 PRINT AT 5,5; PAPER 1; INK 5; C$
910 FOR F=6 TO 14
915 PRINT AT F,5; PAPER 1; INK 5; "{R}                    {R}"
920 NEXT F
925 PRINT AT 15,5; PAPER 1; INK 5; C$
930 PRINT AT 8,8; PAPER 1; INK 5;"NIVEL COMPLETADO"; AT 10,8; "MOVIMIENTOS "; MOV; AT 12,8;"PROXIMO NIVEL "; NIVEL+1
935 IF INKEY$<>"" THEN GO TO 935
940 IF INKEY$<>"" THEN GO TO 500
945 GO TO 940

1000 REM MAPEANDO
1005 LET XTILE=0: LET YTILE=0
1010 RESTORE 9000+(NIVEL*20)
1015 FOR F=BUFFER TO BUFFER+175: READ A: POKE F,A
1020 IF A=0 THEN GO TO 1050
1025 IF A=1 THEN PRINT AT YTILE, XTILE; INK 2; PAPER 0; BRIGHT 0; "{A}{B}"; AT YTILE+1,XTILE; BRIGHT 1; "{C}{D}": GO TO 1050
1025 IF A=2 THEN PRINT AT YTILE, XTILE; X$; AT YTILE+1,XTILE; Y$: GO TO 1050
1030 IF A=3 THEN PRINT AT YTILE, XTILE; INK 6; PAPER 2; "{N}{O}"; AT YTILE+1,XTILE; "{P}{Q}": GO TO 1050
1050 LET XTILE=XTILE+2
1055 IF XTILE>=32 THEN LET XTILE=0: LET YTILE=YTILE+2
1060 NEXT F
1065 READ XPROTA: READ YPROTA
1070 RETURN

1100 REM BUCLE PRINCIPAL
1105 LET T$=INKEY$
1210 IF T$="O" OR T$="o" THEN GO TO 1300
1215 IF T$="P" OR T$="p" THEN GO TO 1400
1220 IF T$="Q" OR T$="q" THEN GO TO 1500
1225 IF T$="A" OR T$="a" THEN GO TO 1600
1230 IF T$="R" OR T$="r" THEN GO TO 500
1235 IF T$="Y" OR T$="y" THEN GO TO 100
1245 GO TO 1105

1300 REM MOVIMIENTO IZQUIERDA
1305 LET PUNT=PUNT-1: LET B1=PEEK (PUNT): LET PUNT=PUNT-1: LET B2=PEEK (PUNT): LET PUNT=PUNT+3: LET B3=PEEK (PUNT): LET PUNT=PUNT-1
1310 IF B1<>0 THEN GO TO 1320
1315 GO SUB 2000: GO SUB 2000: LET PUNT=PUNT-1: GO TO 1895
1320 IF B1=2 AND B2=0 AND B3=0 THEN GO TO 1350
1325 IF B1=3 THEN GO SUB 2000: GO SUB 2000: GO TO 900
1330 GO TO 1900
1350 REM EMPUJAMOS A LA IZQUIERDA
1355 LET PUNT=PUNT-1: POKE PUNT,0: POKE PUNT-1,2
1357 GO SUB 2050: GO SUB 2050: GO SUB 2000: GO SUB 2000
1360 LET XPROTA=XPROTA-1
1365 PRINT AT YPROTA, XPROTA-2; X$; V$; " ";AT YPROTA+1, XPROTA-2; Y$; W$; " "
1370 LET XPROTA=XPROTA-1
1375 PRINT AT YPROTA, XPROTA-2; X$; V$; " ";AT YPROTA+1, XPROTA-2; Y$; W$; " "
1380 GO TO 1895

1400 REM MOVIMIENTO DERECHA
1405 LET PUNT=PUNT+1: LET B1=PEEK (PUNT): LET PUNT=PUNT+1: LET B2=PEEK (PUNT): LET PUNT=PUNT-3: LET B3=PEEK (PUNT): LET PUNT=PUNT+1
1410 IF B1<>0 THEN GO TO 1420
1415 GO SUB 2050: GO SUB 2050: LET PUNT=PUNT+1: GO TO 1895
1420 IF B1=2 AND B2=0 AND B3=0 THEN GO TO 1450
1425 IF B1=3 THEN GO SUB 2050: GO SUB 2050: GO TO 900
1430 GO TO 1900
1450 REM EMPUJAMOS A LA DERECHA
1455 LET PUNT=PUNT+1: POKE PUNT,0: POKE PUNT+1,2
1457 GO SUB 2000: GO SUB 2000: GO SUB 2050: GO SUB 2050
1460 LET XPROTA=XPROTA+1
1465 PRINT AT YPROTA, XPROTA-1; " "; V$; X$;AT YPROTA+1, XPROTA-1; " "; W$; INK 1; Y$
1470 LET XPROTA=XPROTA+1
1475 PRINT AT YPROTA, XPROTA-1; " "; V$; X$; AT YPROTA+1, XPROTA-1; " "; W$; Y$
1480 GO TO 1895

1500 REM MOVIMIENTO ARRIBA
1505 LET PUNT=PUNT-16: LET B1=PEEK (PUNT): LET PUNT=PUNT-16: LET B2=PEEK (PUNT): LET PUNT=PUNT+48: LET B3=PEEK (PUNT): LET PUNT=PUNT-16
1510 IF B1<>0 THEN GO TO 1520
1515 GO SUB 2075: GO SUB 2075: LET PUNT=PUNT-16: GO TO 1895
1520 IF B1=2 AND B2=0 AND B3=0 THEN GO TO 1550
1525 IF B1=3 THEN GO SUB 2075: GO SUB 2075: GO TO 900
1530 GO TO 1900
1550 REM EMPUJAMOS ARRIBA
1555 LET PUNT=PUNT-16: POKE PUNT,0: POKE PUNT-16,2
1557 GO SUB 3025: GO SUB 3025: GO SUB 2075: GO SUB 2075
1565 PRINT AT YPROTA-3, XPROTA; X$; AT YPROTA-2,XPROTA; Y$: GO SUB 2075
1575 PRINT AT YPROTA-3, XPROTA; X$; AT YPROTA-2,XPROTA; Y$: GO SUB 2075
1580 GO TO 1895

1600 REM MOVIMIENTO ABAJO
1605 LET PUNT=PUNT+16: LET B1=PEEK (PUNT): LET PUNT=PUNT+16: LET B2=PEEK (PUNT): LET PUNT=PUNT-48: LET B3=PEEK (PUNT): LET PUNT=PUNT+16
1610 IF B1<>0 THEN GO TO 1620
1615 GO SUB 3025: GO SUB 3025: LET PUNT=PUNT+16: GO TO 1895
1620 IF B1=2 AND B2=0 AND B3=0 THEN GO TO 1650
1625 IF B1=3 THEN GO SUB 3025: GO SUB 3025: GO TO 900
1630 GO TO 1900
1650 REM EMPUJAMOS ABAJO
1655 LET PUNT=PUNT+16: POKE PUNT,0: POKE PUNT+16,2
1657 GO SUB 2075: GO SUB 2075: GO SUB 3025: GO SUB 3025
1665 PRINT AT YPROTA+3, XPROTA; X$; AT YPROTA+4,XPROTA; Y$: GO SUB 3025
1675 PRINT AT YPROTA+3, XPROTA; X$; AT YPROTA+4,XPROTA; Y$: GO SUB 3025
1680 GO TO 1895

1895 LET MOV=MOV+1
1900 PRINT #0; INK 5; AT 1,28; MOV
1905 GO TO 1100

2000 REM PINTA PERSONAJE UN PASO A LA IZQUIERDA BORRANDO RASTRO
2005 LET XPROTA=XPROTA-1
2010 PRINT AT YPROTA, XPROTA; V$; " "; AT YPROTA+1, XPROTA; W$; " "
2012 BEEP 0.1,-60
2015 RETURN

2050 REM PINTA PERSONAJE UN PASO A LA DERECHA BORRANDO RASTRO
2055 PRINT AT YPROTA, XPROTA; " "; V$; AT YPROTA+1, XPROTA;" "; W$
2060 LET XPROTA=XPROTA+1
2062 BEEP 0.1,-60
2065 RETURN

2075 REM PINTA PERSONAJE UN PASO ARRIBA BORRANDO RASTRO
2080 LET YPROTA=YPROTA-1
2085 PRINT AT YPROTA, XPROTA; V$; AT YPROTA+1, XPROTA; W$; AT YPROTA+2, XPROTA;"  "
2087 BEEP 0.1,-60
2090 RETURN

3025 REM PINTA PERSONAJE UN PASO ABAJO BORRANDO RASTRO
3030 PRINT AT YPROTA,XPROTA;"  "
3035 LET YPROTA=YPROTA+1
3040 PRINT AT YPROTA, XPROTA; V$; AT YPROTA+1, XPROTA; W$
3042 BEEP 0.1,-60
3045 RETURN

3100 REM PINTA PERSONAJE UN PASO A LA IZQUIERDA NO BORRANDO RASTRO
3105 LET XPROTA=XPROTA-1
3110 PRINT AT YPROTA, XPROTA; V$; AT YPROTA+1, XPROTA; W$
3112 BEEP 0.1,-60
3115 RETURN

3120 REM PINTA PERSONAJE UN PASO A LA DERECHA NO BORRANDO RASTRO
3125 LET XPROTA=XPROTA+1
3130 PRINT AT YPROTA, XPROTA; INK 3; V$; AT YPROTA+1, XPROTA;"W$"
3135 RETURN

9000 REM NIVEL1
9001 DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
9002 DATA 0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0
9003 DATA 0,0,0,1,1,1,1,3,1,1,1,1,0,0,0,0
9004 DATA 0,1,1,1,0,2,0,2,0,0,0,1,1,1,0,0
9005 DATA 1,1,0,0,0,0,2,2,2,0,2,0,0,1,1,0
9006 DATA 1,2,0,2,0,2,0,2,0,0,0,2,0,2,1,0
9007 DATA 1,2,0,0,2,0,2,2,2,2,2,0,0,2,1,0
9008 DATA 1,2,2,2,0,2,0,0,2,0,0,2,2,2,1,0
9009 DATA 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0
9010 DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
9011 DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
9012 DATA 14,14: REM COORDENADAS DEL PROTA

9020 REM NIVEL 2
9021 DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
9022 DATA 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0
9023 DATA 1,0,0,2,0,2,0,0,0,2,0,2,0,3,1,0
9024 DATA 1,0,0,2,0,2,0,2,2,2,2,0,2,0,1,0
9025 DATA 1,0,0,2,0,2,0,0,0,2,0,2,0,0,1,0
9026 DATA 1,0,0,2,0,2,0,2,2,0,2,0,2,0,1,0
9027 DATA 1,0,0,2,0,2,0,0,0,2,0,2,0,2,1,0
9028 DATA 1,0,0,2,0,2,0,2,2,0,2,0,2,0,1,0
9029 DATA 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0
9030 DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
9031 DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
9032 DATA 2,8


9040 REM NIVEL 3
9041 DATA 0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0
9042 DATA 0,1,0,0,0,2,2,0,0,0,0,0,2,0,1,0
9043 DATA 0,1,0,0,0,0,0,0,2,2,0,2,0,2,1,0
9044 DATA 0,1,0,0,0,2,2,0,2,0,2,0,2,0,1,0
9045 DATA 0,1,0,0,2,2,0,0,2,2,2,2,2,0,1,0
9046 DATA 0,1,0,0,2,0,2,0,2,0,0,0,0,0,1,0
9047 DATA 0,1,0,0,0,2,0,2,0,0,2,0,0,2,1,0
9048 DATA 0,1,0,0,0,0,2,0,2,0,2,2,2,2,1,0
9049 DATA 0,1,0,0,0,2,2,0,0,2,2,2,3,0,1,0
9050 DATA 0,1,0,0,0,2,2,0,0,2,0,0,0,0,1,0
9051 DATA 0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0
9052 DATA 4,10

9060 REM NIVEL 4
9061 DATA 0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0
9062 DATA 0,0,0,0,0,1,0,1,0,0,0,0,1,0,0,0
9063 DATA 0,0,1,1,1,0,1,1,2,2,0,2,0,1,0,0
9064 DATA 0,1,0,1,1,0,1,0,0,2,0,0,0,1,0,0
9065 DATA 0,1,0,0,0,2,2,0,0,0,2,0,2,1,0,0
9066 DATA 0,1,2,0,2,0,2,0,0,0,2,2,0,1,0,0
9067 DATA 0,1,0,1,1,0,1,0,2,2,0,2,2,1,0,0
9068 DATA 0,0,1,1,1,0,1,1,0,2,0,0,3,1,0,0
9069 DATA 0,0,0,0,0,1,0,1,2,0,0,0,1,0,0,0
9070 DATA 0,0,0,0,0,0,1,0,1,1,1,1,0,0,0,0
9071 DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
9072 DATA 10,14

9080 REM NIVEL 5
9081 DATA 0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0
9082 DATA 0,0,0,0,0,0,1,3,1,0,0,0,0,0,0,0
9083 DATA 0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0
9084 DATA 0,0,0,0,1,0,2,2,2,0,1,0,0,0,0,0
9085 DATA 0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0
9086 DATA 0,0,1,0,2,2,2,2,2,2,2,0,1,0,0,0
9087 DATA 0,0,0,1,0,0,2,0,2,0,0,1,0,0,0,0
9088 DATA 0,0,0,0,1,0,0,2,0,0,1,0,0,0,0,0
9089 DATA 0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0
9090 DATA 0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0
9091 DATA 0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0
9092 DATA 14,18

9100 REM NIVEL 6
9101 DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
9102 DATA 0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0
9103 DATA 0,0,1,0,0,0,0,0,0,0,2,0,0,1,0,0
9104 DATA 0,0,1,2,0,0,2,0,0,2,0,0,0,1,0,0
9105 DATA 0,0,1,0,2,2,2,2,2,0,2,2,2,1,0,0
9106 DATA 0,0,1,0,2,0,0,2,0,2,2,0,0,1,0,0
9107 DATA 0,0,1,0,2,0,0,2,0,2,0,0,2,1,0,0
9108 DATA 0,0,1,3,0,2,0,0,0,1,2,0,0,1,0,0
9109 DATA 0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0
9110 DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
9111 DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
9112 DATA 24,10

9120 REM NIVEL 7
9121 DATA 0,0,0,1,0,1,0,1,0,1,0,1,0,1,0,0
9122 DATA 0,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0
9123 DATA 0,1,0,0,2,0,2,0,2,0,2,0,2,2,0,1
9124 DATA 0,0,1,0,0,2,0,0,0,0,0,0,0,0,0,1
9125 DATA 0,1,0,2,2,2,2,2,2,2,2,2,2,2,1,1
9126 DATA 1,0,0,0,2,0,0,2,0,0,0,0,0,0,0,1
9127 DATA 0,1,0,1,0,0,2,0,2,0,2,0,2,2,1,1
9128 DATA 0,0,1,0,2,0,0,2,2,0,2,0,2,0,0,1
9129 DATA 0,1,0,0,2,0,2,0,2,0,2,0,2,0,2,1
9130 DATA 0,0,1,0,3,1,0,1,0,1,0,1,0,1,1,0
9131 DATA 0,0,0,1,0,0,1,0,1,0,1,0,1,0,0,0
9132 DATA 6,4

9140 REM NIVEL 8
9141 DATA 0,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
9142 DATA 0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0
9143 DATA 0,1,0,1,1,1,1,1,1,0,1,0,1,1,0,0
9144 DATA 0,1,0,1,0,0,2,0,1,0,0,1,0,1,0,0
9145 DATA 0,1,0,1,0,0,2,0,0,2,2,2,0,0,1,0
9146 DATA 0,1,0,0,2,0,0,2,2,0,0,0,2,2,1,0
9147 DATA 0,1,0,1,0,0,2,0,0,2,0,2,0,3,1,0
9148 DATA 0,1,0,1,0,0,2,2,1,0,2,1,0,1,1,0
9149 DATA 0,1,0,1,1,1,1,1,1,0,0,1,0,0,0,0
9150 DATA 0,1,0,0,0,0,0,0,0,0,0,1,2,0,0,0
9151 DATA 0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0
9152 DATA 6,10

9160 REM NIVEL 9
9161 DATA 0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0
9162 DATA 0,0,1,1,3,2,0,2,0,2,0,0,1,1,0,0
9163 DATA 0,0,1,0,0,2,0,2,0,2,0,2,0,1,0,0
9164 DATA 0,0,1,0,1,0,0,2,0,0,0,0,0,1,0,0
9165 DATA 0,0,1,0,2,0,0,0,0,2,0,2,0,1,0,0
9166 DATA 0,0,1,2,0,2,2,0,2,0,2,2,2,1,0,0
9167 DATA 0,0,1,0,2,0,2,2,2,2,0,2,0,1,0,0
9168 DATA 0,0,1,0,0,0,2,0,0,0,2,0,0,1,0,0
9169 DATA 0,0,1,0,2,0,2,0,2,0,2,0,0,1,0,0
9170 DATA 0,0,1,1,0,0,0,0,2,0,2,0,1,1,0,0
9171 DATA 0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0
9172 DATA 8,18

9180 REM NIVEL 10
9181 DATA 0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0
9182 DATA 0,0,0,0,0,1,1,1,0,1,1,1,0,0,0,0
9183 DATA 0,0,0,1,1,1,0,2,0,0,0,1,1,1,0,0
9184 DATA 0,1,1,1,0,2,0,0,2,0,2,0,0,1,1,1
9185 DATA 1,1,0,0,2,0,2,0,0,2,0,0,2,0,0,1
9186 DATA 1,0,0,2,0,2,0,2,2,2,2,2,2,0,0,3
9187 DATA 1,1,0,0,2,0,2,2,0,2,0,0,2,0,2,1
9188 DATA 0,1,1,1,0,2,0,0,2,0,0,2,0,1,1,1
9189 DATA 0,0,0,1,1,1,0,2,0,0,0,1,1,1,0,0
9190 DATA 0,0,0,0,0,1,1,1,0,1,1,1,0,0,0,0
9191 DATA 0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0
9192 DATA 2,10

9500 REM UDG
9510 REM MURO
9511 DATA 0,170,254,254,0,239,239,239
9512 DATA 0,170,254,254,0,239,239,239
9513 DATA 0,254,254,254,0,239,239,170
9514 DATA 0,254,254,254,0,239,239,170

9520 REM EMPUJABLE
9521 DATA 0,127,127,0,111,111,96,109
9522 DATA 0,254,254,0,182,118,230,214
9523 DATA 107,103,110,109,0,127,127,0
9524 DATA 182,6,246,246,0,254,254,0

9530 REM PROTA
9531 DATA 0,7,24,32,64,64,64,56
9532 DATA 0,224,24,100,18,2,2,28
9533 DATA 71,120,71,86,71,126,31,0
9534 DATA 226,10,210,170,210,166,248,0

9540 REM CARACTER ROTULO DEAD END_
9541 DATA 0,85,0,170,85,170,255,255

9550 REM SALIDA
9551 DATA 0,42,85,0,127,74,90,77
9552 DATA 0,170,84,0,254,162,182,182
9553 DATA 90,74,127,127,0,42,85,0
9554 DATA 182,182,254,254,0,170,84,0

9560 REM CARACTER MARCO FINAL DE NIVEL
9561 DATA 170,85,170,85,170,85,170,85