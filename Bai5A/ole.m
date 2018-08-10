function [x,y] = ole(fxy,xdau,xcuoi,y0,N)
fxy = inline(fxy);
x = linspace(xdau,xcuoi,N+1);
h = x(2)-x(1); % buoc nhay
y = zeros(1,N+1);
y(1) = y0; 
for i = 1:N
    y(i+1) = y(i)+h*fxy(x(i),y(i));
end