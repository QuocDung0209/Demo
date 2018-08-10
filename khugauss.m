
function [root matrix_A1]=khugauss(A,B)
A=[A B'];
[m n]=size(A);
%Khu an
for i=1:m-1
    for j=i+1:m
        c=A(j,i)/A(i,i);
        for k=1:n
            A(j,k)=A(i,k)*c-A(j,k);
        end
    end
end
%tim an
for i=m:-1:1
    s=A(i,n);
    for j=i+1:m
        s=s-x(j)*A(i,j);
    end
    x(i)=s/A(i,i);
    
end
root=x';
matrix_A1=A;

    