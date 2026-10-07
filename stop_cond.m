% In order to stop the ode method when the value decrease to 30 metres 
function [value, isterminal, direction] = stop_cond(t, x)
value      = (x(1) >= 30);
isterminal = 1;   
direction  = 0;
end
