scf(0);clc;clear;clf(0);
x1=input("Enter the coordinates of point A :")
x2=input("Enter the coordinates of point B :")
n=input("Enter the refractive index n1 and n2 : ")
v1=1;v2=v1*n(1,1)/n(1,2);
np=1000;
x=linspace(x1(1,1),x2(1,1),np);
d1=sqrt((x1(1,1)-x)^2 +(x1(1,2)-0)^2)
d2=sqrt((x-x2(1,1))^2 +(0-x2(1,2))^2);
t=d1/v1 +d2/v2;
[m,k]=min(t)
i=90-180*atan(x1(1,2)/(x(1,k)-x1(1,1)))/%pi
r=90-180*atan(x2(1,2)/(x(1,k)-x2(1,1)))/%pi
disp("Point of refraction : ("+string(x(1,k))+",0)")
disp("Angle of incidence i(deg) : "+string(i))
disp("Angle of refraction r(deg) : "+string(r))
disp("Ratio sin(i)/sin(r) = "+string(sind(i)/sind(r))+" , Ratio n2/n1 = "+string(n(1,2)/n(1,1)))
plot([x1(1,1) x(1,k) x2(1,1)],[x1(1,2) 0 x2(1,2)])
plot(x,0,'k')
plot(x(1,k)*ones(x),x-4.5,'--k')
legend('Light Beam','Media Boundary(y=0)','Normal')
title('Shortest path of refraction')
xlabel('x')
ylabel('y')
