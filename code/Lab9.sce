//Signal-1
x1_range = 0:0.1:1
x1_len = length(x1_range)
x1 = zeros(1,x1_len);
x1(x1_range<=0.9 & x1_range>=0.3 ) = 1 
//disp(x1)

subplot(2,1,1)
plot2d3(x1_range,x1)
xtitle("Pulse Signal","n","Amplitude")
legend("Signal")

w = -3*%pi:0.01:3*%pi

len_X1 = length(w)
X1 = zeros(1,len_X1);

for j=1:len_X1
    for i=1:x1_len
        X1(j)=X1(j)+ x1(i)*%e^(-%i*w(j)*i)
    end 
end


subplot(2,1,2)
plot(w,abs(X1))
xtitle("DTFT of pulse signal","w","Amplitude")
legend("DTFT")
//disp(X1)
    
show_window(1) 

//Signal-2
a=0.5
x2_range = 0:9
x2_len = length(x2_range)
x2 = (a)^(x2_range)
//disp(x2)

subplot(2,1,1)
plot2d3(x2_range,x2)
xtitle("Signal a^n*u(n)","n","Amplitude")
legend("Signal a^n*u(n)")

len_X2 = length(w)
X2 = zeros(1,len_X2);

for j=1:len_X2
    for i=1:x2_len
    X2(j)=X2(j)+ x2(i)*%e^(-%i*w(j)*i)
    end 
end

subplot(2,1,2)
plot(w,abs(X2))
xtitle("DTFT of signal","w","Amplitude")
legend("DTFT")

