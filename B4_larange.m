function [P] = B4_larange(x_array,y)
%LARANGE Summary of this function goes here
%   Detailed explanation goes here
syms x;
yl=length(y);
l=sym(ones(1,yl));
    for j=1:yl
        for i=1:yl
            if(i~=j)
            l(j)=(x-x_array(i))*l(j)/(x_array(j)-x_array(i));
            end
        end
    end
P=inline(vpa(simplify(l*y')));
end

