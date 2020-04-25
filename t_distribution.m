function [ ] = t_distribution( z0)

x = -10:0.01:10;
k=8;
y = fx(x,k);  %×ÔÐ´º¯Êý
plot(x,y);
hold on;
grid on;
y0=fx(z0,k)
plot(z0,y0,'-o');
fun = @(x) gamma((k+1)/2)/(sqrt(k*pi)*gamma(k/2))*(1./((((x.^2)/k)+1).^((k+1)/2)));
P0=integral(fun,-inf,z0)


 function f = fx(x,k)
     f=gamma((k+1)/2)/(sqrt(k*pi)*gamma(k/2))*(1./((((x.^2)/k)+1).^((k+1)/2)))


