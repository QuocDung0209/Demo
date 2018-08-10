function [c,n] = chiadoi(fx,a,b,saiso)
%chiadoi Tinh gan dung nghiem thuc cuar phuong trinh
%   1)Cho phuong trinh f(x)=0
%   2)An dinh sai so cho phep e
%   3)Xac dinh khoang phan li nghiem [a,b]
n=0;
e = b-a;
% fx=inline(fx);
while e>=saiso
    n=n+1;
    c=(a+b)/2;
    if fx(c)*fx(a)<0
        b=c;
    else
        a=c;
    end
    e=b-a;
end
return
end

