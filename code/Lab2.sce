//clc;
clear;



//Sine & Cosine Wave

n=0:1:40;
m = 0:0.1:5;
f = 0.05;

x = sin(2*%pi*f*n);
y = cos(2*%pi*f*n);
s = (sign(x)+1)/2;
ei = 2^m;
ed = 0.5^m;

//Impulse Function
n1 = -5:5;
x1 = zeros(1,length(n1));
x1(n1==0) =1;

//Unit Step Function
u = zeros(1,length(n1));
u(n1>=0) = 1;

//Unit Ramp Function
//r1 = 0:0.5:10
r = zeros(1,length(n1));
r(n1>=0) = n1(n1>=0) ;


subplot(4,2,1)
plot2d3(n,x)
xtitle("Descrete-Time Sine Wave","n","Amplitude");

subplot(4,2,2)
plot2d3(n,y)
xtitle("Descrete-Time Cosine Wave","n","Amplitude");

subplot(4,2,3)
plot2d3(n,s)
xtitle("Square Wave","n","Amplitude");


subplot(4,2,4)
plot2d3(m,ei)
xtitle("Exponential increasing","n","Amplitude");

subplot(4,2,5)
plot2d3(m,ed)
xtitle("Exponential decreasing","n","Amplitude");

subplot(4,2,6)
plot2d3(n1,x1)
xtitle("Impulse Function","n","Amplitude");

subplot(4,2,7)
plot2d3(n1,u)
xtitle("Unit Step Function","n","Amplitude");

subplot(4,2,8)
plot2d3(n1,r)
xtitle("Unit Ramp Function","n","Amplitude");


