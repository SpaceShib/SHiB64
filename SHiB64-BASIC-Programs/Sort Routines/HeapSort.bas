10 PRINT "Heap Sort Example"
20 INPUT "How many values do you want to sort"; VLS
40 DIM LST(VLS)
50 FOR I = 1 TO VLS
60 LST(I) = INT(1000*RND(1))
70 NEXT I
80 GOSUB 400
90 GOSUB 1000
100 GOSUB 400
110 END

400 REM PRINT ARRAY
410 FOR J=1 TO VLS
420 PRINT LST(J)
430 NEXT J
435 PRINT " "
440 RETURN

1000 REM SORT ARRAY
1010 REM straight from Knuth's The Art of Computer Programming
1020 IF VLS < 2 THEN 1140
1030 L = INT(VLS/2)+1
1040 R = VLS
1050 IF L = 1 THEN 1090
1060 L = L -1
1070 K = LST(L)
1080 GOTO 1150
1090 K = LST(R)
1100 LST(R) = LST(1)
1110 R = R -1
1120 IF R>1 THEN 1150
1130 LST(1)=K
1140 RETURN
1150 J = L
1160 I = J
1170 J = J+J
1180 IF J>R THEN 1250
1190 IF J=R THEN 1220
1200 IF LST(J)>=LST(J+1) THEN 1220
1210 J = J+1
1220 IF K>=LST(J) THEN 1250
1230 LST(I)=LST(J)
1240 GOTO 1160
1250 LST(I)=K
1260 GOTO 1050