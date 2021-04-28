        program mar771

        implicit none

        double precision emp,g,eq,anf,ha,pi,zd,zi

        double precision hp,fp,pp,he,fe,di,haco,zaco,z,dne

        double precision rj,h,th,uh

        double precision rjq,drjq,dj,qz,deld,dk,q

        integer ipr,jpr,j,ianz,ir

        

        emp=1.67d-24

        g=6.7d-8

        eq=2.3d-19

        anf=1d30

        ha=1d5

        

        write (*,'(a)') 'massen und radien von sternen mit he und fe'

        write (*,'(a,es8.1,a)') 'bei zentraldichte',anf,'/cm^3'

        write (*,*)

        write (*,'(2a5,2a10,a5)') 'he','fe','m/cm^3','r cm','ianz'

        write (*,*)

        

        pi=4*atan(1d0)

        zd=2d0/3d0

        zi=26

        

        do ipr=0,14

          hp=ipr/100d0

        

          do jpr=0,9

            fp=jpr/100d0

            pp=1-hp-fp

            he=hp/pp

            fe=fp/pp

            di=anf*pp

            haco=2*he**zd

            zaco=zi*fe**zd

            z=1+4*he+2*zi*fe

            dne=1.2d0*(1+haco**2+zaco**2)+4.84d0*(haco+1*zaco*(1+haco))

        

            ianz=0

            ir=0

            h=ha

            th=emp*g*h*z/(dne*eq)

            uh=4*pi*emp*h*z

        

        l1: do

              ir=ir+1

              rj=h*ir

              rjq=rj*rj

              drjq=1/(rj-h/2)**2

              dj=di

        

              do j=1,20

                qz=(1/128d0)*uh*3*(di+dj)*rjq

                deld=th*qz*drjq*((di+dj)/2)**zd

                dk=di-deld

                if (abs(dk-dj)/dj <= 1d-10) exit l1

                dj=dk

              end do

        

              h=h/2

              th=th/2

              uh=uh/2

              ir=0

            end do l1

        

            di=dk

            q=qz

            ianz=ianz+1

        

        l2: do

        l3:   do

                rjq=rj*rj

                ir=ir+1

                rj=h*ir

                drjq=1/(rj-h/2)**2

                dj=di

        

                do j=1,10

                  qz=uh*di*rjq

                  deld=th*(q+qz)*drjq*((di+dj)/2)**zd

                  dk=di-deld

                  if (abs(dk-dj)/dj <= 1d-10) exit l3

                  dj=dk

                end do

        

                h=h/2

                th=th/2

                uh=uh/2

                ir=2*(ir-1)

                rj=h*ir

              end do l3

        

              di=dk

              q=q+qz

              ianz=ianz+1

              if (di <= 1d18) exit l2

            end do l2

        

            write (*,'(2f5.2,2es10.3,i5)') hp,fp,q,rj,ianz

          end do

        end do

        end 
