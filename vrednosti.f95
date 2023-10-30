program vrednosti
    implicit none
    
    real, parameter :: pi = 3.141592
    complex :: perioda
    perioda = cmplx(0.0, 2*pi)

    print *, "To je perioda eksponentne funckije", aimag(perioda),"i"

end program vrednosti