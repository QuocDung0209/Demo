%xung luc don vi - xu ly tin hieu so 1/15
%xung luc don vi - T�n hi?u c� bi�n ?? 1 ? g?c th?i gian v� b?ng 0 ? m?i th?i ?i?m kh�c 
%u=[1 zeros(1,N-1)];
%a. ud[n]=u[n-M] co chieu dai N (M<N)
M=input('M= ');
N=input('N= ');
ud=[zeros(1, M) 1 zeros(1, N-M-1)];
disp(ud)
%b.tin hieu bac don vi s[n] co chieu dai N
%s=ones(1,N);
%disp(s)