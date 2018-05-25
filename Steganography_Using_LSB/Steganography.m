pkg load image;
pkg load communications;

image = double(imread("steg.bmp"));
lsbmat = bitget(image,1);
n=1;
k=1;
binmat = zeros(5,5);
message = ['h' 'e' 'l' 'l' 'o'];
message
for i=1:columns(message)
  mesdec = message(i) - 'a';
  mesbin = de2bi(mesdec,4);
  mesbin = fliplr(mesbin);
  mesbin
  for j=1:columns(mesbin)
    lsbmat(n,k) = mesbin(j);
    if(k==columns(lsbmat)) 
      n=n+1;
      k=0;
    else k=k+1;
    end
  end
end
stegimage = image;
stegimage = bitset(stegimage,1,lsbmat);
imwrite(stegimage,'encode_final.bmp');

%decode

stegimage = double(imread("encode_final.bmp"));
declsbmat = bitget(stegimage,1);
decodemessage = zeros(5,1);
powers = [8 4 2 1];
n=1;
k=1;
dec=0;
for i=1:5
  for j=1:4
    dec = dec + declsbmat(n,k)*powers(j);
    if(k==columns(declsbmat)) 
      n=n+1;
      k=0;
    else k=k+1;
    end
  end
  decode(i) = char(dec+'a');
  dec=0;
end

