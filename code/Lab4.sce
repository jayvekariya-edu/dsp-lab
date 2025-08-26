dt = 0.001;

t = 0:dt:1

N = length(t)
f_axis = (0:N-1)*(1/(N*dt));

//Sine Wave (10 Hz)
f1 = 10;
s = 3*sin(2*%pi*f1*t);

subplot(2,1,1)
plot(t,s)
xtitle("Sine Wave (10 Hz)","t","Amplitude");

//Frequency Representation
S = fft(s,-1);
S_mag = abs(S)/(N/2);

subplot(2,1,2)
plot(f_axis(1:N/2),S_mag(1:N/2))
xtitle("Frequency Representation","f","Amplitude");
figure();

//Cosine Wave (50 Hz)
f2 = 50
c = cos(2*%pi*f2*t);


subplot(2,1,1)
plot(t,c)
xtitle("Cosine Wave (50 Hz)","t","Amplitude");

//Frequency Representation
C = fft(c,-1);
C_mag = abs(C)/(N/2);

subplot(2,1,2)
plot(f_axis(1:N/2),C_mag(1:N/2))
xtitle("Frequency Representation","f","Amplitude");
figure();

//Sum of Two Sine Waves (5 Hz & 30Hz)
f3 = 5
f4 = 30
a = sin(2*%pi*f3*t)+4*sin(2*%pi*f4*t);

subplot(2,1,1)
plot(t,a)
xtitle("Sum of Two Sine Wave","t","Amplitude");

//Frequency Representation
A = fft(a,-1);
A_mag = abs(A)/(N/2);

subplot(2,1,2)
plot(f_axis(1:N/2),A_mag(1:N/2))
xtitle("Frequency Representation","f","Amplitude");
figure();


//Rectangular Wave
t1 = 0.25
t2 = 0.50
r = zeros(1,length(t));
r(t>t1 & t<t2) = 1;

subplot(2,1,1)
plot(t,r)
xtitle("Rectangular Wave","t","Amplitude");

//Frequency Representation
R = fft(r,-1);
R_mag = abs(R)/(N/2);

subplot(2,1,2)
plot(f_axis(1:N/2),R_mag(1:N/2))
xtitle("Frequency Representation","f","Amplitude");
figure();


//Gaussian Pulse
g = exp(-100*(t-0.5)*2)

subplot(2,1,1)
plot(t,g)
xtitle("Gaussian Pulse","t","Amplitude");


//Frequency Representation
G = fft(g,-1);
G_mag = abs(G)/(N/2);

subplot(2,1,2)
plot(f_axis(1:N/2),G_mag(1:N/2))
xtitle("Frequency Representation","f","Amplitude");
figure();

//Exponential Damped
ed = exp(-10*t).*sin(2*%pi*f1*t)

subplot(2,1,1)
plot(t,ed)
xtitle("Exponential Damped","t","Amplitude");


//Frequency Representation
E = fft(ed,-1);
E_mag = abs(E)/(N/2);

subplot(2,1,2)
plot(f_axis(1:N/2),E_mag(1:N/2))
xtitle("Frequency Representation","f","Amplitude");
