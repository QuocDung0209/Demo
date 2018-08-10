function Img_out = Bai2(Img_path,option)

Img = im2double(imread(Img_path));

if strcmp(option,'mean')
    M = [1/9 1/9 1/9; 1/9 1/9 1/9; 1/9 1/9 1/9];
    Img_out = conv2(Img,M,'same');
else if strcmp(option,'median')
    Img_out = medfilt2(Img,[3 3]);
    end
end

figure;
imshow(Img);
figure;
imshow(Img_out);