# stellar-structure
A Fortran program from Calculations of the Stellar Structure of so called "Degenerate" Stars Using an New Pressure Function.

We reconstructed the main program from 1977 of an article from the astrophysical institute at Garching ( MPI ). As source we had a slightly corrupted print (only the header missing). We named it fortss.f here.

*Calculations of the stellar structure of so-called degenerate stars using a new pressure function:*

[The article](https://pure.mpg.de/pubman/faces/ViewItemOverviewPage.jsp?itemId=item_2227006)

Shortly after the discovery of these stars the author calculated them with a new pressure function, based on the virial theorem and a new zero energy:

```

      1 /   2 \1/3  2  1/3
– E = — |2 π  |    e  n   = E      = /E   \
      2 \     /              Fermi   \ kin/

```

![](Screenshot_2021-04-28-13-32-31-497~2.jpeg)

$$-E=\tfrac {1}{ 2} (2 \pi^2)^{\frac {1}{ 3}} e^2 n^{\frac {1} {3}} = E\_{Fermi} = \langle E_{kin}\rangle$$

The program yields a maximal mass and a maximal radius for these stars, m_max at He 12 % Fe 4 % , R_max at He 3 %, Fe 1 % , see results.txt

The word *degeneracy* is due to the fact, that the Fermi-energiy is to big, a power of two to big, so that it describes systems with to much energy, that cannot be stationary. ( Many physical descriptions try to explain this, as the construction of potential holes, but in general this must not be allowed in serious physics.  )  

E.g. you can calculate the frequency of the shock waves of pulsars, the right dimensions of highly compressed astrophysical objects, of neutron stars, double stars, quasars, blue objects and their red shift. And in a corresponding later work one yields that white dwarves are electron-positron stars in their innerst. Everything in accordance with the ***virial theorem.***

**Do not** add a constant to the potential energy in general ( , this is solely allowed in Maxwellian Theory. )
