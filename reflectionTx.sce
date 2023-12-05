clc;clear;clf()
x=input("Enter the x coordinates : ")
y=input("Enter the y coordinates : ")
r=[x;y]
Tx=[1 0;0 -1]
Ty=[-1 0;0 1]
Tyx=[0 1;1 0]
To=[-1 0;0 -1]
Trx=Tx*r
Try=Ty*r
Tryx=Tyx*r
Tro=To*r
subplot(2,2,1)
plot(r(1,:),r(2,:),'r','linewidth',2)
plot(Trx(1,:),Trx(2,:),'k--','linewidth',2)
title('Reflection about x-axis')
legend('Given Coordinates','Reflection transformation',2)
a=gca()
a.x_location="origin"
a.y_location="origin"
a.tight_limits=["on","on"]
a.data_bounds=[min(r(1,:))-0.5,-max(r(2,:))-0.5;max(r(1,:))+0.5,max(r(2,:))+0.5]
subplot(2,2,2)
plot(r(1,:),r(2,:),'r','linewidth',2)
plot(Try(1,:),Try(2,:),'k--','linewidth',2)
title("Reflection about y-axis")
legend('Given Coordinates','Reflection transformation',4)
a=gca()
a.x_location="origin"
a.y_location="origin"
a.tight_limits=["on","on"]
a.data_bounds=[-max(r(1,:))-0.5,min(r(2,:))-0.5;max(r(1,:))+0.5,max(r(2,:))+0.5]
subplot(2,2,3)
plot(r(1,:),r(2,:),'r','linewidth',2)
plot(Tryx(1,:),Tryx(2,:),'k--','linewidth',2)
title("Reflection about y=x")
legend('Given Coordinates','Reflection transformation',2)
a=gca()
a.x_location="origin"
a.y_location="origin"
a.tight_limits=["on","on"]
a.data_bounds=[-max(r(1,:))-0.5,-max(r(2,:))-0.5;max(r(1,:))+0.5,max(r(2,:))+0.5]
subplot(2,2,4)
plot(r(1,:),r(2,:),'r','linewidth',2)
plot(Tro(1,:),Tro(2,:),'k--','linewidth',2)
title("Reflection about Origin")
legend('Given Coordinates','Reflection transformation',2)
a=gca()
a.x_location="origin"
a.y_location="origin"
a.tight_limits=["on","on"]
a.data_bounds=[-max(r(1,:))-0.5,-max(r(2,:))-0.5;max(r(1,:))+0.5,max(r(2,:))+0.5]
