nmax=5
x=poly(0,"x");h=poly(0,"h")
H(1)=1;H(2)=2*x;
for n=0:nmax
     if n>0&n<=nmax-1 then H(n+2)=2*x*H(n+1)-2*x*H(n) end
end
for i=3:nmax
    disp("H("+string(i)+',x)='+string(H(i)))
    b=-derivat(x*H(i))
    a=-x*derivat(H(i))
    c=a-b
    disp("[x,p]H("+string(i)+",x) = "+'i*h '+'('+  string(c)+')')

end
