program area
implicit none

real :: r
real, parameter :: pi = 3.1412535
real :: S
real :: volume

print *, "Koliko je radij?"
read*, r

if (r < 0) then
    print *, "Volumen ne obstaja"
else 
    S = pi*(r**2)
    volume = (4.*pi*(r**3.))/3.
    print *, "Ploščina je", S , "volumen pa je", volume
end if 

end program area