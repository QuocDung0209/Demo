x = [0.1 0.3 0.5 0.7 0.9];
y = 'asin(x)';
t = diff_taylor(y,x,0.000001)
l = diff_ns(y,x)