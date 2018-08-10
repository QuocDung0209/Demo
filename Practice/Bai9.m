clf;
n = 0:299;
x1 = cos(2*pi*10*n/256);
x2 = cos(2*pi*100*n/256);
x = x1+x2;
% Tinh cac tin hieu
a1 = 1;
b1 = [0.5 0.27 0.77];
y1 = filter(b1,a1,x); %Tin hieu ngo ra cua he thong 1
a2 = [1 -0.53 0.46];
b2 = [0.45 0.5 0.45];
y2 = filter(b2,a2,x); %Tin hieu ngo ra cua he thong 2
% Ve cac tin hieu
subplot(2,1,1);
plot(n,y1); axis([0 300 -2 2]);
xlabel('Time index n'); ylabel('Amplitude');
title('Output of System #1'); grid;
subplot(2,1,2);
plot(n,y2); axis([0 300 -2 2]);
xlabel('Time index n'); ylabel('Amplitude');
title('Output of System #2'); grid;