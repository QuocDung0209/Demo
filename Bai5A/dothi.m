clear
clc
clf
%% Ve chinh xac
xi = linspace(0,5,1000);
yi = exp(xi-xi.^2/2);
plot(xi,yi,'r'); 
hold on
%% Ve gan dung
syms x;
syms y;
f = (1-x)*y;
%% PP Euler
[x1,y1] = ole(f,0,5,1,25);
plot(x1,y1,x1,y1,'v');

%% PP hien an hinh thang
[x2,y2,n2] = hienanhinhthang(f,0,5,1,25,1e-3);
plot(x2,y2,x2,y2,'*');

%% PP hien an trung diem
[x3,y3] = hienantrungdiem(f,0,5,1,25);
plot(x3,y3,x3,y3,'o');

%% PP Runge - Kutta (R-K)
[x4,y4] = RK(f,0,5,1,25);
plot(x4,y4,x4,y4,'^');