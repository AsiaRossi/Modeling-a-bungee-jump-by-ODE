% Description of the free fall phase

function ddx=free_motion(t,x,a,m,k)
c=a/m;
ddx=[x(2);
    9.8-c(1)*x(2)-c(2)*abs(x(2))*x(2)];

end