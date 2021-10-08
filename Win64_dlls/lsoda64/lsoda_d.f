C wrapper for lsoda, function lsodad - lsoda driver
      SUBROUTINE lsodad(fex,neq,y,t,tout,itol,rtol,atol,itask,istate,
      1      iopt,rwork,lrw,iwork,liw,jac,jt)
      EXTERNAL lsoda         
      EXTERNAL FEX, JAC
      DOUBLE PRECISION Y, T, TOUT, RTOL, ATOL, RWORK
      INTEGER NEQ, ITOL, ITASK, ISTATE, IOPT, LRW, IWORK, LIW,
     1        JT
      DIMENSION Y(*), RTOL(*), ATOL(*), RWORK(LRW), IWORK(LIW)
      open(6, file='lsoda.log')
      call xsetun(6)
      call xsetf(1)
      iwork(5)=1
      write(6,*)'LSODA to be started'                   
      call lsoda(fex,neq,y,t,tout,itol,rtol,atol,itask,istate,
      1      iopt,rwork,lrw,iwork,liw,jac,jt)
      write(6,*)'LSODA finished'                   
 	    close(6)
	    end subroutine lsodad
