figure('Color', [0 1 0],...
    'Name', 'Co',...
    'NumberTitle', 'off',...
    'MenuBar', 'none')
n = 0:100;
%Thanh phan sin tan so thap 
%s1 = cos(2*pi*0.05*n);
s1 = cos(2*pi*0.5*n); 
%Thanh phan sin tan so cao
s2 = cos(2*pi*0.47*n);
%s2 = 0;
%Tin hieu ngo vao
x = s1+s2;
%Bo loc thap qua
%M = 2;
M = 5;
b = ones(1,M); a =1;
y = filter(b,a,x)/M;
%Ve tin hieu truoc va sau khi loc
clf;
subplot(2,2,1);
plot(n, s1);
axis([0, 100, -2, 2]);
xlabel('Chi so n'); ylabel('Bien do');
title('Tin hieu #1');
subplot(2,2,2);
plot(n, s2);
axis([0, 100, -2, 2]);
xlabel('Chi so n'); ylabel('Bien do');
title('Tin hieu #2');
subplot(2,2,3);
plot(n,x);
axis([0, 100, -2, 2]);
xlabel('Chi so n'); ylabel('Bien do');
title('Tin hieu ngo vao');
subplot(2, 2, 4);
plot(n, y);
axis([0, 100, -2, 2])
xlabel('Chi so n'); ylabel('Bien do');
title('Tin hieu ngo ra');
axis;
