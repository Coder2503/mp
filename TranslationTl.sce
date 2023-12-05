clc;clear;clf()
x=input("Enter the x coordinates : ")
y=input("Enter the y coordinates : ")
r=[x;y]
[a,b]=size(r)
Tlx=[2*ones(1,b);zeros(1,b)]
Tly=[zeros(1,b);3*ones(1,b)]
Tl=Tlx+Tly
Tlrx=Tlx+r
Tlry=Tly+r
Tlr=Tl+r
subplot(2,2,1)
plot(r(1,:),r(2,:),'r','linewidth',2)
plot(Tlrx(1,:),Tlrx(2,:),'k--','linewidth',2)
title("Translation along x-axis")
legend('Given Coordinates','Translation transformation',2)
a=gca()
a.x_location="origin"
a.y_location="origin"
a.tight_limits=["on","on"]
a.data_bounds=[-2.5,0;6.5,7.5]
subplot(2,2,2)
plot(r(1,:),r(2,:),'r','linewidth',2)
plot(Tlry(1,:),Tlry(2,:),'k--','linewidth',2)
title("Translation along y-axis")
legend('Given Coordinates','Translation transformation',2)
a=gca()
a.x_location="origin"
a.y_location="origin"
a.tight_limits=["on","on"]
a.data_bounds=[-2.5,0;6.5,7.5]
subplot(2,2,3)
plot(r(1,:),r(2,:),'r','linewidth',2)
plot(Tlr(1,:),Tlr(2,:),'k--','linewidth',2)
title("Translation along x and y axes")
legend('Given Coordinates','Translation transformation',2)
a=gca()
a.x_location="origin"
a.y_location="origin"
a.tight_limits=["on","on"]
a.data_bounds=[-2.5,0;6.5,7.5]
