clc;clear;clf();
h=1973;m=0.511e6;k=1;
xmin=-10;xmax=10
n=1000;
x=linspace(xmin,xmax,n);
d=x(2)-x(1);
t=-(h^2)/(2*m*(d^2));
V=zeros(n,n);
U=-2*eye(n,n)+diag(ones(n-1,1),1)+diag(ones(n-1,1),-1);
for i=1:n
     V(i,i)=0.5*k*x(i)^2;
end
H=t*U+V;
[U1,EV]=spec(H);
E=diag(EV);
disp("First four energy eigenvalues : ",string(E(1:4))+" eV")
disp("Theoritical value : ",string(((0:3)+0.5)*h*sqrt(k/m)))
plot(x',diag(V),'linewidth',2)
for plotMode = 1:4
    rescale=(E(1))/(max(abs(U1(:,plotMode)))+min(abs(U1(:,plotMode))));
    U1_rescale=U1(:,plotMode)*rescale+E(plotMode);
  plot(x', U1_rescale, 'r','linewidth',2)
  plot(x', E(plotMode)*ones(n,1),'k--','linewidth',1)
end
title("Plot of wavefunction for V=0.5*x^2 ")
xlabel("r(A)");ylabel("Wavefunction")
a=gca()
a.tight_limits=["on","on"]
a.data_bounds=[-10,-1;10,15]
xgrid()
legend("Potential","Wavefunction","Energy eigenvalues",1)
