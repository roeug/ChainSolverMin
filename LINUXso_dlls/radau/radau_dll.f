C wrapper for RADAU, function radaud - radau driver
      SUBROUTINE radaud(N,FCN,X,Y,XEND,H,
     &                  RTOL,ATOL,ITOL,
     &                  JAC ,IJAC,MLJAC,MUJAC,
     &                  MAS ,IMAS,MLMAS,MUMAS,
     &                  SOLOUT,IOUT,
     &                  WORK,LWORK,IWORK,LIWORK,RPAR,IPAR,IDID)
c      SUBROUTINE radaud(F, NEQ, Y, T, TOUT, ITOL, RTOL, ATOL, ITASK,
c     1            ISTATE, IOPT, RWORK, LRW, IWORK, LIW, JAC, MF,
c     3            RPAR, IPAR)
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
      DIMENSION Y(*),ATOL(*),RTOL(*),WORK(*),IWORK(*)
      DIMENSION RPAR(*),IPAR(*)
      LOGICAL IMPLCT,JBAND,ARRET,STARTN,PRED
      EXTERNAL FCN,JAC       !,MAS,SOLOUT
      EXTERNAL RADAU         
c
c      EXTERNAL F, JAC
c      DOUBLE PRECISION Y, T, TOUT, RTOL, ATOL, RWORK, RPAR, h
c      INTEGER NEQ, ITOL, ITASK, ISTATE, IOPT, LRW, IWORK, LIW,
c     1        MF, IPAR
c      DIMENSION Y(*), RTOL(*), ATOL(*), RWORK(LRW), IWORK(LIW),
c     1          RPAR(*), IPAR(*) 
c      open(5, file='radau0.log')
c      write(5,*)'RADAU to be started'                        
c      close(5)
      open(6, file='radau.log')
      write(6,*)'RADAU to be started'                        
      CALL RADAU(N,FCN,X,Y,XEND,H,
     &                  RTOL,ATOL,ITOL,
     &                  JAC ,IJAC,MLJAC,MUJAC,
     &                  MAS ,0,MLMAS,MUMAS,
     &                  SOLOUT,0,
     &                  WORK,LWORK,IWORK,LIWORK,RPAR,IPAR,IDID)
      write(6,*)'RADAU finished'                   
 	    close(6)
	    end 
c subroutine radaud
c IOUT==0
      SUBROUTINE SOLOUT (NR,XOLD,X,Y,CONT,LRC,N,
     & RPAR,IPAR,IRTRN)
      DOUBLE PRECISION X,Y,CONT
      DIMENSION Y(*),CONT(*) 
      return 
      END 
c SUBROUTINE SOLOUT

