n = 0:9;
% Xung luc don vi
x = [1 0 0 0 0 0 0 0 0 0];
% Tinh h[n]
a = 1;
b = [1.2 -0.85 1];
%h = filter(b,a,x);
%Tinh dap ung xung h[n]
h = impz(b,a,n);
disp(h)