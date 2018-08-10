n = 0:6;
% Dap ung xung
h = [1.2 -0.85 1 0 0 0];
%Tin hieu vao
x = [1.5 -4 6 2.5 -3 0 0];
%y = zeros(1,7);
%Tinh y[n]
y = conv(h,x); %b
y=y(1:7);%b
%for i = 1:7
   % for j = 1:3
     %   if i>=j
            %y(i) = y(i) + h(j)*x(i-j+1);
        %end
    %end
%end
%Ve x[n] va y[n]
clf;
subplot(2,1,1);
stem(n,x);
axis([0, 10, -10, 10]);
xlabel('Chi so n');
ylabel('Bien do');
title('Tinh hieu vao');
subplot(2,1,2);
stem(n,y);
axis([0, 10, -15, 15]);
xlabel('Chi so n');
ylabel('Bien do');
title('Tin hieu ra');