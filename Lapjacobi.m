function [root count]=Lapjacobi(A,B)
[m n]=size(A);
%kiem tra ma tran duong cheo troi nghiem ngat
if det(A)==0
    fprint(' Ma tran khong thoa man')
    return
end
for i=1:m
    if A(i,i)==0
        fprintf(' Ma tran khong thoa man');
        return
    end
end
%lap
count=0;
x=zeros(1,n);
while(1)
    count=count+1;
    x1=x;
    fprintf('Lan lap thu %d',count);
    for i=1:n
        s1=0
        for j=1:i-1
            s1=s1+A(i,j)*x1(j)
        end
        s2=0
        for j=i+1:n
            s2=s2+A(i,j)*x1(j);
        end
        x(i)=(1/A(i,i))*(-s1-s2+B(i));
    end
    e=max(x-x1);
    if (e<10^-4)
        break
    end
end
root=x';



            
        
  
    
    
    