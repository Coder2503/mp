scf(0);clc;clear;clf(0);
a=-1;  b=1;  beeta=1;  nmax=5;
n1=500;  g=n1-1;  h=(b-a)/n1;
y1=zeros(g,nmax+1);
x=linspace(a+h,b-h,n1-1); plegend=[]
for n=0:nmax
     alpha=-2*modulo(n,2)+1;
     for i=1:g
          t=(1-x(i)^2);
          p(i)=-2*x(i)/t;
          q(i)=n*(n+1)/t;
          k(i)=2-h*p(i);
          m(i)=2*h*h*q(i)-4;
          l(i)=2+h*p(i);
          r(i)=0;
          B(i)=2*h*h*r(i);
     end
     A=zeros(g,g)+diag(m)+diag(l(1:g-1),1)+diag(k(2:g),-1)
     B(g)=B(g)-l(g)*beeta;
     B(1)=B(1)-k(1)*alpha;
     y=A\B;
     y1(:,n+1)=y(:,1);
     plegend(n+1)="P"+string(n)+"(x) (n = "+string(n)+")"
     for j=0:n
          I=0
          I=I+4*y1(1:2:g,n+1)'*y1(1:2:g,j+1);//sum(h*y1(:,n+1)'*y1(:,j+1))
          I=I+2*y1(2:2:g,n+1)'*y1(2:2:g,j+1);
          I=(h/3)*(I-2*(modulo(n-j,2)-1));
          disp("Integration of P"+string(n)+"(x)*P"+string(j)+"(x) : "+string(I))
     end
end
func=y1(1:g,1:nmax+1)
plot(x',func,style=1:nmax+1,'thickness',2)
legend(plegend,4)
title("Solution of Legendre Differential equation for n = 0 to "+string(nmax))
