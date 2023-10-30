! Write a program to accept three (INTEGER) lengths and report back on whether these lengths could define an equilateral, isosoles or scalene triangle (3, 2 or 0 equal length sides) or whether they cannot form a triangle.
!Demonstrate that the program works by classifying the following:

!(1, 1, 1)
!(2, 2, 1)
!(1, 1, 0)
!(3, 4, 5)
!(3, 2, 1)
!(1, 2, 4)

program the_triangle_problem
implicit none

integer :: a
integer :: b
integer :: c

print *, "Vpiši stranice trikotnika."
read *, a, b, c 

if ((c >= a + b) .or. (b >= a + c) .or. (a >= b + c)) then
    print *, "Stranice ne tvorijo trikotnika."
else if ((a == b) .and. (b == c)) then
    print *, "Trikotnik je enakokrak."
else if ((a == b) .or. (b == c) .or. (c == a)) then
    print *, "Trikotnik je enakokrak."
else 
    print *, "Vse stranice so različne in je trikotnik"
end if

end program the_triangle_problem