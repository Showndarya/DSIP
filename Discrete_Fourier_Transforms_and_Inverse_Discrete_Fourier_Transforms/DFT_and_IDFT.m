pkg load image;

n = 256;
dft = zeros(n);
img = imresize(rgb2gray(imread("newton.jpg")),[n n]);
subplot(1,3,1);
imshow(img);
title("Original");

for x=0:n-1
  for y=0:n-1
    dft(x+1,y+1) = exp((0-i)*2*pi*x*y/n); %cos(2*pi*i*j/n)-1i*sin(2*pi*i*j/n);
    %dft(i+1,j+1) = exp(-j*2*pi*((i*j)/n));
  end
end

imgd = double(img);
im = (dft*imgd)*dft;
imr = real(im);
subplot(1,3,2);
imshow(uint8(imr));
title("DFT");

idft = zeros(n);
for x=0:n-1
  for y=0:n-1
    idft(x+1,y+1) = exp((0+i)*2*pi*x*y/n);%(cos(2*pi*i*j/n)+1i*sin(2*pi*i*j/n));
    %dft(i+1,j+1) = exp(-j*2*pi*((i*j)/n));
  end
end

imi = (idft*im)*idft;
imi = imi./(n*n);
imir = real(imi);

subplot(1,3,3);
imshow(uint8(imir));
title("IDFT");

