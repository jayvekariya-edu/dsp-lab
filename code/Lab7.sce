//n = 0:10;
//disp(n)
//subplot(2,1,1);
//plot(-n+10,n+10)
//plot(-n,n)
//plot(n,n)
//plot(n-10,n+10)
//a = gca();
//a.data_bounds = [-30,-30;30,30]

//Original Signal
x = [2,-1,3,4,1];
l_x= length(x);
x_range = -2:1:2;

subplot(2,2,1);
plot2d3(x_range,x);
xtitle("Original Signal","n","Amplitude");
a = gca();
a.data_bounds = [-3,-2;3,5]

//Fliped Signal
x_fliped = zeros(1,l_x);
x_f_range = -max(x_range):1:-min(x_range);

for i=1:l_x
    x_fliped(i)=x(l_x+1-i)
end

subplot(2,2,2);
plot2d3(x_f_range,x_fliped);
xtitle("Flipped Signal","n","Amplitude");
a = gca();
a.data_bounds = [-3,-2;3,5]

//Auto correlation using convolution
//-----------Rxy------------
Rxx = convol(x,x_fliped);
rxx_range = min(x_range)+min(x_f_range):1:max(x_range)+max(x_f_range);
l_rxx = length(rxx_range);

//Rxx(n)
subplot(2,2,3);
plot2d3(rxx_range,Rxx);
xtitle("Autocorrelation Signal(Rxx)","n","Amplitude");
a = gca();
a.data_bounds = [-5,0;5,33]

//Rxx(-n)
subplot(2,2,4);
plot2d3(-rxx_range,Rxx);
xtitle("Autocorrelation Signal(-Rxx)","n","Amplitude");
a = gca();
a.data_bounds = [-5,0;5,33]

disp(Rxx);





























