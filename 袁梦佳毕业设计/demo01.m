name= {'科威特','印度尼西亚','卡塔尔','伊拉克','科威特','马来西亚','蒙古','阿曼','沙特阿拉伯', '阿联酋','越南','安哥拉','喀麦隆','乍得','尼日利亚','加蓬','加纳','赤道几内亚','利比亚','俄罗斯','厄瓜多尔' };
sixteen = xlsread("数据表.xls", 'D10:X10');
seventeen = xlsread("数据表.xls",'D9:X9');
eightteen = xlsread("数据表.xls",'D8:X8');
nineteen = xlsread("数据表.xls",'D7:X7');
tween = xlsread("数据表.xls",'D6:X6');
tweenone = xlsread("数据表.xls",'D5:X5');
tweentwo = xlsread("数据表.xls",'D4:X4');
tweenthree = xlsread("数据表.xls","D3:X3");

% 创建示例数据
x = [1, 2, 3, 4, 5];
y1 = [10, 15, 7, 11, 9];
y2 = [8, 12, 5, 9, 13];
bar(sixteen,seventeen);
% 绘制第一个柱状图
bar(x, y1);
hold on;

% 绘制第二个柱状图（叠加）
bar(x, y2);

% 添加标题和坐标轴标签
title('Stacked Bar Chart');
xlabel('Category');
ylabel('Value');

% 添加图例
legend('Group 1', 'Group 2');