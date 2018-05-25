pkg load image;

img = rgb2gray(imread("deer1.jpg"));
subplot(1,2,1);
imshow(img);
title('Original Image');

img = double(img);
h = [-1,2,-1;2,-4,2;-1,2,-1];
oimg = zeros(rows(img),columns(img));

for i=2:rows(img)-1
  for j=2:columns(img)-1
     a =img(i-1,j-1)*h(1) + img(i-1,j)*h(2) + img(i-1,j+1)*h(3) + img(i,j-1)*h(4) + img(i,j)*h(5) + img(i,j+1)*h(6) + img(i+1,j-1)*h(7) + img(i+1,j)*h(8) + img(i+1,j+1)*h(9); %sum(sum(img(i-1:i+1,j-1:j+1) .* h));
     if(a<0)
        oimg(i,j) = 0;
     else
        oimg(i,j) = a;
     end   
  end
end

subplot(1,2,2);
imshow(uint8(oimg));
title('On Applying Laplacian High Pass Filter');
