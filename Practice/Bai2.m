clf;
%Tao vector tu -10 toi 20
n= -10:20;
%Tao tin hieu bac don vi bi tri hoan 7 mau s[n-7]
%Tín hi?u b?c ??n v? b?ng 0 trong quá kh? và b?ng 1 k? t? g?c th?i gian v? sau 
u=[zeros(1,17) ones(1,14)]; 
%Ve tin hieu xung luc don vi
stem(n,u)
xlabel('Chi so n');
ylabel('Bien do');
title('Tin hieu bac don vi bi tri hoan 7 mau')
axis([-10 20 0 1.2])