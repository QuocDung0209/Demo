function [Pt,Pl] = B4_dtnewtont(xa,y)
%DTNEWTONT Summary of this function goes here
%   Detailed explanation goes here3.5
syms x;
yl=length(y);
n=yl;
deltay=y;

pt=sym(ones(1,yl));
pt(1)=sym(y(1));

pl=sym(ones(1,yl));
pl(1)=sym(y(yl));
l=2;
      for k=(yl-1):-1:1
          for j=1:k
          deltay(n+j)= (deltay((n-k-1)+j+1) - deltay((n-k-1)+j))/(xa(yl-k+j)-xa(j));
          end
          
          for i=1:(yl-k)
            if(i==1)
            pt(l)=deltay(n+1)*(x-xa(1)); %Newton tien
            pl(l)=deltay(n+k)*(x-xa(yl)); %Newton lui
            else
            pt(l)=pt(l)*(x-xa(i));	%Newton tien
            pl(l)=pl(l)*(x-xa(yl+1-i)); %Newton lui
            end
          end
          l=l+1;
          n=n+k;
      end
Pt=inline(vpa(simplify(sum(pt)),2)); %Phuong trinh theo Newton tien
Pl=inline(vpa(simplify(sum(pl)),2)); %Phuong trinh theo Newton lui
end

