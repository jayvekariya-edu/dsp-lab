
x = [1,0,3,-1,2];
l_x=length(x)
x_range = 0:4;
disp(x)
disp(x_range)
z = poly(0,'z')

f_range = 0:20;
f=2^(f_range);
l_f = length(f);
//disp(f)

//subplot(2,1,1);
//plot2d3(x_range,x);
//xtitle("Signal","n","Amplitude");
//a=gca();
//a.data_bounds = [-2,-2;5,3]



X_z =0

for i=1:l_x
    //disp(X_z)
    X_z = X_z+(x(i)*z^(-x_range(i)));
end



F_z =0

for i=1:l_f
    F_z = F_z+(f(i)*z^(-f_range(i)));
end

disp(F_z);
disp(X_z);


plzr(X_z);
show_window(1)
plzr(F_z);
