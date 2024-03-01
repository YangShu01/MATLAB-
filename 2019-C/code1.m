%%临界值的计算
clear;
clc;
mu1 = 26.6;
mu2 = 10;
mu3 = mu1;
%计算S_w*P1
rmb1 = 11+2.5*7+3.75*(mu1-10);
rmb2 = 11+2.5*7;
rmb3 = 11+2.5*7+3.75*(mu3-10);
Py = 6.61;
P0 = 0.49575;
v = 60;
NM = ((rmb1-mu1*P0)*(mu2+mu3)/v)/(rmb2-(mu2+mu3)*P0)-mu1/v;
fprintf("NM的值为%.4f",NM);
