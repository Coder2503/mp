clear;
A=input("Enter the matrix : ")
X0=[1;1;1];
lmb0=1;
tol=1e-4;err=1;k=1;
while(abs(err)>tol)
    X=A*X0;
    lmb=max(abs(X));
    X0=X/lmb;
    err=lmb-lmb0;
    lmb0=lmb;
    disp("iter     lambda",[k,lmb],"Eigenvector",X0/norm(X0));
    k=k+1;
end
[v,d]=spec(A);
disp([v,d])
