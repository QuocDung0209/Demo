t=0:0.001:0.025;
v=10*cos(377*t);
i=5*cos(377*t+60*pi/180);
% plot(t, v)
% hold on
% plot(t, v)
plot(t, v, t, i)
xlabel('Thoi gian t(s)')
ylabel('Dien the (V) va Dong dien (mA)')
title('Do thi V(t) va I(t) theo thoi gian')
grid on