pkg load image;

oimg = rgb2gray(imread("panda.jpg"));
subplot(2,3,1);
imshow(oimg);
title('Original Image');

oimg = imnoise(oimg,"salt and pepper");
subplot(2,3,4);
imshow(oimg);
title('After inducing salt and pepper noise');

for i=2:rows(oimg)-1
  for j=2:columns(oimg)-1
     a = [ oimg(i-1,j-1) oimg(i-1,j)  oimg(i-1,j+1) oimg(i,j-1)  oimg(i,j)  oimg(i,j+1)  oimg(i+1,j-1)  oimg(i+1,j)  oimg(i+1,j+1)];
     oimg(i,j) = median(a(:));
  end
end
subplot(2,3,5);
imshow(oimg);
title('On Applying Median Filter');

