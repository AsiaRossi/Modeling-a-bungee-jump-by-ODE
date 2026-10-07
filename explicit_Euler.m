% Application of the Explicit Euler method, it must stop to iterate when
% the end of the tspan or the maximum value of x is reached
function [t, x]=explicit_Euler(funz,tspan,max,x0,s,a,m,k)
t=tspan(1):s:tspan(2); 
x(1,:)=x0; 
n=1;
while n<=length(t)-1 & x(n,1)<=max
    f=funz(t(n),x(n,:),a,m,k);
    x(n+1,:)=x(n,:)+s*f';
    n=n+1;
end
t=t(1:length(x));

end