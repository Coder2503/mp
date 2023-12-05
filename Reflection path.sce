scf(1);clc;clear;clf(1);
x1=input("Enter the coordinates of point A :")
x2=input("Enter the coordinates of point B :")
n=1000;
x=linspace(x1(1,1),x2(1,1),n);
d=sqrt((x1(1,1)-x)^2 +(x1(1,2)-0)^2)+sqrt((x-x2(1,1))^2 +(0-x2(1,2))^2);
[m,k]=min(d)
disp("Point of reflection : ("+string(x(1,k))+",0)")
disp("Angle of incidence(deg) : "+string(90-180*atan(x1(1,2)/(x(1,k)-x1(1,1)))/%pi))
disp("Angle of reflection(deg) : "+string(90-180*atan(x2(1,2)/-(x(1,k)-x2(1,1)))/%pi))
plot([x1(1,1) x(1,k) x2(1,1)],[x1(1,2) 0 x2(1,2)])
plot(x,0,'k')
plot(x(1,k)*ones(x),x-x1(1,1),'--k')
legend('Light Beam','Mirror(y=0)','Normal')
title('Shortest path of reflection')
xlabel('x')
ylabel('y')
