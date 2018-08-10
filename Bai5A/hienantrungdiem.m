function [x,y] = hienantrungdiem(fxy,xdau,xcuoi,y0,N)
fxy = inline(fxy);
x = linspace(xdau,xcuoi,2*N+1);
h = 2*(x(2)-x(1)); % buoc nhay
y = zeros(1,N+1);
y(1) = y0; 
for i = 1:N
    y(i+1) = y(i)+h/2*fxy(x(2*i-1),y(i));
    y(i+1) = y(i)+h*fxy(x(2*i),y(i+1)); 
end
x = linspace(xdau,xcuoi,N+1);