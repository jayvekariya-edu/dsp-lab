x = [0,1,2,3,4]
h = [1,2];

l_x = length(x);
l_h = length(h);
l_y = l_x+l_h-1

x_range = 0:1:4 //Range Of x
h_range = 0:1:1 //Range Of h
y_range = min(x_range)+min(h_range):max(x_range)+max(h_range) //Range Of y

y = zeros(1,l_y)

subplot(2,2,1);
plot2d3(x_range,x);
xtitle("x (Input Signal)","n","Amplitude")
a = gca()
a.data_bounds = [-1,0;6,11]

subplot(2,2,2);
plot2d3(h_range,h);
xtitle("h (Impulse Responce)","n","Amplitude")
a = gca()
a.data_bounds = [-1,0;6,11]

//Using Built-in Function
yf = convol(x,h);

subplot(2,2,3);
plot2d3(y_range,yf);
xtitle("y (Output) Built-In function","n","Amplitude")
a = gca()
a.data_bounds = [-1,0;6,11]

//Using For Loop
for i=1:l_y
    for j=1:l_x
        if i-j+1>=1 & i-j+1<=l_h
            y(i) = y(i)+x(j)*h(i-j+1)
        end
    end
end

subplot(2,2,4);
plot2d3(y_range,y);
xtitle("y (Output) For Loop","n","Amplitude")
a = gca()
a.data_bounds = [-1,0;6,11]



