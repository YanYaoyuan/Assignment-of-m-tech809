%T·Ö²¼   
%x = tinv(p,nu) returns the inverse cumulative distribution function (icdf) 
%    of the Student's t distribution evaluated at the probability values in p using the corresponding degrees of freedom in nu.
nu=8;
x = tinv(0.9597,nu)
tcdf(x,nu)  %Verify T distribution cumulative function