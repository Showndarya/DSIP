pkg load image;

img = imread('/home/mushu/Documents/octave/panda.jpg');
imgb = rgb2gray(img);
[r,c] = size(imgb);
m1=zeros(r,c);
m2=zeros(r,c);
m3=zeros(r,c);
m4=zeros(r,c);
m5=zeros(r,c);
m6=zeros(r,c);
m7=zeros(r,c);
m8=zeros(r,c);
    
for i=1:r
  for j=1:c 
    m1(i,j)=bitget(imgb(i,j),1);
    m2(i,j)=bitget(imgb(i,j),2);
    m3(i,j)=bitget(imgb(i,j),3);
    m4(i,j)=bitget(imgb(i,j),4);
    m5(i,j)=bitget(imgb(i,j),5);
    m6(i,j)=bitget(imgb(i,j),6);
    m7(i,j)=bitget(imgb(i,j),7);
    m8(i,j)=bitget(imgb(i,j),8);   
  end
end

subplot(3,3,1),imshow(img),title('Original Image');
subplot(3,3,2),imshow(m1),title('Plane 8 (LSB)');
subplot(3,3,3),imshow(m2),title('Plane 7');
subplot(3,3,4),imshow(m3),title('Plane 6');
subplot(3,3,5),imshow(m4),title('Plane 5');
subplot(3,3,6),imshow(m5),title('Plane 4');
subplot(3,3,7),imshow(m6),title('Plane 3');
subplot(3,3,8),imshow(m7),title('Plane 2');
subplot(3,3,9),imshow(m8),title('Plane 1 (MSB)');
