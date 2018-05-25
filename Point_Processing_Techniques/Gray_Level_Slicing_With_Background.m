pkg load image;

img = imread('/home/mushu/Documents/octave/panda.jpg');
imgb = rgb2gray(img);
[r,c] = size(imgb);
t1 = input('Enter t1 value:');
t2 = input('Enter t2 value:');
for i=1:r
  for j=1:c
    if( imgb(i,j) <= t2 && imgb(i,j) > t1 ) imgb(i,j)=255;
    end 
  end
end
subplot(2,2,1);
imshow(img);
title('Original Image');
subplot(2,2,4);
imshow(imgb);
caption = sprintf("r1 = %d; r2 = %d",t1,t2);
title(caption);
