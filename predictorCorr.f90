program corrector
    implicit none
    integer::i,n
    real::t(0:1000),y(0:1000),k1,k2,k3,k4,h,f,p
    h=0.25
    t(0)=0
    y(0)=0.5
    n=nint(2.0/h)
    print*, ' i      t     y'
    print*, 0 , t(0) ,y(0)
    do i=1,3
        k1=f(t(i-1),y(i-1))
        k2=f(t(i-1)+h/2.0,y(i-1)+(h/2.0)*k1)
        k3=f(t(i-1)+h/2.0,y(i-1)+(h/2.0)*k3)
        k4=f(t(i-1)+h,y(i-1)+h*k3)
        y(i)=y(i-1)+(1.0/6.0)*(k1+2*k2+2*k3+k4)
        print*, i ,t(i),y(i)
        end do
        do i=3,n-1
            t(i+1)=(i+1)*h
            p=y(i)+(h/24.0)*(55.0*f(t(i),y(i))-59.0*f(t(i-1),y(i-1))+37.0*f(t(i-2),y(i-2))-9.0*f(t(i-3),y(i-3)))
            y(i+1)=y(i)+(h/24.0)*(9.0*f(t(i+1),p)+19.0*f(t(i),y(i))-5.0*f(t(i-1),y(i-1))+f(t(i-2),y(i-2)))
            print*, i+1 ,t(i+1),y(i+1)
            end do
            end program
            function f(t,y)
                implicit none
                real::t,y,f
                f=t-y**2+1
                end function

