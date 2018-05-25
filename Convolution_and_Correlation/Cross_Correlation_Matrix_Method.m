x = input('Enter X: ');
h = input('Enter H: ');
h = fliplr(h);
xn = length(x);
hn = length(h);
n = xn+hn-1;
y = zeros(1,n);
for i = 1:n
  for j = 1:n
    if ((i-j+1)>0 && (i-j+1)<=b && (j)<=a)
      y(i) += x(j).*h(i-j+1);
    end
  end
end
disp(y)
