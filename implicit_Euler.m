% Application of the Implicit Euler Method that stop when
% it reach the end of the tspan or the maximum value of x is reached
function [t, x] = implicit_Euler(func,jacf,tspan,x0,s,a,m,k,max)
t= tspan(1):s:tspan(2);
I= eye(length(x0));
epsilon =1e-5; 
x(:,1)=x0;
n=1;
while n<=length(t)-1 & x(1,n)<=max 
    x(:,n);
    x(:,n+1) =x(:,n);
 	A=I-s*feval(jacf,t(n+1),x(:,n+1),a,m,k);
 	b=x(:,n+1) -x(:,n) -s*feval(func,t(n+1),x(:,n+1),a,m,k);
 	u= A\b;
    x(:,n+1)=x(:,n+1) - u;
 	cont=1;
    % Use of Newton-Raphson method to solve the problem 
 	while(norm(u,'inf') >epsilon) & (cont<100)
         A=I-s*feval(jacf,t(n+1),x(:,n+1),a,m,k);
         b=x(:,n+1) -x(:,n) -s*feval(func,t(n+1),x(:,n+1),a,m,k);
         u= A\b;
         x(:,n+1)=x(:,n+1) - u;
         cont=cont+1;
 	end
 if cont ==100
   disp(['In' num2str(t(n)) ' iterations the method does not converge '])
 end
 n=n+1;
end
x=x';
t=t(1:length(x));

end