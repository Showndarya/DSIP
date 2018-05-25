pkg load image;

img = imread("babyincradle.png");

r = rows(img);
c = columns(img);
s = r.*c;

f  = zeros(1,256);
pdf = zeros(1,256);
oimg = zeros(1,256);

for i=1:r
  for j=1:c
    f(img(i,j)+1) = f(img(i,j)+1) + 1;
    pdf(img(i,j)+1) = f(img(i,j)+1)/s;
  end
end

output =f;
sum = 0;
fo = zeros(1,256);
pdfo = zeros(1,256);

for i=1:256
    sum = sum+pdf(i);
    %cdf(i) = sum;
    output(i) = round((sum)*255);
end


for i=1:r
   for j=1:c
      oimg(i,j) = output(img(i,j)+1);
   end  
end

for i=1:rows(oimg)
  for j=1:columns(oimg)
    val = oimg(i,j);
    fo(val) = fo(val)+1;
  end
end

subplot(2,2,1);
stem(1:256,f);
subplot(2,2,2);
imshow(img);
subplot(2,2,3);
stem(1:256,fo);
subplot(2,2,4);
imshow(uint8(oimg));
