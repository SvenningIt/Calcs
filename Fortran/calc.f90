program calc
implicit none

    real :: getal1, getal2, resultaat
    character(len=1) :: operator
    character(len=50) :: invoer
    character(len=20) :: deel1, deel2
    logical :: running
    integer :: ios, oppos, slen

    running = .true.

    do while (running)

        print*, 'Iets volgens de formule x (+, -, *, /) y'
        read(*, '(A)', iostat=ios) invoer

        if (ios /= 0) then
            print *, 'tot nog keer'
            exit
        end if

        invoer = adjustl(trim(invoer))
        slen = len_trim(invoer)

        oppos = 0
        do ios = 2, slen
            if (invoer(ios:ios) == '+' .or. invoer(ios:ios) == '-' .or. &
                invoer(ios:ios) == '*' .or. invoer(ios:ios) == '/') then
                oppos = ios
                exit
            end if
        end do

        if (oppos == 0) then
            print*, 'Just ni, opnieuw'
            cycle
        end if

        operator = invoer(oppos:oppos)
        deel1 = adjustl(trim(invoer(1:oppos-1)))
        deel2 = adjustl(trim(invoer(oppos+1:slen)))

        read(deel1, *, iostat=ios) getal1
        if (ios /= 0) then
            print*, 'Eerste getal ongeldig'
            cycle
        end if

        read(deel2, *, iostat=ios) getal2
        if (ios /= 0) then
            print*, 'Tweede getal ongeldig'
            cycle
        end if

        select case (operator)
            case ('+')
                resultaat = getal1 + getal2

            case ('-')
                resultaat = getal1 - getal2

            case ('*')
                resultaat = getal1 * getal2

            case ('/')
                do while (getal2 == 0)
                    print*, 'Delen door nul doen we niet, opnieuw'
                    read(*,*) getal2
                end do
                resultaat = getal1 / getal2

            case default
                print*, 'Niet goed genoeg'
                cycle

        end select

        print*, getal1, " ", operator, ' ', getal2, '=',  resultaat

    end do

end program calc