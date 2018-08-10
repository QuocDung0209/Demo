n = 0:9;
x = [1 3 -2 4 -6 8 7 15 12 0];
%y = [0 0];
a = [1 -1.5 0.85];
b = 1;
y = filter(b,a,x);
%Tinh y[n]
%for i = 3:12
    %y(i) = 1.5*y(i-1) - 0.85*y(i-2) + x(i-2);
%end
%y = y(3:12);
% Ve x[n] va y[n]
clf;
subplot(2,1,1);
stem(n,x);
axis([0, 10, -20, 20]);
xlabel('Chi so n');
ylabel('Bien do');
title('Tin hieu vao');
subplot(2,1,2);
stem(n, y);
axis([0, 10, -60, 60]);
xlabel('Chi so n');
xlabel('Bien do');
title('Tin hieu ra');