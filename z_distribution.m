function [ ] = z_distribution(z0)

x = -10:0.01:10;   %Set the range of x
miu=0;
sig=1;
y = fx(x,miu,sig);    %Call the probability density function

plot(x,y);
hold on;
y0 = fx(z0,miu,sig); 
plot(z0,y0,'-o')

fun = @(x) (sqrt(2*pi)*sig).^(-1)*exp(-(x-miu).^2/(2*sig*sig));
P0=integral(fun,-inf,z0)

%Probability density function
 function f = fx(x,miu,sig)
     f=(sqrt(2*pi)*sig).^(-1)*exp(-(x-miu).^2/(2*sig*sig));
 
        



