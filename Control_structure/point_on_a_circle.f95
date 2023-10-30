!Write a program to read in a vector defined by a length,  tex2html_wrap_inline3202 and an angle, 
!in degrees which prints out the corresponding  tex2html_wrap_inline3206 co-ordinates. 
!Recall that arguments to trigonometric functions are in radians.

!Demonstrate correctness by giving the co-ordinates for the following vectors:

! r = 12, theta = 77
! r = 1000, theta = 0
! r = 1000, theta = 90
! r = 20, theta = 100
! r = 12, theta = 437



program point_on_a_circle
    implicit none
    
    real :: x_coord 
    real :: y_coord 
    real :: radius
    real :: degres
    real, parameter :: pi = 4*atan(1.)

    print *, "Radij in kot:"
    read *, radius, degres

    ! Pretvorba v radiane x deg = x * 2pi/360

    x_coord = radius * cos(degres*(2*pi)/360)
    y_coord = radius * sin(degres*(2*pi)/360)

    print *, "Točka je (", x_coord,",", y_coord, ")"

end program point_on_a_circle