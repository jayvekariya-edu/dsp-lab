x = [1,2,3];
h = [0.5,0.5];
l_x = length(x);
l_h = length(h);
l_y = l_x+l_h-1;

x_range = -1:1:1;
h_range = 0:1:1;

y = zeros(1,l_y);
y_range = min(x_range)+min(h_range):1:max(x_range)+max(h_range);

//Using In-build Function
yf = convol(h,x);
disp(yf);

for i=1:length(y)
    for j = 1:length(x)
        if i-j+1>=1 && i-j+1<=length(h)
        y(i)= y(i)+x(j)*h(i-j+1)
        end
    end
end

subplot(2,2,1)
plot2d3(x_range,x)
xtitle("Signal x (Input)","n","Amplitude");
a = gca();
a.data_bounds=[-2,0;5,5];
//show_window(1);


subplot(2,2,2)
plot2d3(h_range,h)
xtitle("Signal h (Impulse Responce)","n","Amplitude");
a = gca();
a.data_bounds=[-2,0;5,4];

subplot(2,2,3)
plot2d3(y_range,y)
xtitle("Signal y (Output)","n","Amplitude");
a = gca();
a.data_bounds=[-2,0;5,5];


subplot(2,2,3)
plot2d3(y_range,y)
xtitle("Signal y (Output)","n","Amplitude");
a = gca();
a.data_bounds=[-2,0;5,5];

subplot(2,2,4)
plot2d3(y_range,yf)
xtitle("Signal y (Output)","n","Amplitude");
a = gca();
a.data_bounds=[-2,0;5,5];




