img = imread('C:\Users\Exam\Desktop\shown\panda.jpg');
imgb = rgb2gray(img);
subplot(2,2,1);
imshow(imgb);
title('Original image');

[r c] = size(imgb);
r1 = input('Enter s1 value:');
r2 = input('Enter s2 value:');
s1 = input('Enter r1 value:');
s2 = input('Enter r2 value:');

m1 = s1/r1;
m2 = (s2-s1)/(r2-r1);
m3 = (255-s2)/(255-r2);
for i=1:r
  for j=1:c
      if( imgb(i,j) <= r1 && imgb(i,j) >= 0 ) imgb(i,j)= floor(m1*r);
      else if( imgb(i,j) <= r2 && imgb(i,j) >= r1 ) imgb(i,j)= floor(s1 + ((imgb(i,j) - r1)*m2));
      else imgb(i,j)= floor(s2 + ((imgb(i,j) - r2)*m3));
    end
    end 
  end
end
subplot(2,2,3);
imshow(imgb);
caption = sprintf('r1 = %d, s1 = %d\nr2 = %d, s2= %d\nm1= %d, m2= %d, m3= %d', r1, s1, r2, s2, m1, m2, m3);
title(caption);

