pkg load image;

img = imread('/home/mushu/Documents/octave/panda.jpg');
imgb = rgb2gray(img);
[r,c] = size(imgb);
threshold = input('Enter threshhold value:');
for i=1:r
  for j=1:c
    if( imgb(i,j) < threshold ) imgb(i,j)=0;
    else imgb(i,j) = 255;
    end 
  end
end
subplot(2,2,1);
imshow(img);
title('Original Image');
subplot(2,2,4);
imshow(imgb);
caption = sprintf("Threshhold = %d",threshold);
title(caption);

