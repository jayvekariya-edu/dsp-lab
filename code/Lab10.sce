//DFT

xn = [1,2,3,4]
n = 0:3
x_l = length(n)
k = 0:3
N = length(k)

Xk = zeros(1,N)

disp("Signal");disp(xn)

for i=1:N
    for j=1:x_l
        Xk(i) = Xk(i) + xn(j)*%e^((-%i*2*%pi*k(i)*n(j))/N)
    end
end

//DFT using fft fun
Xkib = fft(xn,-1)

disp("DFT");disp(Xk)
disp("Magnitude of DFT");disp(abs(Xk))

subplot(2,1,1)
plot2d3(n,xn)
xtitle("Signal","n","Amplitude")
a=gca()
a.data_bounds = [-1,0;5,5]

subplot(2,1,2)
plot2d3(n,Xk)
xtitle("DFT","k","Amplitude")
a=gca()
a.data_bounds = [-1,-3;5,12]

show_window(1)

subplot(2,1,1)
plot2d3(k,abs(Xk))
xtitle("Magnitude","k","Amplitude")
a=gca()
a.data_bounds = [-1,0;5,12]

phase_Xk = zeros(1,N)
for i=1:N
    phase_Xk(i) = atan(imag(Xk(i))/real(Xk(i)))
end
    

disp("Phase of DFT");disp(phase_Xk)
subplot(2,1,2)
plot2d3(k,phase_Xk)
xtitle("Phase","k","Amplitude")
a=gca()
a.data_bounds = [-1,-3;5,3]


//IDFT
xno = zeros(1,N)

for i=1:N
    for j=1:x_l
        xno(i) = xno(i) + Xk(j)*%e^((%i*2*%pi*k(i)*n(j))/N)
    end
    xno(i) = xno(i)/N
end

disp("After IDFT");disp(xno)
disp(real(xno))

show_window(2)
subplot(2,1,1)
plot2d3(n,real(xno))
xtitle("Signal after IDFT","n","Amplitude")
a=gca()
a.data_bounds = [-1,0;5,5]
