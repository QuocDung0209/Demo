function Img_out = Bai4(Img_path, K)

Img = im2double(imread(Img_path));

[m n] = size(Img(:,:,1));

for i = 1:m
    for j = 1:n
        Img_out(i,j,1) = (0.299+0.701*K)*Img(i,j,1) + (0.587*(1-K))*Img(i,j,2) + (0.114*(1-K))*Img(i,j,3);
        Img_out(i,j,2) = (0.299*(1-K))*Img(i,j,1) + (0.587+0.413*K)*Img(i,j,2) + (0.114*(1-K))*Img(i,j,3);
        Img_out(i,j,3) = (0.299*(1-K))*Img(i,j,1) + (0.587*(1-K))*Img(i,j,2) + (0.114+0.886*K)*Img(i,j,3);
    end
end

figure;
imshow(Img);
figure;
imshow(Img_out);