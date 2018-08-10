function [root L U]=LU(A,B)
 n=size(A);
 %tim L, U
 U=A;
 L=eye(n);
for i=1:n-1
    for j=i+1:n
        c=U(j,i)/U(i,i);
        L(j,i)=c;
        for k=1:n
            U(j,k)=U(j,k)-U(i,k)*c;
        end
    end
end
%tim d
L=[L B'];
[m n]=size(L);
d=zeros(1,m);
for i=1:m
    s=L(i,n);
    for j=1:i
        s=s-d(j)*L(i,j);
    end
    d(i)=s;
end
%tim x
U=[U d'];
for i=m:-1:1
    t=U(i,n);
    for j=i+1:m
        t=t-x(j)*U(i,j);
    end
    x(i)=t/U(i,i);
end
root=x';




    

