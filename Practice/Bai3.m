figure('Color', [0 1 0],...
    'Name', 'Co',...
    'NumberTitle', 'off',...
    'MenuBar', 'none')
n = 0:40;

f = 0.08; 
phase = pi/2;
A = 2.5;
%a
arg = 2*pi*f*n - phase;
x = A*sin(arg);
%Xoa bieu do cu
clf;
%Ve tin hieu
subplot(3, 1, 1)
stem(n,x);
%b
subplot(3, 1, 2)
plot(n,x)
subplot(3, 1 , 3)
stairs(n,x)
%b
axis([0 40 -2 2]);
grid;
title('Tin hieu sin');
xlabel('Chi so n');
ylabel('Bien do');
axis;
