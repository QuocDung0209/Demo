%Bac loc
N = 10;
%Tan so cat
Wn = 0.5;
%Dap ung xung cua loc
h = fir1(N,Wn,rectwin(N+1));
h1 = fir1(N,Wn,triang(N+1));
h2 = fir1(N,Wn,hann(N+1));
h3 = fir1(N,Wn,hamming(N+1));
h4 = fir1(N,Wn,blackman(N+1));
%Dap ung tan so cua loc
w = 0:0.001:pi;
H = freqz(h,1,w);
H1 = freqz(h1,1,w);
H2 = freqz(h2,1,w);
H3 = freqz(h3,1,w);
H4 = freqz(h4,1,w);

%Ve dap ung bien do va dap ung pha
figure('Name', 'Chu nhat')
subplot(2,1,1);
plot(w/pi,20*log10(abs(H)));grid
xlabel('\omega/\pi'); ylabel('Bien do');
title('Dap ung bien do cua loc thap qua');
subplot(2,1,2);
plot(w/pi,unwrap(angle(H)));grid
xlabel('\omega/\pi'); ylabel('pha(rad)');
title('Dap ung pha cua loc thap qua');

figure('Name', 'Tam giac')
subplot(2,1,1);
plot(w/pi,20*log10(abs(H1)));grid
xlabel('\omega/\pi'); ylabel('Bien do');
title('Dap ung bien do cua loc thap qua');
subplot(2,1,2);
plot(w/pi,unwrap(angle(H1)));grid
xlabel('\omega/\pi'); ylabel('pha(rad)');
title('Dap ung pha cua loc thap qua');

figure('Name', 'Hann')
subplot(2,1,1);
plot(w/pi,20*log10(abs(H2)));grid
xlabel('\omega/\pi'); ylabel('Bien do');
title('Dap ung bien do cua loc thap qua');
subplot(2,1,2);
plot(w/pi,unwrap(angle(H2)));grid
xlabel('\omega/\pi'); ylabel('pha(rad)');
title('Dap ung pha cua loc thap qua');

figure('Name', 'Hamming')
subplot(2,1,1);
plot(w/pi,20*log10(abs(H3)));grid
xlabel('\omega/\pi'); ylabel('Bien do');
title('Dap ung bien do cua loc thap qua');
subplot(2,1,2);
plot(w/pi,unwrap(angle(H3)));grid
xlabel('\omega/\pi'); ylabel('pha(rad)');
title('Dap ung pha cua loc thap qua');

figure('Name', 'Blackman')
subplot(2,1,1);
plot(w/pi,20*log10(abs(H4)));grid
xlabel('\omega/\pi'); ylabel('Bien do');
title('Dap ung bien do cua loc thap qua');
subplot(2,1,2);
plot(w/pi,unwrap(angle(H4)));grid
xlabel('\omega/\pi'); ylabel('pha(rad)');
title('Dap ung pha cua loc thap qua');