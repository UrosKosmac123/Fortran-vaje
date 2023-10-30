!Using a SELECT CASE block and integer division write a program that reads in a decimal 
!number between 0 and 999 and prints out the equivalent in Roman Numerals.

!Demonstrate that your program works with the numbers:

!888
!0
!222
!536
!The output should contain no embedded spaces.

program decimal_to_roman
implicit none
    
integer :: n 
integer :: stotica
integer :: desetica
integer :: enica
character(len=12):: rimska

print *, "Vpiši število:"
read *, n 

stotica = n / 100
desetica = (n - 100*stotica) / 10
enica = (n - 100*stotica - 10*desetica)

if ((n<=0) .or. (n>=1000)) then
    print *, "Ni pravo število"
else 
    rimska = ""
    select case (stotica)
    case (0)

    case (1)
        rimska = rimska // "C"
    case (2)
        rimska = rimska // "CC"
    case (3)
        rimska = rimska // "CCC"
    case (4)
        rimska = rimska // "CD"
    case (5)
        rimska = rimska // "D"
    case (6)
        rimska = rimska // "DC"
    case (7)
        rimska = rimska // "DCC"
    case (8)
        rimska = rimska // "DCCC"
    case (9)
        rimska = rimska // "CM"
    end select

    select case (desetica)
    case (0)
        rimska = rimska // ""
    case (1)
        rimska = rimska // "X"
    case (2)
        rimska = rimska // "XX"
    case (3)
        rimska = rimska // "XXX"
    case (4)
        rimska = rimska // "XL"
    case (5)
        rimska = rimska // "L"
    case (6)
        rimska = rimska // "LX"
    case (7)
        rimska = rimska // "LXX"
    case (8)
        rimska = rimska // "LXXX"
    case (9)
        rimska = rimska // "XC"
    end select

    select case (enica)
    case (0)
        rimska = rimska // ""
    case (1)
        rimska = rimska // "I"
    case (2)
        rimska = rimska // "II"
    case (3)
        rimska = rimska // "III"
    case (4)
        rimska = rimska // "IV"
    case (5)
        rimska = rimska // "V"
    case (6)
        rimska = rimska // "VI"
    case (7)
        rimska = rimska // "VII"
    case (8)
        rimska = rimska // "VIII"
    case (9)
        rimska = rimska // "IX"
    end select
end if

print *, rimska

end program decimal_to_roman

! Vrne prazen string, treba popraviti