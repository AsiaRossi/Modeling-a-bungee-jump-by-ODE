% Jacobian matrix of the elastic retraction phase

function ddx=Jelastic(t,x,a,m,k)
c=a/m;

if x<30
    k=0;
end
ddx=[0, 1;
    -k/m, -c(1)+2*c(2)*x(2)];

end