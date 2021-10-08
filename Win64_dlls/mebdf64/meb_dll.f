C wrapper for MEBDF, function MEBD - MEBDF driver
      subroutine dmas(n,am,masbnd,ipar,rpar,ierr)
      integer n,masbnd,ipar(*),ierr
      double precision am(masbnd,n),rpar(*)
      double precision t,y,dy
      if (ierr.ne.0) then
         print *, 'MEBDFD: ERROR: ',
     +            'can not handle MEVAL IERR'
         stop
      endif
      return
      end
c
      SUBROUTINE MEBD(N,T0,HO,Y0,TOUT,TEND,MF,IDID,LOUT,LWORK,
     1   WORK,LIWORK,IWORK,MBND,MASBND,MAXDER,ITOL,RTOL,ATOL,RPAR,IPAR
     2   ,F,PDERV,IERR)
      EXTERNAL MEBDF         
      EXTERNAL F,PDERV
      DOUBLE PRECISION T0,HO,Y0,TOUT,TEND,WORK,RTOL,ATOL,RPAR,F,PDERV
      INTEGER IDID,LIWORK,LOUT,LWORK,MF,N,MAXDER,ITOL,IWORK,MBND,MASBND
      DIMENSION  WORK(*),Y0(*),RTOL(*),ATOL(*),RPAR(*),IPAR(*),
     1  IWORK(*), MBND(*), MASBND(*)
c
c      DOUBLE PRECISION Y, T, TOUT, RTOL, ATOL, RWORK, RPAR
c      INTEGER NEQ, ITOL, ITASK, ISTATE, IOPT, LRW, IWORK, LIW,
c     1        MF, IPAR
c      DIMENSION Y(*), RTOL(*), ATOL(*), RWORK(LRW), IWORK(LIW),
c     1          RPAR(*), IPAR(*) 
C      open(6, file='mebdf.log')
C      write(6,*)'MEBDF to be started'                   
      MASBND(1)=0
      CALL MEBDF(N,T0,HO,Y0,TOUT,TEND,MF,IDID,6,LWORK,
     +   WORK,LIWORK,IWORK,MBND,MASBND,MAXDER,ITOL,RTOL,ATOL,RPAR,IPAR
     +   ,F,PDERV,dmas,IERR)
C      write(6,*)'MEBDF finished'                   
C 	    close(6)
	    end subroutine MEBD
