      SUBROUTINE RCHEK (JOB, G, NEQ, Y, YH, NYH, G0, G1, GX, JROOT, IRT)
CLLL. OPTIMIZE
      EXTERNAL G
      INTEGER JOB, NEQ, NYH, JROOT, IRT 
      DOUBLE PRECISION Y, YH, G0, G1, GX
      DIMENSION NEQ(1), Y(1), YH(NYH,1), G0(1), G1(1), GX(1), JROOT(1)
      INTEGER IOWND, IOWNS,
     1   ICF, IERPJ, IERSL, JCUR, JSTART, KFLAG, L, METH, MITER,
     2   MAXORD, MAXCOR, MSBP, MXNCF, N, NQ, NST, NFE, NJE, NQU
      INTEGER IOWND3, IOWNR3, IRFND, ITASKC, NGC, NGE
      INTEGER I, IFLAG, JFLAG 
      DOUBLE PRECISION ROWNS, 
     1   CCMAX, EL0, H, HMIN, HMXI, HU, RC, TN, UROUND
      DOUBLE PRECISION ROWNR3, T0, TLAST, TOUTC
      DOUBLE PRECISION HMING, T1, TEMP1, TEMP2, X 
      LOGICAL ZROOT 
      COMMON /LS0001/ ROWNS(209),
     2   CCMAX, EL0, H, HMIN, HMXI, HU, RC, TN, UROUND,
     3   IOWND(14), IOWNS(6), 
     4   ICF, IERPJ, IERSL, JCUR, JSTART, KFLAG, L, METH, MITER,
     5   MAXORD, MAXCOR, MSBP, MXNCF, N, NQ, NST, NFE, NJE, NQU
      COMMON /LSR001/ ROWNR3(2), T0, TLAST, TOUTC,
     1   IOWND3(3), IOWNR3(2), IRFND, ITASKC, NGC, NGE
C-----------------------------------------------------------------------
C THIS ROUTINE CHECKS FOR THE PRESENCE OF A ROOT IN THE
C VICINITY OF THE CURRENT T, IN A MANNER DEPENDING ON THE
C INPUT FLAG JOB.  IT CALLS SUBROUTINE ROOTS TO LOCATE THE ROOT
C AS PRECISELY AS POSSIBLE.
C
C IN ADDITION TO VARIABLES DESCRIBED PREVIOUSLY, RCHEK
C USES THE FOLLOWING FOR COMMUNICATION..
C JOB    = INTEGER FLAG INDICATING TYPE OF CALL.. 
C          JOB = 1 MEANS THE PROBLEM IS BEING INITIALIZED, AND RCHEK
C                  IS TO LOOK FOR A ROOT AT OR VERY NEAR THE INITIAL T.
C          JOB = 2 MEANS A CONTINUATION CALL TO THE SOLVER WAS JUST
C                  MADE, AND RCHEK IS TO CHECK FOR A ROOT IN THE
C                  RELEVANT PART OF THE STEP LAST TAKEN.
C          JOB = 3 MEANS A SUCCESSFUL STEP WAS JUST TAKEN, AND RCHEK
C                  IS TO LOOK FOR A ROOT IN THE INTERVAL OF THE STEP. 
C G0     = ARRAY OF LENGTH NG, CONTAINING THE VALUE OF G AT T = T0.
C          G0 IS INPUT FOR JOB .GE. 2 AND ON OUTPUT IN ALL CASES.
C G1,GX  = ARRAYS OF LENGTH NG FOR WORK SPACE.
C IRT    = COMPLETION FLAG..
C          IRT = 0  MEANS NO ROOT WAS FOUND.
C          IRT = -1 MEANS JOB = 1 AND A ROOT WAS FOUND TOO NEAR TO T. 
C          IRT = 1  MEANS A LEGITIMATE ROOT WAS FOUND (JOB = 2 OR 3). 
C                   ON RETURN, T0 IS THE ROOT LOCATION, AND Y IS THE
C                   CORRESPONDING SOLUTION VECTOR.
C T0     = VALUE OF T AT ONE ENDPOINT OF INTERVAL OF INTEREST.  ONLY
C          ROOTS BEYOND T0 IN THE DIRECTION OF INTEGRATION ARE SOUGHT.
C          T0 IS INPUT IF JOB .GE. 2, AND OUTPUT IN ALL CASES.
C          T0 IS UPDATED BY RCHEK, WHETHER A ROOT IS FOUND OR NOT.
C TLAST  = LAST VALUE OF T RETURNED BY THE SOLVER (INPUT ONLY).
C TOUTC  = COPY OF TOUT (INPUT ONLY).
C IRFND  = INPUT FLAG SHOWING WHETHER THE LAST STEP TAKEN HAD A ROOT. 
C          IRFND = 1 IF IT DID, = 0 IF NOT.
C ITASKC = COPY OF ITASK (INPUT ONLY).
C NGC    = COPY OF NG (INPUT ONLY).
C-----------------------------------------------------------------------
C
      IRT = 0
      DO 10 I = 1,NGC
 10     JROOT(I) = 0
      HMING = (DABS(TN) + DABS(H))*UROUND*100.0D0 
