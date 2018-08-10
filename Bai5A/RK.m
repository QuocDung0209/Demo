function [x,y] = RK(fxy,xdau,xcuoi,y0,N)
fxy = inline(fxy);
x = linspace(xdau,xcuoi,2*N+1);
h = 2*(x(2)-x(1)); % buoc nhay
y = zeros(1,N+1);
y(1) = y0; 
for i = 1:N
    k1 = h*fxy(x(2*i-1),y(i));
    k2 = h*fxy(x(2*i),y(i)+k1/2);
    k3 = h*fxy(x(2*i),y(i)+k2/2);
    k4 = h*fxy(x(2*i+1),y(i)+k3);
    y(i+1) = y(i) + (k1 + 2*k2 + 2*k3 + k4)/6;
end
x = linspace(xdau,xcuoi,N+1);