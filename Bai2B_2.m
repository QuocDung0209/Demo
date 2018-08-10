g1 = [1 2 3 4 5 6];
g2 = [1 -2 3 3 -2 1];
%a
n = length(g1);
g12 = cconv(g1,g2,n);
%b
G1 = fft(g1);
G2 = fft(g2);
G12 = fft(g12);
%c
x = [0 0 0 0 0 1 1.5 1.7 2 1.5 1 0.5 0 0 0 0 0];
w = 0:2*pi/511:pi;
k = 0:8;
%num = x; dem = 1;
X = freqz(x,1,w);
X1 = fft(x);
X1 = X1(1:9);
% Ve X(w)
%subplot(2,1,1)
%plot(w/pi,real(X)); grid
%title('Phan thuc cua X(w)')
%xlabel('\omega/\pi');
%ylabel('Bien do');
%pause
subplot(2,1,1)
plot(w/pi,abs(X)); grid
title('Pho bien do cua X(w)')
xlabel('\omega/\pi');
ylabel('Bien do');
subplot(2,1,2)
stem(k,abs(X1));grid
title('Pho bien do cua X1')
xlabel('Chi so k');
ylabel('Bien do');
%pause
