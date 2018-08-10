clf;
% tin hieu ngo vao
x = [1 3 5 7 9 11 13 15 17];
[x_row, x_col] = size(x);
% w va n
w = -4*pi:8*pi/511:4*pi;
n = 0:1:x_col-1;
num = x; dem = 1;
%X(w) = DTFT(x[n])
%X = x*exp(-j*(w(ones(size(n)),:) .*((n(ones(size(w)),:))')));
X = freqz(num,dem,w);
% Ve X(w)
subplot(2,1,1)
plot(w/pi,real(X)); grid
title('Phan thuc cua X(w)')
xlabel('\omega/\pi');
ylabel('Bien do');
%pause
subplot(2,1,2)
plot(w/pi,imag(X));grid
title('Phan ao cua X(w)')
xlabel('\omega/\pi');
ylabel('Bien do');
%pause
figure
subplot(2,1,1)
plot(w/pi,abs(X)); grid
title('Pho bien do cua X(w)')
xlabel('\omega/\pi');
ylabel('Bien do');
%pause
subplot(2,1,2)
plot(w/pi,angle(X)*180/pi); grid
title('Pho pha cua X(w)')
xlabel('\omega/\pi');
%ylabel('Pha theo radians');
ylabel('Pha theo do');
%pause

%1.a: X(omega) la ham tuan hoan theo chu ky tuan hoan theo omega
%Chu ky tuan hoan 2*pi
%Lenh pause dung xem tung do thi

