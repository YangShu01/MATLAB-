clear;
clc;
mu1 = 26.6;
mu2 = 10;
mu3 = mu1;
rmb1 = 11+2.5*7+3.75*(mu1-10);
rmb2 = 11+2.5*7;
rmb3 = 11+2.5*7+3.75*(mu3-10);
Py = 6.61;
P0 = 0.49575;
v = 60;
NM = ((rmb1-mu1*P0)*(mu2+mu3)/v)/(rmb2-(mu2+mu3)*P0)-mu1/v;
NM1 = [];
NM2 = [];
NM3 = [];
NM4 = [];
mu = [];
for mu1 = 17.7:0.1:35.5
    mu = [mu,mu1];
    mu2 = 10;
    mu3 = mu1;
    rmb1 = 11+2.5*7+3.75*(mu1-10);
    rmb2 = 11+2.5*7;
    rmb3 = 11+2.75*7+3.75*(mu3-10);
    NM1 = [NM1,((rmb1-mu1*P0)*(mu2+mu3)/v)/(rmb2-(mu2+mu3)*P0)-mu1/v];
end
res1 = [mu',NM1'];
subplot(221)
plot(mu,NM1,'r-','LineWidth',2);
hold on;
plot(mu(90),NM1(90),'r*');
title("改变机场乘客打车距离",'Position',[26,-3.5],'FontSize',14);
xlabel("Sw/千米");
ylabel("N/M");
legend("NM与Sw的关系曲线","当Sw为26.6时的N/M");
mu1 = 26.6;
mu2 = 10;
mu3 = mu1;
mu = [];
for mu2 = 5:0.2:15
    mu = [mu,mu2];
    mu1 = 26.6;
    mu3 = mu1;
    rmb1 = 11+2.5*7+(mu1-10)*3.75;
    if mu2<=10
        rmb2 = 11+2.5*(mu2-3);
    else
        rmb2 = 11+2.5*7+3.75*(mu2-10);
    end
    rmb3 = 11+2.5*7+3.75*(mu3-10);
    NM2 = [NM2,((rmb1-mu1*P0)*(mu2+mu3)/v)/(rmb2-(mu2+mu3)*P0)-mu1/v];
end
res2 = [mu',NM2'];
subplot(222)
plot(mu,NM2,'b-','LineWidth',2);
hold on;
plot(mu(26),NM2(26),'b*');
title('改变返程接单乘客打车距离','Position',[10,-35],'FontSize',14);
xlabel("Sb/千米");
ylabel("N/M");
legend("N/M与Sb的关系曲线",'当Sb为10千米时的N/M');


mu1 = 26.6;
mu2 = 10;
mu3 = mu1;
Pi = [];
for P = 5:0.01:8
    Pi = [Pi,P];
    P0 = P*7.5/100;
    rmb1 = 11+2.5*7+3.75*(mu1-10);
    rmb2 = 11+2.5*7;
    rmb3 = 11+2.5*7+3.75*(mu3-10);
    NM3 = [NM3,((rmb1-mu1*P0)*(mu2+mu3)/v)/(rmb2-(mu2+mu3)*P0)-mu1/v];
end
res3 = [Pi',NM3'];
subplot(223);
plot(Pi,NM3,'k-','LineWidth',2);
title("改变油价",'Position',[6.5,0.8],'FontSize',14);
hold on
plot(Pi(162),NM3(162),'k*');
xlabel("P/(元/升)");
ylabel("N/M");
legend("N/M与P的关系曲线","当P=6.61元/升时的N/M");
P0 = 0.49575;
vi = [];
for v = 50:70
    vi = [vi,v];
    rmb1 = 11+2.5*7+3.75*(mu1-10);
    rmb2 = 11+2.5*7;
    rmb3 = 11+2.5*7+3.75*(mu3-10);
    NM4 = [NM4,((rmb1-mu1*P0)*(mu2+mu3)/v)/(rmb2-(mu2+mu3)*P0)-mu1/v];
end

res4 = [vi',NM4'];
subplot(224)
plot(vi,NM4,'LineWidth',2);
hold on
plot(vi(11),NM4(11),'m*');
title("改变车速",'Position',[60,3.15],'FontSize',14);
xlabel("v/(千米/时)");
ylabel("N/M");
legend("N/M与v的关系曲线",'当v为60(千米/时)时的N/M');
xielv1 = diff(res1(:,2));
xielv2 = diff(res2(:,2));
xielv3 = diff(res3(:,2));
xielv4 = diff(res4(:,2));
max_1 = max(xielv1);
max_2 = max(-xielv2);
max_3 = max(xielv3);
max_4 = max(-xielv4);

