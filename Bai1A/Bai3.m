num = [-2]; 
den = [0.02 1]; 
w = logspace(-4, 4); 
h = freqs(num, den, w); 
f = w/(2*pi); 
mag = 20*log10(abs(h)); 
semilogx(f, mag) 
title('Magnitude Response') 
xlabel('Frequency, Hz') 
ylabel('Gain, dB');
