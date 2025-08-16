

n = 0:4;

//Original Signal
x = [1,2,3,4,5];
subplot(3,2,1)
plot2d3(n,x)
xtitle("Original Signal","n","Amplitude");
a =gca();
a.data_bounds = [-4,0;8,5];

//Expanded Signal
n1 = n*2;
subplot(3,2,3)
plot2d3(n1,x)
xtitle("Expanded  Signal","n","Amplitude");
a =gca();
a.data_bounds = [-4,0;8,5];

//Compressed Signal
n2 = n/2;
subplot(3,2,5)
plot2d3(n2,x)
xtitle("Compressed Signal","n","Amplitude");
a =gca();
a.data_bounds = [-4,0;8,5];

//Continuos Signal
t = 0:0.01:2;

s = sin(2*%pi*t);
subplot(3,2,2)
plot(t,s);
xtitle("Continuos Signal","t","Amplitude");
a =gca();
a.data_bounds = [-4,-2;8,2];

//Expanded Signal
t1 = t/2;
s1 = sin(2*%pi*t1);
subplot(3,2,4)
plot(2*t,s1);
xtitle("Expanded Signal","t","Amplitude");
a =gca();
a.data_bounds = [-4,-2;8,2];

//Compressed Signal
t2 = t*2;
s2 = sin(2*%pi*t2);
subplot(3,2,6)
plot(t,s2);
xtitle("Compressed Signal","t","Amplitude");
a =gca();
a.data_bounds = [-4,-2;8,2];




