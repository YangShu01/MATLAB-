clear;clc
%% 计时开始
tic
%% 计算不同列同时上客的方案的乘车效率
a=3.5; %车位宽度
b=7; %车位长度
v1=60; %行人速度 m/min
v2=220; %汽车速度 m/min
mu=1.5;
sigema=0.1;
z=zeros(1,10);
for k=1:100
    for n=1:20
        for i=1:2
            for j=1:n
                t1(i,j)=((i-1)*a+(j-1)*b)/v1; %走到车位的时间
                t3=b*n/v2; %补位时间
                % t2=exprnd(mu); %上车时间
                % t=max(t1+t2)+t3;
                for k=1:100
                    t2(k)=normrnd(mu,sigema); %上车时间
                    t=max(t1(i,j)+t2(k))+t3; %一个循环内最大时间
                end
            end
        end
        y(n)=(2-1/n)/t %效率
    end
    z(find(y==max(y)))=z(find(y==max(y)))+1;
end
plot(y)
xlabel('同时上车的列数 n')
ylabel('乘车效率 ')
title('乘车效率和同时上车的列数 n的关系 ')
%z=diff(y)
%plot(z)
%% 计时结束
toc