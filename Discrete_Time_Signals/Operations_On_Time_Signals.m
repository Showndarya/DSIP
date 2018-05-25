n = input('Enter number of samples:');
y = zeros(1,n);
for i = 1:n
    y(i)=input('num:');
end
subplot(4,3,1);
stem (1:n,y);
xlabel('n');
ylabel('x(n)');
title('Original');

k = input('Enter advance constant:');
subplot(4,3,2);
stem (1-k:n-k,y-k);
xlabel('n');
ylabel('x(n)');
title('Advance');

k = input('Enter delay constant:');
subplot(4,3,3);
stem (1+k:n+k,y+k);
xlabel('n');
ylabel('x(n)');
title('Delay');

subplot(4,3,4);
stem (-n:-1,fliplr(y));
xlabel('n');
ylabel('x(n)');
title('Inverse');

k = input('Enter scaling constant:');
subplot(4,3,5);
stem (1:n,y*k);
xlabel('n');
ylabel('x(n)');
title('Scaling');

subplot(4,3,6);
y1 = [zeros(1,n+1), fliplr(y)];
y2 = [y, zeros(1,n+1)];
stem (-n:n,(y2 + y1)/2);
xlabel('n');
ylabel('x(n)');
title('Even');

subplot(4,3,7);
y1 = [zeros(1,n+1), fliplr(y)];
y2 = [y, zeros(1,n+1)];
y3 = [-((y1(n+2:n+n+1)-y2(n+2:n+n+1))/2) , (y2(1:n+1)-y1(1:n+1))/2];
stem (-n:n,y3);
xlabel('n');
ylabel('x(n)');
title('Odd');
