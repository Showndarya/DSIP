pkg load image;

img = imread('/home/mushu/Documents/octave/panda.jpg');
imgb = rgb2gray(img);
imgb = 255 - imgb;
subplot(1,2,1);
imshow(img);
title('Original Image');

subplot(1,2,2);
imshow(imgb);
title('Image after Negation');

