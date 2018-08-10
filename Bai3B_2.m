%Bac loc
N = 40;
%Tan so cat
Wn = 0.5;
B = 5.44;
%Dap ung xung cua loc
h = fir1(N,Wn,kaiser(N+1,B));
%h1 = fir1(N,Wn,hann(N+1));

%Dap ung tan so cua loc
w = 0:0.001:pi;
H = freqz(h,1,w);
%H1 = freqz(h1,1,w);

%Ve dap ung bien do va dap ung pha
figure('Name', 'kaiser')
subplot(2,1,1);
plot(w/pi,20*log10(abs(H)));grid
xlabel('\omega/\pi'); ylabel('Bien do');
title('Dap ung bien do cua loc thap qua');
subplot(2,1,2);
plot(w/pi,unwrap(angle(H)));grid
xlabel('\omega/\pi'); ylabel('pha(rad)');
title('Dap ung pha cua loc thap qua');

% figure('Name', 'Test')
% subplot(2,1,1);
% plot(w/pi,20*log10(abs(H1)));grid
% xlabel('\omega/\pi'); ylabel('Bien do');
% title('Dap ung bien do cua loc thap qua');
% subplot(2,1,2);
% plot(w/pi,unwrap(angle(H1)));grid
% xlabel('\omega/\pi'); ylabel('pha(rad)');
% title('Dap ung pha cua loc thap qua');

