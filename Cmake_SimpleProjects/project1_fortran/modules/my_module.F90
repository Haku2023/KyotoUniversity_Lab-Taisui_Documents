module my_module
    use, intrinsic:: iso_fortran_env, only: dp => real64, sp => real32, bi => int32
    implicit none(external)
    public
    integer(bi), parameter :: n = 10
    real(dp) :: a(n), b(n), c(n)
contains
    subroutine initialize_arrays()
        integer :: i
        do i = 1, n
            a(i) = real(i, dp)
            b(i) = real(i*2, dp)
        end do
        print *, "Arrays a and b have been initialized in my module."
    end subroutine initialize_arrays
end module my_module
