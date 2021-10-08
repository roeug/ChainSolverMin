      PROGRAM a_d   
      external fex
      double precision atol, rtol, rwork, t, tout, y
      dimension y(3), atol(3), rwork(70), iwork(23)
      neq = 3
      y(1) = 1.0d0
      y(2) = 0.0d0
      y(3) = 0.0d0
      t = 0.0d0
      tout = 0.4d0
      itol = 2
      rtol = 1.0d-4
      atol(1) = 1.0d-6
      atol(2) = 1.0d-10
      atol(3) = 1.0d-6
      itask = 1
      istate = 1
      iopt = 0
      lrw = 70
      liw = 23
      jt = 2
      do 40 iout = 1,12
      open(6, file='lsoda.log')
      call xsetun(6)
      call xsetf(1)
      iwork(5)=1
      call lsoda(fex,neq,y,t,tout,itol,rtol,atol,itask,istate,  &
       iopt,rwork,lrw,iwork,liw,jdum,jt)
      write(6,20)t,y(1),y(2),y(3)
 20   format(7h at t =,e12.4,6h   y =,3e14.6)
      if (istate .lt. 0) go to 80
 40   tout = tout*10.0d0
      write(6,60)iwork(11),iwork(12),iwork(13),iwork(19),rwork(15)
 60   format(/12h no. steps =,i4,11h  no. f-s =,i4,11h  no. j-s =,i4/   &
       19h method last used =,i2,25h   last switch was at t =,e12.4)
      stop
 80   write(6,90)istate
 90   format(///22h error halt.. istate =,i3)
      close(6)
      stop
      end
      
      subroutine fex (neq, t, y, ydot)
      double precision t, y, ydot
      dimension y(3), ydot(3)
      ydot(1) = -.04d0*y(1) + 1.0d4*y(2)*y(3)
      ydot(3) = 3.0d7*y(2)*y(2)
      ydot(2) = -ydot(1) - ydot(3)
      return
      end
      
 