x1 = -10:1:10;
y1 = [ zeros(1,10) 1 ones(1,10) ];
subplot(3,4,1);
stem (x1,y1);
xlabel('n');
ylabel('x(n)');
title('Unit Step Discrete Signal');

x2 = -10:1:10;
y2 = [ zeros(1,10) 1 zeros(1,10) ];
subplot(3,4,2);
stem (x2,y2);
xlabel('n');
ylabel('x(n)');
title('Unit Impulse Discrete Signal');

x3 = -10:1:10;
y3 = zeros(1,21);
for i =1:21
    if (x3(i)<0)
        y3(i) = 0;
    else (x3(i)>0)
        y3(i) = x3(i);
    end
end           

subplot(3,4,3);
stem (x3,y3);
xlabel('n');
ylabel('x(n)');
title('Ramp Discrete Signal');

x4 = -10:1:10;
y4 = zeros(1,21);
a=input('Enter value of a:');
for i =1:21
    if (x4(i)<0)
        y4(i) = 0;
    else (x4(i)>0)
        y4(i) = a.^x4(i);
    end
end           
subplot(3,4,4);
stem (x4,y4);
xlabel('n');
ylabel('x(n)');
title('Exponential Discrete Signal');

a = input('Enter A:');
w = input('Enter w:');
th = input('Enter phase shift:');
x5 = 1:0.1:10;
x5 = w*x5;
x5 = x5+th;
y5 = a*sin(x5);
subplot(3,4,5);
stem (x5,y5);
xlabel('n');
ylabel('x(n)');
title('Sinusoidal wave');

a = input('Enter A:');
w = input('Enter w:');
th = input('Enter phase shift:');
x5 = 1:0.1:10;
x5 = w*x5;
x5 = x5+th;
y5 = a*cos(x5);
subplot(3,4,6);
stem (x5,y5);
xlabel('n');
ylabel('x(n)');
title('Cosine wave');
