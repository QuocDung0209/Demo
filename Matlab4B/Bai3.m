function Img_out = Bai3(Img_path,option)

Img = im2double(imread(Img_path));
Img_out = imresize(Img,4,option);
figure;
imshow(Img);
figure;
imshow(Img_out);