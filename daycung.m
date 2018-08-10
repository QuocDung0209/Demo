%Day cung (secant method);
function [x1,n] = daycung(f,a,b,saiso)
syms x;
n=0;x0=a;e=b-a;
while e >= saiso
    x1=(a*f(b)-b*f(a))/(f(b)-f(a));
    if (f(a)*f(x1) <0)
        b = x1;
    else
        a = x1;
    end
    e = abs(x1-x0);
    x0 = x1;
    n = n+1;
end
end