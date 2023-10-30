program arrays
implicit none

integer :: i
integer :: j
integer :: arr1(10), arr2(10)
REAL, DIMENSION(1:10)  :: ONE
REAL, DIMENSION(2,0:2) :: TWO
INTEGER, DIMENSION(-1:1,3,2) :: THREE
REAL, DIMENSION(0:1,3) :: FOUR
integer, parameter :: N = 8
integer, dimension(N,N) :: board


arr1 = [(2*i, i = 1, 10)]
arr2 = [(i, i=1,10)]

!print *, "Seznam prvih 10 sodih števil", arr1
!print *, "Seznam prvih 10 števil", arr2
!print *, THREE

do j=1, N
    do i=1, N
        board(i,j) = mod(i+j+1,2)
    end do
end do

do j=1, N
    print *, (board(i,j), i=1, N)
end do

! 8x8 šahovnica predstavljena kot array
end program arrays

