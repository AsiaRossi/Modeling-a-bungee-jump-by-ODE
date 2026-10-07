% Jacobian matrix of the free fall phase

function ddx=Jfree(t,x,a,m,k)
c=a/m;
ddx=[0, 1;
    0, -c(1)+c(2)*x(2)];

end