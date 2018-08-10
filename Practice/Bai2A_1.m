A = [-1 2 -3 5; 1 3 2 -1; 3 -3 2 4; 4 2 5 1];
B = [14; 9; 19; 27];
%X = inv(A)*B;
A1 = [B A(:,2:4)];
A2 = [A(:,1) B A(:,3:4)];
A3 = [A(:,1:2) B A(:,4)];
A4 = [A(:,1:3) B];
x1 = det(A1)/det(A);
x2 = det(A2)/det(A);
x3 = det(A3)/det(A);
x4 = det(A4)/det(A);
fprintf('Nghiem cua phuong trinh la:\n %f\n %f\n %f\n %f \n', x1,x2,x3,x4)