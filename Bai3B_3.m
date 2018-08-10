 %Cac yeu cau cua bo loc 
 Ws = 0.45; Wp = 0.32; Rp = 0.6; Rs = 40; 
 %Xac dinh bac loc va tan so cat
 [N, Wn] = buttord(Wp, Ws, Rp, Rs) ; 
  %thiet ke loc thap qua bac N co tan so cat Wn
  [num, den ] = butter(N, Wn, 'low') ;
  %Tinh toan dap ung tan so cua loc vua thiet ke 
  figure('Name',' butter');
  w = 0:0.001: pi ;
  H = freqz (num, den ,w) ; 
  
  N = 10;
%Tan so cat
Wn = 0.5;
%Dap ung xung cua loc
h1 = fir1(N,Wn,hamming(N+1));
w = 0:0.001:pi;
H1 = freqz(h1,1,w);
  %Ve dap ung bien do va dap ung pha 
  subplot(2,1,1);
  plot (w/pi , 20*log10(abs(H)) ) ; grid 
  xlabel ('\omega /\pi') ; ylabel ('Bien do') ; 
  title ('Dap ung bien do cua loc thap qua') ; 
  hold on;
  
plot(w/pi,20*log10(abs(H1)));grid
  subplot (2 ,1 ,2) ; 
  plot (w/pi , unwrap( angle (H1) ) ) ; grid
  xlabel ('\omega /\pi') ; ylabel ('pha(rad)') ; 
  title ('Dap ung pha cua loc thap qua') ;
  hold on;
  plot (w/pi , unwrap( angle (H) ) ) ; grid
  
