      SUBROUTINE ROOTS (NG, HMIN, JFLAG, X0, X1, G0, G1, GX, X, JROOT)
CLLL. OPTIMIZE
      INTEGER NG, JFLAG, JROOT
      DOUBLE PRECISION HMIN, X0, X1, G0, G1, GX, X
      DIMENSION G0(NG), G1(NG), GX(NG), JROOT(NG) 
      INTEGER IOWND3, IMAX, LAST, IDUM3 
      DOUBLE PRECISION ALPHA, X2, RDUM3 
      COMMON /LSR001/ ALPHA, X2, RDUM3(3),
     1   IOWND3(3), IMAX, LAST, IDUM3(4)
C-----------------------------------------------------------------------
C THIS SUBROUTINE FINDS THE LEFTMOST ROOT OF A SET OF ARBITRARY
C FUNCTIONS GI(X) (I = 1,...,NG) IN AN INTERVAL (X0,X1).  ONLY ROOTS
C OF ODD MULTIPLICITY (I.E. CHANGES OF SIGN OF THE GI) ARE FOUND.
C HERE THE SIGN OF X1 - X0 IS ARBITRARY, BUT IS CONSTANT FOR A GIVEN
C PROBLEM, AND -LEFTMOST- MEANS NEAREST TO X0.
C THE VALUES OF THE VECTOR-VALUED FUNCTION G(X) = (GI, I=1...NG)
C ARE COMMUNICATED THROUGH THE CALL SEQUENCE OF ROOTS.
C THE METHOD USED IS THE ILLINOIS ALGORITHM.
C
C REFERENCE..
C KATHIE L. HIEBERT AND LAWRENCE F. SHAMPINE, IMPLICITLY DEFINED
C OUTPUT POINTS FOR SOLUTIONS OF ODE-S, SANDIA REPORT SAND80-0180,
C FEBRUARY, 1980.
C
C DESCRIPTION OF PARAMETERS.
C
C NG     = NUMBER OF FUNCTIONS GI, OR THE NUMBER OF COMPONENTS OF
C          THE VECTOR VALUED FUNCTION G(X).  INPUT ONLY.
C
C HMIN   = RESOLUTION PARAMETER IN X.  INPUT ONLY.  WHEN A ROOT IS
C          FOUND, IT IS LOCATED ONLY TO WITHIN AN ERROR OF HMIN IN X. 
C          TYPICALLY, HMIN SHOULD BE SET TO SOMETHING ON THE ORDER OF 
C               100 * UROUND * MAX(ABS(X0),ABS(X1)),
C          WHERE UROUND IS THE UNIT ROUNDOFF OF THE MACHINE.
C
C JFLAG  = INTEGER FLAG FOR INPUT AND OUTPUT COMMUNICATION. 
C
C          ON INPUT, SET JFLAG = 0 ON THE FIRST CALL FOR THE PROBLEM, 
C          AND LEAVE IT UNCHANGED UNTIL THE PROBLEM IS COMPLETED.
C          (THE PROBLEM IS COMPLETED WHEN JFLAG .GE. 2 ON RETURN.)
C
C          ON OUTPUT, JFLAG HAS THE FOLLOWING VALUES AND MEANINGS..
C          JFLAG = 1 MEANS ROOTS NEEDS A VALUE OF G(X).  SET GX = G(X)
C                    AND CALL ROOTS AGAIN.
C          JFLAG = 2 MEANS A ROOT HAS BEEN FOUND.  THE ROOT IS
C                    AT X, AND GX CONTAINS G(X).  (ACTUALLY, X IS THE 
C                    RIGHTMOST APPROXIMATION TO THE ROOT ON AN INTERVAL
C                    (X0,X1) OF SIZE HMIN OR LESS.)
C          JFLAG = 3 MEANS X = X1 IS A ROOT, WITH ONE OR MORE OF THE GI
C                    BEING ZERO AT X1 AND NO SIGN CHANGES IN (X0,X1). 
C                    GX CONTAINS G(X) ON OUTPUT.
C          JFLAG = 4 MEANS NO ROOTS (OF ODD MULTIPLICITY) WERE
C                    FOUND IN (X0,X1) (NO SIGN CHANGES).
C
C X0,X1  = ENDPOINTS OF THE INTERVAL WHERE ROOTS ARE SOUGHT.
C          X1 AND X0 ARE INPUT WHEN JFLAG = 0 (FIRST CALL), AND
C          MUST BE LEFT UNCHANGED BETWEEN CALLS UNTIL THE PROBLEM IS
C          COMPLETED.  X0 AND X1 MUST BE DISTINCT, BUT X1 - X0 MAY BE 
C          OF EITHER SIGN.  HOWEVER, THE NOTION OF -LEFT- AND -RIGHT- 
C          WILL BE USED TO MEAN NEARER TO X0 OR X1, RESPECTIVELY.
C          WHEN JFLAG .GE. 2 ON RETURN, X0 AND X1 ARE OUTPUT, AND
C          ARE THE ENDPOINTS OF THE RELEVANT INTERVAL.
C
C G0,G1  = ARRAYS OF LENGTH NG CONTAINING THE VECTORS G(X0) AND G(X1),
C          RESPECTIVELY.  WHEN JFLAG = 0, G0 AND G1 ARE INPUT AND
C          NONE OF THE G0(I) SHOULD BE BE ZERO.
C          WHEN JFLAG .GE. 2 ON RETURN, G0 AND G1 ARE OUTPUT.
C
C GX     = ARRAY OF LENGTH NG CONTAINING G(X).  GX IS INPUT 
C          WHEN JFLAG = 1, AND OUTPUT WHEN JFLAG .GE. 2.
C
C X      = INDEPENDENT VARIABLE VALUE.  OUTPUT ONLY.
C          WHEN JFLAG = 1 ON OUTPUT, X IS THE POINT AT WHICH G(X)
C          IS TO BE EVALUATED AND LOADED INTO GX. 
C          WHEN JFLAG = 2 OR 3, X IS THE ROOT.
C          WHEN JFLAG = 4, X IS THE RIGHT ENDPOINT OF THE INTERVAL, X1.
C
C JROOT  = INTEGER ARRAY OF LENGTH NG.  OUTPUT ONLY.
C          WHEN JFLAG = 2 OR 3, JROOT INDICATES WHICH COMPONENTS
C          OF G(X) HAVE A ROOT AT X.  JROOT(I) IS 1 IF THE I-TH
C          COMPONENT HAS A ROOT, AND JROOT(I) = 0 OTHERWISE.
C
C NOTE.. THIS ROUTINE USES THE COMMON BLOCK /LSR001/ TO SAVE
C THE VALUES OF CERTAIN VARIABLES BETWEEN CALLS (OWN VARIABLES).
C-----------------------------------------------------------------------
      INTEGER I, IMXOLD, NXLAST
      DOUBLE PRECISION T2, TMAX, ZERO
      LOGICAL ZROOT, SGNCHG, XROOT
      DATA ZERO/0.0D0/
