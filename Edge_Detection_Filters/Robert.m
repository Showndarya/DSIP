pkg load image;

img = rgb2gray(imread("deer1.jpg"));
subplot(1,2,1);
imshow(img);
title('Original Image');

img = double(img);
r1 = [1,0;0,-1];
oimg = zeros(rows(img),columns(img));

for i=1:rows(img)-1
  for j=1:columns(img)-1
     a = img(i,j)*r1(1) + img(i,j+1)*r1(2) + img(i+1,j)*r1(3) + img(i+1,j+1)*r1(4);
     if(a<0)
        oimg(i,j) = 0;
     else
        oimg(i,j) = a;
     end   
  end
end

r2 = [0,1;-1,0];

for i=1:rows(img)-1
  for j=1:columns(img)-1
     a = img(i,j)*r2(1) + img(i,j+1)*r2(2) + img(i+1,j)*r2(3) + img(i+1,j+1)*r2(4);
     if(a<0)
        oimg(i,j+1) = oimg(i,j+1) + 0;
     else
        oimg(i,j+1) = oimg(i,j+1) + a;
     end   
  end
end

subplot(1,2,2);
imshow(uint8(oimg));
title('On Applying Robert High Pass Filter');
