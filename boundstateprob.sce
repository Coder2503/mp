clc;clear;clf()
h=1973;m=0.511e6
a=2;n1=4;V1=10e10;
n=800;V0=0;E=linspace(V0+0.1,V1+0.2,1000)
x=linspace(-n1*a,n1*a,n);
d=x(2)-x(1);
t=-(h^2)/(2*m*(d^2));
V=V1*eye(n,n);
K=-2*eye(n,n)+diag(ones(n-1,1),1) +diag(ones(n-1,1),-1);
for i=(0.5*n*(n1-1)/n1)+1:0.5*n*(n1+1)/n1
    V(i,i)=V0;
end
H=t*K+V;
[U1,EV]=spec(H);
En=diag(EV);
disp("First two Energy Eigenvalues : ",En(1:2))
figure(0);scf(0);clf(0);
plot(x',diag(V),'k','linewidth',2)
title('Infinite potential well')
xlabel('x (A)');ylabel('V (eV)')
for plotMode = 1:4
    rescale=(EV(1,1)-V0)/(max(abs(U1(:,plotMode)))+min(abs(U1(:,plotMode))));
    U1_rescale=U1(:,plotMode)*rescale+En(plotMode);
  plot(x', U1_rescale, 'r','linewidth',2)
  plot(x', En(plotMode)*ones(n,1),'k--','linewidth',1)
end
y=[70:1:100]
plot([-a*ones(y) a*ones(y)],[y y],'w--','linewidth',2)
legend('Potential','Wavefunction','Energy Eigenvalue')
a1=gca()
a1.tight_limits=["on","on"];
a1.data_bounds=[-n1*a,V0;n1*a,V1/10e8]
