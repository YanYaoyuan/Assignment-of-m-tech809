%This algorithm has accuracy problems
%Matlab has built-in functions for sample distribution, which can be called directly
clc;
clear;
k=3;
P=0.2;   %Input alpha

fun = @(x) (((1/2)^(k/2))/(gamma(k/2)))*(x.^(k/2-1)).*exp(-x/2);

if P>=0
    for i=0.0001:0.01:20
        error=abs(fun(i)-P);    %Detection error
        if(error<0.0001)
            i    %Output z0 in line with the error
            break;
        end
            
    end
end