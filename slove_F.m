%X = finv(P,V1,V2)
%f_ DISTRIBUTION
clear
clc
P=0.5;
V1=5;
V2=2;

X=finv(P,V1,V2)

fcdf(X,V1,V2)  %Verify F distribution cumulative function