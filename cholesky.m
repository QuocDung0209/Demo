function [root B]=cholesky(A,b)

%A=[1 1 -1;1 2 0;-1 0 4];
%b=[1 2 3];
dem=0;
[m n]=size(A);
% Kiem tra ma tran doi xung va xac dinh duong
for i=1:n
    if (det(A(i,i))>0)
        dem=dem+1;
    end
end
if dem<n 
    fprintf(' Ma tran A khong thoa man');
    return
end
% Phan tich A=BB'
B=zeros(n);
B(1,1)=sqrt(A(1,1));
for i=2:m
    B(i,1)=A(i,1)/B(1,1);
    for j=2:i
        Bijk=0;
        for k=1:j-1;
            Bijk=Bijk+B(i,k)*B(j,k);
        end
        B(i,j)=(1/B(j,j))*(A(i,j)-Bijk);
    end
    Bik=0;
    for k=1:i-1;
        Bik=(B(i,k))^2+Bik;
    end
    B(i,i)=sqrt(A(i,i)-Bik);
end
%By=b => tim y
C=[B b']
[m n]=size(C)
y=zeros(1,m)
for i=1:m
    s=C(i,n);
    for j=1:i
        s=s-y(j)*C(i,j)
    end
    y(i)=s/C(i,i);
end
%tim x
D=[B' y']
[m n]=size(D)
x=zeros(1,m)
for i=m:-1:1
    s=D(i,n)
    for j=i+1:m
        s=s-x(j)*D(i,j);
    end
    x(i)=s/D(i,i)
end
root=x';

        
    
    


