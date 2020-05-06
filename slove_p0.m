%This algorithm has accuracy problems
%Matlab has built-in functions for sample distribution, which can be called directly
%   norminv()
clc;
clear;
miu=0;
sig=1;

P=0.4;   %Input alpha

fun = @(x) (sqrt(2*pi)*sig).^(-1)*exp(-(x-miu).^2/(2*sig*sig));


if P>=0.5
    for i=0:0.0001:10
        error=abs(integral(fun,-inf,i)-P);    %Detection error
        if(error<0.0001)
            i    %Output z0 in line with the error
            break;
        end
            
    end
end
if P<0.5
    for i=-10:0.0001:0
        error=abs(integral(fun,-inf,i)-P);
        if(error<0.0001)
            i    %Output z0 in line with the error
            break;
        end
    end
end

