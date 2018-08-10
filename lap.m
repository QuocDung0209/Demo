function [x1,n] = lap(fp,a,b,saiso)
%lap Phuong phap lap tinh nghiem gan dung cua phuong trinh
%   1)Cho phuong trinh f(x)=0
%   2)An dinh sai so cho phep e
%   3)Xac dinh khoang phan li nghiem [a,b]
%   4)Tim ham lap hoi tu phi
%   5)Chon xap xi dau x0

if(fp(a)*fp((a+b)/2)<0)
    x0=a;
else
    x0=b;
end
n=0;
while (1)
    n=n+1;
    x1 = fp(x0);
    if abs(x1-x0)<saiso
        break
    end
    x0 = x1;
end
return

end

