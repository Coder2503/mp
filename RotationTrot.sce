clc;clear;clf()
x=input("Enter the x coordinates : ")
y=input("Enter the y coordinates : ")
theta=input("Enter the value of angle : ")
r=[x;y]
[a,b]=size(theta)
for i=1:b
    Trot=[cosd(theta(1,i)) sind(theta(1,i));-sind(theta(1,i)) cosd(theta(1,i))]
    Trotr=Trot'*r
    plot(r(1,:),r(2,:),'r','linewidth',2)
    plot(Trotr(1,:),Trotr(2,:),i,'linewidth',2)
    title("Rotation Transformation about origin")
    legend('Given Coordinates','Rotation of 30deg','Rotation of 45deg',2)
    a=gca()
    a.x_location="origin"
    a.y_location="origin"
end