C
      IF (JFLAG .EQ. 1) GO TO 200
C JFLAG .NE. 1.  CHECK FOR CHANGE IN SIGN OF G OR ZERO AT X1. ----------
      IMAX = 0
      TMAX = ZERO
      ZROOT = .FALSE.
      DO 120 I = 1,NG
        IF (DABS(G1(I)) .GT. ZERO) GO TO 110
        ZROOT = .TRUE.
        GO TO 120
C AT THIS POINT, G0(I) HAS BEEN CHECKED AND CANNOT BE ZERO. ------------
 110    IF (DSIGN(1.0D0,G0(I)) .EQ. DSIGN(1.0D0,G1(I))) GO TO 120
          T2 = DABS(G1(I)/(G1(I)-G0(I)))
          IF (T2 .LE. TMAX) GO TO 120
            TMAX = T2
            IMAX = I
 120    CONTINUE
      IF (IMAX .GT. 0) GO TO 130
      SGNCHG = .FALSE.
      GO TO 140
 130  SGNCHG = .TRUE.
 140  IF (.NOT. SGNCHG) GO TO 400
C THERE IS A SIGN CHANGE.  FIND THE FIRST ROOT IN THE INTERVAL. --------
      XROOT = .FALSE.
      NXLAST = 0
      LAST = 1
