function [x,y,n] = hienanhinhthang(fxy,xdau,xcuoi,y0,N,e)
fxy = inline(fxy);
x = linspace(xdau,xcuoi,N+1);
h = x(2)-x(1); % buoc nhay
y = zeros(1,N+1);
n = zeros(1,N+1);
y(1) = y0;
for i = 1:N
    y(i+1) = y(i)+h*fxy(x(i),y(i));
   % n(i)=0;
    while(1)
        n(i+1) = n(i+1)+1;
        c = y(i+1);
        y(i+1) = y(i)+h/2*(fxy(x(i),y(i))+fxy(x(i+1),y(i+1))); 
        if abs(y(i+1)-c)<e
            break;
        end
    end
end