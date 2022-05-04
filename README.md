# OH + HBr -> H2O + Br PES

The OH + HBr -> H2O + Br PES UCCSD(T)/cc-pVDZ-F12a of  A. G. S. de Oliveira-Filho, F. R. Ornellas, and J. M. Bowman.

## Usage

In the `h2obr_fit.f90` file there is a subroutine `pot(xyz,v)` that returns the potential (`v` in hartree) and a subroutine `potder(xyz,dxyz)` returns the cartesian (numerical) gradient (`dxyz(4,3)` in hartree/angstrom) for for the system with Cartesian coordinates (`xyz(4,3)` in angstrom).
There is also a minimal working example in the test.f90 file.


### Input

Cartesian coordinates in angstrom

xyz(1,1)=  x_H1 
xyz(1,2)=  y_H1
xyz(1,3)=  z_H1
xyz(2,1)=  x_H2
xyz(2,2)=  y_H2
xyz(2,3)=  z_H2
xyz(3,1)=  x_O
xyz(3,2)=  y_O
xyz(3,3)=  z_O
xyz(4,1)=  x_Br
xyz(4,2)=  y_Br
xyz(4,3)=  z_Br

### Output

`pot(xyz,v)` returns the potential `v` in hartree.

`dxyz(4,3)` returns the cartesian numerical gradient in  hartree/angstrom.

dxyz(1,1)=  dvdx_H1 
dxyz(1,2)=  dvdy_H1
dxyz(1,3)=  dvdz_H1
dxyz(2,1)=  dvdx_H2
dxyz(2,2)=  dvdy_H2
dxyz(2,3)=  dvdz_H2
dxyz(3,1)=  dvdx_O
dxyz(3,2)=  dvdy_O
dxyz(3,3)=  dvdz_O
dxyz(4,1)=  dvdx_Br
dxyz(4,2)=  dvdy_Br
dxyz(4,3)=  dvdz_Br


#### NOTE:
    Before any actual potential energy calculations are made, a single
    call to prepot must be made:
      `call prepot`

    Later, the potential energy is computed by calling pot:
      `call pot(xyz,v)`
    and the gradient is computed by calling porter:
      `call potder(xyz,dxyz)`


# References
1. A. G. S. de Oliveira-Filho, F. R. Ornellas, J. M. Bowman, Quasiclassical trajectory calculations of the rate constant of the OH + HBr → Br + H2O reaction using a full-dimensional ab initio potential energy surface over the temperature range 5 to 500 K. J. Phys. Chem. Lett. 5, 706–712 (2014). (https://doi.org/10.1021/jz5000325)
2. A. G. S. de Oliveira-Filho, F. R. Ornellas, J. M. Bowman, Energy disposal and thermal rate constants for the OH + HBr and OH + DBr reactions: quasiclassical trajectory calculations on an accurate potential energy surface. J. Phys. Chem. A 118, 12080–12088 (2014). (https://doi.org/10.1021/jp509430p)




