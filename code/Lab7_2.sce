//Original Signal x
x = [1,2,1,1];
l_x= length(x);
x_range = 0:1:3;

subplot(2,2,1);
plot2d3(x_range,x);
xtitle("Signal ","n","Amplitude");
a = gca();
a.data_bounds = [-3,-2;5,5]

//Original Signal y
y = [1,2,3,4];
l_y= length(y);
y_range = 0:1:3;

subplot(2,2,2);
plot2d3(y_range,y);
xtitle("Original Signal","n","Amplitude");
a = gca();
a.data_bounds = [-5,-2;5,5]


//Fliped Signal x
x_fliped = zeros(1,l_x);
x_f_range = -max(x_range):1:-min(x_range);

for i=1:l_x
    x_fliped(i)=x(l_x+1-i)
end

subplot(2,2,3);
plot2d3(x_f_range,x_fliped);
xtitle("Flipped Signal x","n","Amplitude");
a = gca();
a.data_bounds = [-5,-2;5,5]


//Fliped Signal y
y_fliped = zeros(1,l_y);
y_f_range = -max(y_range):1:-min(y_range);

for i=1:l_y
    y_fliped(i)=y(l_y+1-i)
end

subplot(2,2,4);
plot2d3(y_f_range,y_fliped);
xtitle("Flipped Signal y","n","Amplitude");
a = gca();
a.data_bounds = [-5,-2;5,5]

show_window(1);
//Cross correlation using convolution
//-----------Rxy------------
Rxy = convol(x,y_fliped);
rxy_range = min(x_range)+min(y_f_range):1:max(x_range)+max(y_f_range);
l_rxy = length(rxy_range);

//Rxy(n)
subplot(2,2,1);
plot2d3(rxy_range,Rxy);
xtitle("Cross-correlation Signal(Rxy)","n","Amplitude");
a = gca();
a.data_bounds = [-5,0;5,13]

//Rxy(-n)
subplot(2,2,2);
plot2d3(-rxy_range,Rxy);
xtitle("Cross-correlation Signal(-Rxy)","n","Amplitude");
a = gca();
a.data_bounds = [-5,0;5,13]

disp(Rxy);

//-----------Ryx------------
Ryx = convol(y,x_fliped);
ryx_range = min(y_range)+min(x_f_range):1:max(y_range)+max(x_f_range);
l_ryx = length(ryx_range);

//Ryx(n)
subplot(2,2,3);
plot2d3(ryx_range,Ryx);
xtitle("Cross-correlation Signal(Ryx)","n","Amplitude");
a = gca();
a.data_bounds = [-5,0;5,13]

//Rxy(-n)
subplot(2,2,4);
plot2d3(-ryx_range,Ryx);
xtitle("Cross-correlation Signal(-Ryx)","n","Amplitude");
a = gca();
a.data_bounds = [-5,0;5,13]

disp(Ryx);
