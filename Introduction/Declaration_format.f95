! http://www.phys.uri.edu/~nigh/HTMLHPFCourse/HTMLHPFCourseQuestionsimg1.gif

program Declaration_format
implicit none

integer :: feet    
real :: miles
character(len=20) :: town
character(len=*), parameter :: home_town = "Radomlje"
logical, parameter :: in_uk = .false.
real, parameter :: sin_half = sin(0.5)

print*, feet, miles, town, home_town, in_uk, sin_half


end program Declaration_format