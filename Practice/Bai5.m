n = 0:9;
x = [1.5 -4 6 2.5 -3 0 0 0 0 0];
%y = [0 0];
a = 1;
b = [1.2 -0.85 1];
%Tinh y[n]
y = filter(b,a,x);
%for i = 3:12
   % y(i) = 1.2*x(i)-0.85*x(i-1)+ x(i-2);
%end
%y=y(3:12);
%x=x(3:12);
%Ve x[n] va y[n]
clf;
subplot(2,1,1)
stem(n,x)
axis([0 10 -10 10])
xlabel('Chi so n')
ylabel('Bien do')
title('Tin hieu vao')
subplot(2,1,2)
stem(n,y)
axis([0 10 -20 20])
xlabel('Chi so n')
ylabel('Bien do')
title('Tin hieu ra')
