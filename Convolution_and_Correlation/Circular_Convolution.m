x = input('Enter x: ');
h = input('Enter h: ');
[r,c]=size(x);
[r1,c1]=size(h);
if(c>c1) 
  h=[h,zeros(c-c1)];
end
if (c1>c)  
  x=[x,zeros(c1-c)];
end
[r,n]=size(x);
n
oh = h;
hs = zeros(n,n);
for i=1:n
  for j=1:n
    hs(i,j) = h(j);
  end  
  ths(2:n)=h(1:n-1);
  ths(1)=h(n);
  h=ths;
end

hs = hs';
x =x';
ccn = hs * x;

subplot(4,3,1);
stem (1:n,x);
xlabel('n');
ylabel('x(n)');
title('Signal 1');  

subplot(4,3,2);
stem (1:n,oh);
xlabel('n');
ylabel('x(n)');
title('Signal 2');  

subplot(4,3,3);
stem (1:n,ccn);
xlabel('n');
ylabel('x(n)');
title('Circular Convolution');

