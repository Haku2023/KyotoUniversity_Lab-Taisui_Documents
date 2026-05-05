program main
    use my_module, only: initialize_arrays
    implicit none(external)
    integer :: i, n
    real :: sum, x
    call initialize_arrays()
    print *, "In Main Program"
end program main
