program arrays
implicit none

integer :: i
integer :: arr1(10), arr2(10)

arr1 = [(2*i, i = 1, 10)]
arr2 = [(i, i=1,10)]

print *, "Seznam prvih 10 sodih števil", arr1
print *, "Seznam prvih 10 števil", arr2

end program arrays

