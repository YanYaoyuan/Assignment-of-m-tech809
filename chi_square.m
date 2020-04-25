function [ ] = chi_square(z0 )

x = 0:0.01:10;
k=3;
y = fx(x,k);  
plot(x,y);
hold on;
y0=fx(z0,k)
plot(z0,y0,'-o');

 function f = fx(x,k)
     f=(((1/2)^(k/2))/(gamma(k/2)))*(x.^(k/2-1)).*exp(-x/2);

