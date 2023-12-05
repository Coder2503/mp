clc;clear;
m=input("Enter mass in a column matrix(a*1) : ")
r=input("Enter the corresponding position vector(a*b) : ")
[a,b]=size(r)
I=zeros(a,a)
for i=1:a
    for j=1:i
        if (i==j)
            for k=1:b
                I(i, j)=I(i, j)+0.5*m(k)*(r(k,:)*r(k,:)' -r(k, j).^2)
            end
        else
            for k=1:b
                I(i, j)=I(i, j)-m(k)*(r(k, j).*r(k,i))
            end
        end
    end
end
I=I+I'
disp("Inertia tensor",I)
[v,d]=spec(I)
disp("Axis of rotation",v,"Moment of Inertia",d)
