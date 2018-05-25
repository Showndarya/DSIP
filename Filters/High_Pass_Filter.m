pkg load image;

img = rgb2gray(imread("panda.jpg"));
subplot(1,2,1);
imshow(img);
title('Original Image');

img = double(img);
h = [-2,-1,0;-1,0,1;0,1,2];
oimg = zeros(rows(img),columns(img));

for i=2:rows(img)-1
  for j=2:columns(img)-1
     a = sum(sum(img(i-1:i+1,j-1:j+1) .* h));
     if(a<0)
        oimg(i,j) = 0;
     else
        oimg(i,j) = a;
     end   
  end
end

subplot(1,2,2);
imshow(uint8(oimg));
title('On Applying High Pass Filter');
