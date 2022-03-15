% code for explaining the approximation in taylor series expansion of sin(x)
clear all
close all
clc

syms x
y = sin(x);
t = -5:0.1:5;
z = sin(t);
plot(t,z,'LineWidth',3) % <----- plotting the sin(x) function for reference
ylim([-5 5])
hold on
% in this code, we have used the inbuilt "taylor" funtion for ease of
% calculation.
t1 = taylor(y, 'ExpansionPoint', pi/6, 'Order', 1); % <----- 1st approximation = f(xo)
t2 = taylor(y, 'ExpansionPoint', pi/6, 'Order', 2); % <----- 2nd approximation = f(xo) + f'(xo)(x-xo)/1!
t3 = taylor(y, 'ExpansionPoint', pi/6, 'Order', 3); % <----- 3rd approximation = f(xo) + f'(xo)(x-xo)/1! + f''(xo)(x-xo)^2/2!
t4 = taylor(y, 'ExpansionPoint', pi/6, 'Order', 4); % <----- 4th approximation = f(xo) + f'(xo)(x-xo)/1! + f''(xo)(x-xo)^2/2! + f'''(xo)(x-xo)^3/3!
t5 = taylor(y, 'ExpansionPoint', pi/6, 'Order', 5); % <----- 5th approximation = f(xo) + f'(xo)(x-xo)/1! + f''(xo)(x-xo)^2/2! + f'''(xo)(x-xo)^3/3! + f''''(xo)(x-xo)^4/4!
t6 = taylor(y, 'ExpansionPoint', pi/6, 'Order', 6); % <----- 6th approximation = f(xo) + f'(xo)(x-xo)/1! + f''(xo)(x-xo)^2/2! + f'''(xo)(x-xo)^3/3! + f''''(xo)(x-xo)^4/4! + f'''''(xo)(x-xo)^5/5!
t7 = taylor(y, 'ExpansionPoint', pi/6, 'Order', 100); % <----- 100th approximation for reference

% from here, we plot all the above functions in the range -5<x<5 using the
% fplot function
fplot(t1,[-5,5],'--',2) % <----- 1st approximation
ylim([-5 5])
hold on
fplot(t2,[-5,5],'--',2) % <----- 2nd approximation
ylim([-5 5])
hold on
fplot(t3,[-5,5],'--',2) % <----- 3rd approximation
ylim([-5 5])
hold on
fplot(t4,[-5,5],'--',2) % <----- 4th approximation
ylim([-5 5])
hold on
fplot(t5,[-5 5],'--',2) % <----- 5th approximation
ylim([-5 5])
hold on
fplot(t6,[-5 5],'--',2) % <----- 6th approximation
ylim([-5 5])
hold on
fplot(t7,[-5 5],'--',2) % <----- 100th approximation
ylim([-5 5])
% formatting the graph for ease of reading
title('Taylor series approximation of sin(x) at x = 30°')
xlabel('Values') 
ylabel('Sin(x) - Taylor Series Approximation') 
grid on
lgd = legend({'sin(x)','1st approx.','2nd approx.','3rd approx.','4th approx.','5th approx.','100th approx.'},'Location','best');
title(lgd,'Legends');
lgd.NumColumns = 2;
