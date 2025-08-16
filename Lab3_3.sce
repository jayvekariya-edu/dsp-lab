n = 0:4;

//Original Signal
x = [1,2,3,4,5];
subplot(3,2,1)
plot2d3(n,x)
xtitle("Original Signal","n","Amplitude");
a =gca();
a.data_bounds = [-5,0;8,5];


//Flipped Signal
n1 = -n;
subplot(3,2,3)
plot2d3(n1,x)
xtitle("Flipped Signal","n","Amplitude");
a =gca();
a.data_bounds = [-5,0;8,5];



t = 0:0.01:2;

//Continuos Signal
s = sin(2*%pi*t);
subplot(3,2,2)
plot(t,s);
xtitle("Continuos Signal","t","Amplitude");
a =gca();
a.data_bounds = [-3,-2;5,2];


//Flipped Signal
t1 = -t;
s1 = sin(2*%pi*t);
subplot(3,2,4)
plot(t1,s1);
xtitle("Flipped Signal","t","Amplitude");
a =gca();
a.data_bounds = [-3,-2;5,2];
