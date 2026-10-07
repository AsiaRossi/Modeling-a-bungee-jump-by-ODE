% Application of the Heun method that stop when the end of the
% tspan or the maximum value of x are reached
function [t, x]=heun(funz,tspan,x0,s,max,a,m,k)
t=tspan(1):s:tspan(2); 
x(1,:)=x0; 
n=1;
while n<=length(t)-1 & x(n,1)<=max
   fn=funz(t(n),x(n,:),a,m,k);
   fn1=funz(t(n+1),x(n,:)+s*fn',a,m,k);
   x(n+1,:)=x(n,:)+0.5*s*(fn'+fn1');
   n=n+1;
end
t=t(1:length(x));

end