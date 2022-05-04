program test
implicit none
integer,parameter::dp=kind(0.d0)
real(dp) :: xyz(4,3)
real(dp) :: v

!    4
!     -491.97666152309864
!   H      0.29866778  -0.38221133   0.82144527
!   H     -0.92582504  -0.15346403   2.43917999
!   O      0.01462490   0.04515644   2.28525345
!   Br     0.07582064  -0.00816850  -0.59999778

xyz(1,1)=   0.29866778
xyz(1,2)=  -0.38221133
xyz(1,3)=   0.82144527
xyz(2,1)=  -0.92582504
xyz(2,2)=  -0.15346403
xyz(2,3)=   2.43917999
xyz(3,1)=   0.01462490
xyz(3,2)=   0.04515644
xyz(3,3)=   2.28525345
xyz(4,1)=   0.07582064
xyz(4,2)=  -0.00816850
xyz(4,3)=  -0.59999778

call prepot
call pot(xyz,v)

print*,v
end program
