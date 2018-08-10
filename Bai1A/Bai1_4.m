t=0:0.001:0.025;
v=10*cos(377*t);
i=5*cos(377*t+60*pi/180);
figure(1)
plot(t, v, t, i)
xlabel('Thoi gian t(s)')
ylabel('Dien the (V) va Dong dien (mA)')
title('Do thi V(t) va I(t) theo thoi gian')
grid on
figure(2)
plot(t, v,'*', t, i, 'o')
xlabel('Thoi gian t(s)')
ylabel('Dien the (V) va Dong dien (mA)')
title('Do thi V(t) va I(t) theo thoi gian')
text(0.003, 10*cos(377*0.003), 'Dien the v(t)')
text(0.009, 5*cos(377*0.009+pi*60/180), 'Dong dien i(t)')