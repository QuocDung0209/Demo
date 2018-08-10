syms x;
fx = x^2 - 2*sin(x)+1/2;
fxi = inline(fx);
fxi(2)