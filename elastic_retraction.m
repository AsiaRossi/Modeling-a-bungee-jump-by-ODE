% Description of the elastic retraction phase

function ddx=elastic_retraction(t,x,a,m,k)
c=a/m;
if x(1)<30
    k=0;
end
ddx=[x(2);
    9.8-c(1)*x(2)-c(2)*abs(x(2))*x(2)-(k/m)*(x(1)-30)];

end

