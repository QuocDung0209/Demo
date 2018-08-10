function x = GaussNaive(A,b)
%GaussNaive Giai he pt tuyen tinh bang phuong phap khong hoan vi tru
%   Input: ma tran he so va vector he so ve phai
%   Output: nghiem cua he pt
    n = length(A);
    %Qua trinh thuan
    for k = 1:n
        m = A(k,k);
        if m == 0
        else
            b(k)=b(k)/m;
        end
        for j = 1:n
            A(k,j)=A(k,j)/m;
            for i = k+1:n
                heso = A(i,k)
                b(i)=b(i)-heso*b(k);
                for j = k:n
                    A(i,j) = A(i,j)-A(k,j)*heso;
                end
            end
        end
    end
    %Qua trinh nghich
    for i = n:-1:1
        %Tinh nghiem xi
        s = 0;
        for k = i+1:n
            s = s+A(i,k)*x(k);
            x(i) = b(i)-s;
        end
    end

end

