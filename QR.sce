clear;clc;
A=input("Enter the matrix : ")
[r,c]=size(A);
V=eye(r,c);
Q=zeros(r,r);
[v,d]=spec(A);
lines(0,100)
for k=1:1000
    for i=1:c
        Q(:,i)=A(:,i);
        for j=1:i-1
            Q(:,i)=Q(:,i)-(Q(:,i)'*Q(:,j)/norm(Q(:,j))^2)*Q(:,j);
        end
        Q(:,i)=Q(:,i)/norm(Q(:,i));
    end
    clc
    disp(Q)
    V=V*Q;
    R=Q'*A;
    A=R*Q;
    disp("Eigenvector by qr",V,"Eigenvalue by qr",A)
end
disp("Eigenvector",v,"Eigenvalue",d)
