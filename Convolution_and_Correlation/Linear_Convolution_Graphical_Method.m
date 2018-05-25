x = input('Enter X:');
h = input('Enter H:');

xn = columns(x);
hn = columns(h);

subplot(5,4,1);
stem(1:xn,x);
title('Original x');

subplot(5,4,2);
stem(1:hn,h);
title('Original h');

hm = fliplr(h);
hmo = hm;
hm = [hm zeros(1,xn-1)];
%hmg = [zeros(xn+hn-1)];
lc = [zeros(1,xn+hn-1)];

for i=1:(xn+hn-1)
  
  hm = [ zeros(1,i-1) hmo zeros(1,xn-i)];
  hm = hm(1:xn+hn-1);
  xm = [ zeros(1,hn-1) x];
  n = [-hn+i:hn+i-1];
  str = sprintf('h( %d -k)', i-1);
  hmp = [hmo zeros(1,xn-1)];
  subplot(5,4,i+2);
  stem(n,hmp);
  title(str);
  %hmg(i,:) = hm;
  ans = hm .* xm;
  lc(i) = sum(ans);
  
end

n = [1:xn+hn-1];
subplot(5,4,9);
stem(n,lc);
title('Linear Convolution');
