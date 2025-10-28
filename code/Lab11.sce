//Circular Convolution 
x1 = [2,1,2,1];
x1_range= 0:3
l_x1 = length(x1); 
x2 = [1,2,3,4];
x2_range= 0:3
l_x2 = length(x2); 
N = l_x1; 
y = zeros(1,N); 
y_range = 0:N-1

subplot(2,1,1); 
plot2d3(x1_range,x1); 
xtitle("Signal x1","n","Amplitude")
a = gca(); 
a.data_bounds = [-1,0;5,4]; 

subplot(2,1,2); 
plot2d3(x2_range,x2); 
xtitle("Signal x2","n","Amplitude")
a = gca(); 
a.data_bounds = [-1,0;5,4]; 

show_window(1)

for i = 1:N
    for j = 1:N
            y(i) = y(i) + x1(j)*x2(pmodulo(i-j,N)+1); 
    end 
end 

disp(y); 
subplot(2,1,1); 
plot2d3(y_range,y); 
xtitle("Circular Convolution","n","Amplitude") 
a = gca(); 
a.data_bounds = [-1,0;5,18]; 