C
      GO TO (100, 200, 300), JOB
C
C EVALUATE G AT INITIAL T, AND CHECK FOR ZERO VALUES. ------------------
 100  CONTINUE
      T0 = TN
      CALL G (NEQ, T0, Y, NGC, G0)
      NGE = 1
      ZROOT = .FALSE.
      DO 110 I = 1,NGC
 110    IF (DABS(G0(I)) .LE. 0.0D0) ZROOT = .TRUE.
      IF (.NOT. ZROOT) GO TO 190
C G HAS A ZERO AT T.  LOOK AT G AT T + (SMALL INCREMENT). --------------
      TEMP1 = DSIGN(HMING,H)
      T0 = T0 + TEMP1
      TEMP2 = TEMP1/H
      DO 120 I = 1,N
 120    Y(I) = Y(I) + TEMP2*YH(I,2)
      CALL G (NEQ, T0, Y, NGC, G0)
      NGE = NGE + 1 
      ZROOT = .FALSE.
      DO 130 I = 1,NGC
 130    IF (DABS(G0(I)) .LE. 0.0D0) ZROOT = .TRUE.
      IF (.NOT. ZROOT) GO TO 190
C G HAS A ZERO AT T AND ALSO CLOSE TO T.  TAKE ERROR RETURN. -----------
      IRT = -1
      RETURN
C
 190  CONTINUE
      RETURN
C
C
 200  CONTINUE
      IF (IRFND .EQ. 0) GO TO 260
C IF A ROOT WAS FOUND ON THE PREVIOUS STEP, EVALUATE G0 = G(T0). -------
      CALL INTDY (T0, 0, YH, NYH, Y, IFLAG)
      CALL G (NEQ, T0, Y, NGC, G0)
      NGE = NGE + 1 
      ZROOT = .FALSE.
      DO 210 I = 1,NGC
 210    IF (DABS(G0(I)) .LE. 0.0D0) ZROOT = .TRUE.
      IF (.NOT. ZROOT) GO TO 260
C G HAS A ZERO AT T0.  LOOK AT G AT T + (SMALL INCREMENT). -------------
      TEMP1 = DSIGN(HMING,H)
      T0 = T0 + TEMP1
      IF ((T0 - TN)*H .LT. 0.0D0) GO TO 230
      TEMP2 = TEMP1/H
      DO 220 I = 1,N
 220    Y(I) = Y(I) + TEMP2*YH(I,2)
      GO TO 240
 230  CALL INTDY (T0, 0, YH, NYH, Y, IFLAG)
 240  CALL G (NEQ, T0, Y, NGC, G0)
      NGE = NGE + 1 
      ZROOT = .FALSE.
      DO 250 I = 1,NGC
        IF (DABS(G0(I)) .GT. 0.0D0) GO TO 250
        JROOT(I) = 1
        ZROOT = .TRUE.
 250    CONTINUE
      IF (.NOT. ZROOT) GO TO 260
C G HAS A ZERO AT T0 AND ALSO CLOSE TO T0.  RETURN ROOT. ---------------
      IRT = 1
      RETURN
C     HERE, G0 DOES NOT HAVE A ROOT
C G0 HAS NO ZERO COMPONENTS.  PROCEED TO CHECK RELEVANT INTERVAL. ------
 260  IF (TN .EQ. TLAST) GO TO 390
C
 300  CONTINUE
C SET T1 TO TN OR TOUTC, WHICHEVER COMES FIRST, AND GET G AT T1. -------
      IF (ITASKC.EQ.2 .OR. ITASKC.EQ.3 .OR. ITASKC.EQ.5) GO TO 310
      IF ((TOUTC - TN)*H .GE. 0.0D0) GO TO 310
      T1 = TOUTC
      IF ((T1 - T0)*H .LE. 0.0D0) GO TO 390
      CALL INTDY (T1, 0, YH, NYH, Y, IFLAG)
      GO TO 330
 310  T1 = TN
      DO 320 I = 1,N
 320    Y(I) = YH(I,1)
 330  CALL G (NEQ, T1, Y, NGC, G1)
      NGE = NGE + 1 
C CALL ROOTS TO SEARCH FOR ROOT IN INTERVAL FROM T0 TO T1. -------------
      JFLAG = 0
 350  CONTINUE
      CALL ROOTS (NGC, HMING, JFLAG, T0, T1, G0, G1, GX, X, JROOT)
      IF (JFLAG .GT. 1) GO TO 360
      CALL INTDY (X, 0, YH, NYH, Y, IFLAG)
      CALL G (NEQ, X, Y, NGC, GX)
      NGE = NGE + 1 
      GO TO 350
 360  T0 = X
      CALL DCOPY (NGC, GX, 1, G0, 1)
      IF (JFLAG .EQ. 4) GO TO 390
C FOUND A ROOT.  INTERPOLATE TO X AND RETURN. --------------------------
      CALL INTDY (X, 0, YH, NYH, Y, IFLAG)
      IRT = 1
      RETURN
C
 390  CONTINUE
      RETURN
C----------------------- END OF SUBROUTINE RCHEK -----------------------
      END 
