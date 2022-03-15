%The following script helps to plot the slope and curvature of a given univariant function
% Code submitted for the course MTOE11 "Mathematical Techniques in
% Materials Research, as part of its assessment by group 1.
clear all
close all
clc
syms f(x)
f(x) = sin(x^2) + log(x) + x^3 + exp(x);
Df = diff(f,x)
Df2 = diff(Df,x)
x = linspace(1,5);
h= plot(x, f(x), x, Df(x), x, Df2(x))
grid on
title('Slope and curvature of univariate f(x) = sin(x^2) + log(x) + x^3 + exp(x)')
xlabel('X')
ylabel('Y')
set(h(1), 'linewidth', 2)
set(h(2), 'linewidth', 1)
set(h(3), 'linewidth', 1)
lgd = legend('f(x)','Slope','Curvature','Location','best');
title(lgd,'Legends');