pkg load image;

img = rgb2gray(imread("panda.jpg"));
subplot(2,3,1);
imshow(img);
title('Original Image');
l = [1/9,1/9,1/9;1/9,1/9,1/9;1/9,1/9,1/9];

img = imnoise(img,"gaussian");

subplot(2,3,2);
imshow(img);
title('After inducing gaussian noise');

for i=2:rows(img)-1
  for j=2:columns(img)-1
     img(i,j) = img(i-1,j-1)*l(1) + img(i-1,j)*l(2) + img(i-1,j+1)*l(3) + img(i,j-1)*l(4) + img(i,j)*l(5) + img(i,j+1)*l(6) + img(i+1,j-1)*l(7) + img(i+1,j)*l(8) + img(i+1,j+1)*l(9);    
  end
end

subplot(2,3,3);
imshow(img);
title('On Applying Low Pass Filter');
