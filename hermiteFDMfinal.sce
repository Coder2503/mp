clc;clear;clf();   //Hermite
a=-5;  b=5;  nmax=5 ;
n1=500;  g=n1-1;  h=(b-a)/n1;
y1=zeros(g,nmax+1);
x=linspace(a+h,b-h,n1-1); plegend=[] ;
H(1)=1;H(2)=2*a;
for n=0:nmax
     if n>0&n<=nmax-1 then H(n+2)=2*a*H(n+1)-2*n*H(n) end
     alpha=H(n+1)
     beeta=alpha*((-1)^n);
     for i=1:g
          p(i)=-2*x(i);
          q(i)=2*n;
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
     plegend(n+1)="H"+string(n)+"(x) (n = "+string(n)+")"
end
for n=0:nmax
     for j=0:n
          I=0;
          I=I+4*exp(-(x(1:2:g).^2))*(y1(1:2:g,n+1).*y1(1:2:g,j+1));
          I=I+2*exp(-(x(2:2:g).^2))*(y1(2:2:g,n+1).*y1(2:2:g,j+1));
          I=(h/3)*(I+alpha+beeta);
          disp("Integration of H"+string(n)+"(x)*H"+string(j)+"(x) : "+string(I))
     end
end
func=y1(1:g,1:nmax+1)
plot(x',func,style=1:nmax+1)
legend(plegend,4)
title("Solution of Hermite Differential equation for n = 0 to "+string(nmax))
