clc;clear;clf()
x=linspace(-1,1,100)
y=sqrt(1-x.^2)
r=[x;y]
Ts=[2 0;0 3]
Tsr=Ts*r
plot(r(1,:),r(2,:),'r','linewidth',2)
plot(Tsr(1,:),Tsr(2,:),'k--','linewidth',2)
plot(r(1,:),-r(2,:),'r','linewidth',2)
plot(Tsr(1,:),-Tsr(2,:),'k--','linewidth',2)
title("Scaling Transformation along x and y axes")
legend('Given Coordinates','scaling transformation',2)
a=gca()
a.x_location="origin"
a.y_location="origin"
//a.tight_limits=["on","on"]
a.data_bounds=[-4 -4;4 4]
