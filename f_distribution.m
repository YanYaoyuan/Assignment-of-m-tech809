function [ ] = f_distribution( z0)
x = 0:0.01:10;

d1=5;
d2=2;
y = fx(x,d1,d2);  %×ÔÐ´º¯Êý
plot(x,y);
hold on;
y0=fx(z0,d1,d2)
plot(z0,y0,'-o');


 function f = fx(x,d1,d2)
     f=(1/beta(d1/2,d2/2)).*((d1/d2).^(d1/2)).*(x.^(d1/2-1)).*((1+d1*x/d2).^((d1+d2)/(-2)));
     

