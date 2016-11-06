program ElectricField
  implicit none
  integer::HalfGrid = 50, Grid = 100
  integer::i,j, N, Loop = 100
  real, dimension(0:100,0:100) :: a

  !defining the boundary conditions which will remain unchanged throughout the process
  !Cathode is at 0 at j = 100,i=1:HalfGrid whereas anode is at j=HalfGrid+1, i=HalfGrid+1,Grid where (i,j) signify x,y position in the grid
  do i = HalfGrid+1,Grid
    a(i,HalfGrid+1) = 1.0
    a(100,i-50) = 0.0
  end do



  do N = 1, 2
     !No calculation to be performed on the dielectric

     !for region above anode and the level of anode
     do i = 2,Grid-1
       do j = HalfGrid,2,-1
         a(i,j) = 0.25*(a(i-1,j)+a(i+1,j)+a(i,j-1)+a(i,j+1))
       end do
     end do

    !for region in between
  end do

  !write the output in an organized fashion such that python may read it without much problem

  do i = 1, Grid
    do j = 1, Grid
      write (*,100, advance='no'), a(i,j)
      100 format (f6.5)
    end do
     write(*,*),"\n"
  end do

end program ElectricField
