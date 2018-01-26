#f(x,y,m,u,v,D2,alpha1,alpha2,beta2) = ( ((x + 2*alpha1*u)*m**2*y**2 + 3.0*u)*m**2*y**2*D2  + (x + 2*alpha1*u)*(alpha2*u + 2*beta2*v)*m**4*y**4 + (3.0*v*(x + 2*alpha1*u) + 3.0 *u*(alpha2*u + 2*beta2*v) - 1.0*alpha2*u*v)*m**2*y**2 + (3.0*3.0-1.0*1.0)*u*v )/( m**2*y**2*v*(1.0*u-3.0*v)+(alpha2*u-(D2+alpha2*u+2*beta2*v))*v*m**4*y**4)


# General Case for the Cross-Diffusion's neutral stability line

f(x,m,u,v,D2,alpha1,alpha2,beta2,a1,a2,b1,b2) = ( ((x + 2*alpha1*u)*m**2*pi**2 + a1*u)*m**2*pi**2*D2 + (x + 2*alpha1*u)*(alpha2*u + 2*beta2*v)*m**4*pi**4 + (b2*v*(x + 2*alpha1*u) + a1*u*(alpha2*u + 2*beta2*v) - b1*alpha2*u*v)*m**2*pi**2 + (a1*b2-a2*b1)*u*v )/( m**2*pi**2*v*(a2*u-b2*v)+(alpha2*u-(D2+alpha2*u+2*beta2*v))*v*m**4*pi**4)

alpha2 = 0.001

alpha1 = 0.001
beta2 = 0.001
a1 = 3.0
a2 = 1.0
b1 = 1.0
b2 = 3.0
r1 = 5.0
r2 = 2.0
D2 = 0.001

u = (b2*r1-b1*r2)/(a1*b2-a2*b1)
v = (a1*r2-r1*a2)/(a1*b2-a2*b1)

set xrange [0:2]
set yrange [0:6]
#set zrange [0:0.5]
#set isosamples 100
set isosamples 200

#splot f(x,y,1,u,v,D2,alpha1,alpha2,beta2) w l, f(x,y,2,u,v,D2,alpha1,alpha2,beta2) w l, f(x,y,3,u,v,D2,alpha1,alpha2,beta2) w l


plot f(x,1,u,v,D2,alpha1,alpha2,beta2,a1,a2,b1,b2) w l, f(x,2,u,v,D2,alpha1,alpha2,beta2,a1,a2,b1,b2) w l, f(x,3,u,v,D2,alpha1,alpha2,beta2,a1,a2,b1,b2) w l, f(x,4,u,v,D2,alpha1,alpha2,beta2,a1,a2,b1,b2) w l
