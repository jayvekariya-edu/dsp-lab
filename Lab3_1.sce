

n = 0:4;

//Original Signal
x = [1,2,3,4,5];
subplot(3,2,1)
plot2d3(n,x)
xtitle("Original Signal","n","Amplitude");
a =gca();
a.data_bounds = [-4,0;8,5];

//Delayed Signal
n1 = n+2;
subplot(3,2,3)
plot2d3(n1,x)
xtitle("Delayed Signal","n","Amplitude");
a =gca();
a.data_bounds = [-4,0;8,5];

//Advanced Signal
n2 = n-2;
subplot(3,2,5)
plot2d3(n2,x)
xtitle("Advanced Signal","n","Amplitude");
a =gca();
a.data_bounds = [-4,0;8,5];

//Continuos Signal
t = 0:0.01:2;

s = sin(2*%pi*t);
subplot(3,2,2)
plot(t,s);
xtitle("Continuos Signal","t","Amplitude");
a =gca();
a.data_bounds = [-3,-2;5,2];

//Delayed Signal
t1 = t+2;
s1 = sin(2*%pi*t1);
subplot(3,2,4)
plot(t1,s1);
xtitle("Delayed Signal","t","Amplitude");
a =gca();
a.data_bounds = [-3,-2;5,2];

//Advanced Signal
t2 = t-2;
s2 = sin(2*%pi*t2);
subplot(3,2,6)
plot(t2,s2);
xtitle("Advanced Signal","t","Amplitude");
a =gca();
a.data_bounds = [-3,-2;5,2];