C
C REPEAT UNTIL THE FIRST ROOT IN THE INTERVAL IS FOUND.  LOOP POINT. ---
 150  CONTINUE
      IF (XROOT) GO TO 300
      IF (NXLAST .EQ. LAST) GO TO 160
      ALPHA = 1.0D0 
      GO TO 180
 160  IF (LAST .EQ. 0) GO TO 170
      ALPHA = 0.5D0*ALPHA
      GO TO 180
 170  ALPHA = 2.0D0*ALPHA
 180  X2 = X1 - (X1-X0)*G1(IMAX)/(G1(IMAX) - ALPHA*G0(IMAX))
      IF ((DABS(X2-X0) .LT. HMIN) .AND. 
     1   (DABS(X1-X0) .GT. 10.0D0*HMIN)) X2 = X0 + 0.1D0*(X1-X0)
      JFLAG = 1
      X = X2
C RETURN TO THE CALLING ROUTINE TO GET A VALUE OF GX = G(X). -----------
      RETURN
C CHECK TO SEE IN WHICH INTERVAL G CHANGES SIGN. -----------------------
 200  IMXOLD = IMAX 
      IMAX = 0
      TMAX = ZERO
      ZROOT = .FALSE.
      DO 220 I = 1,NG
        IF (DABS(GX(I)) .GT. ZERO) GO TO 210
        ZROOT = .TRUE.
        GO TO 220
C NEITHER G0(I) NOR GX(I) CAN BE ZERO AT THIS POINT. -------------------
 210    IF (DSIGN(1.0D0,G0(I)) .EQ. DSIGN(1.0D0,GX(I))) GO TO 220
          T2 = DABS(GX(I)/(GX(I) - G0(I)))
          IF (T2 .LE. TMAX) GO TO 220
            TMAX = T2
            IMAX = I
 220    CONTINUE
      IF (IMAX .GT. 0) GO TO 230
      SGNCHG = .FALSE.
      IMAX = IMXOLD 
      GO TO 240
 230  SGNCHG = .TRUE.
 240  NXLAST = LAST 
      IF (.NOT. SGNCHG) GO TO 250
C SIGN CHANGE BETWEEN X0 AND X2, SO REPLACE X1 WITH X2. ----------------
      X1 = X2
      CALL DCOPY (NG, GX, 1, G1, 1)
      LAST = 1
      XROOT = .FALSE.
      GO TO 270
 250  IF (.NOT. ZROOT) GO TO 260
C ZERO VALUE AT X2 AND NO SIGN CHANGE IN (X0,X2), SO X2 IS A ROOT. -----
      X1 = X2
      CALL DCOPY (NG, GX, 1, G1, 1)
      XROOT = .TRUE.
      GO TO 270
C NO SIGN CHANGE BETWEEN X0 AND X2.  REPLACE X0 WITH X2. ---------------
 260  CONTINUE
      CALL DCOPY (NG, GX, 1, G0, 1)
      X0 = X2
      LAST = 0
      XROOT = .FALSE.
 270  IF (DABS(X1-X0) .LE. HMIN) XROOT = .TRUE.
      GO TO 150
C
C RETURN WITH X1 AS THE ROOT.  SET JROOT.  SET X = X1 AND GX = G1. -----
 300  JFLAG = 2
      X = X1
      CALL DCOPY (NG, G1, 1, GX, 1)
      DO 320 I = 1,NG
        JROOT(I) = 0
        IF (DABS(G1(I)) .GT. ZERO) GO TO 310
          JROOT(I) = 1
          GO TO 320 
 310    IF (DSIGN(1.0D0,G0(I)) .NE. DSIGN(1.0D0,G1(I))) JROOT(I) = 1
 320    CONTINUE
      RETURN
C
C NO SIGN CHANGE IN THE INTERVAL.  CHECK FOR ZERO AT RIGHT ENDPOINT. ---
 400  IF (.NOT. ZROOT) GO TO 420
C
C ZERO VALUE AT X1 AND NO SIGN CHANGE IN (X0,X1).  RETURN JFLAG = 3. ---
      X = X1
      CALL DCOPY (NG, G1, 1, GX, 1)
      DO 410 I = 1,NG
        JROOT(I) = 0
        IF (DABS(G1(I)) .LE. ZERO) JROOT (I) = 1
 410  CONTINUE
      JFLAG = 3
      RETURN
C
C NO SIGN CHANGES IN THIS INTERVAL.  SET X = X1, RETURN JFLAG = 4. -----
 420  CALL DCOPY (NG, G1, 1, GX, 1)
      X = X1
      JFLAG = 4
      RETURN
C----------------------- END OF SUBROUTINE ROOTS -----------------------
      END 