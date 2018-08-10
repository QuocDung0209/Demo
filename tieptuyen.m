function [x1,n] = tieptuyen(fx,a,b,saiso)
%tieptuyen Phuong phap tiep tuyen tinh nghiem gan dung cua phuong trinh
%   1)Cho phuong trinh f(x)=0
%   2)An dinh sai so cho phep epsilon
%   3)Xac dinh khoang phan li nghiem[a,b] trong do f' va f'' khong doi dau
%   4)Chon x0 sao cho f(x0)*f''(x0)>0
%   5)Tinh xn=x(n-1)-f(x(n-1))/f'(x(n-1)) cho toi khi |xn - x(n-1)|<saiso
%   thi dung
fx = str2func(['@(x)',fx]);
fx = sym(fx);
f1x = inline(diff(sym((fx))));
f2x = inline(diff(diff(sym(fx))));
fx = inline(fx);
for i = a:b
    if f1x(i)*f2x(i)>0
        x0 = i;
        break
    end
end
n = 0;
while(1)
    n = n+1;
    x1 = x0 - fx(x0)/f1x(x0);
    if abs(x1 - x0)<saiso
        break
    end
    x0=x1;
end
return
        
end

