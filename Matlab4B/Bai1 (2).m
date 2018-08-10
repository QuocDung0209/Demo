function Img_out = Bai1(Img_path, M, bias)

bias = bias/256;
Img = im2double(imread(Img_path));

Img_out(:,:,1) = conv2(Img(:,:,1),M,'same') + bias;
Img_out(:,:,2) = conv2(Img(:,:,2),M,'same') + bias;
Img_out(:,:,3) = conv2(Img(:,:,3),M,'same') + bias;

figure;
imshow(Img);

figure;
imshow(Img_out);