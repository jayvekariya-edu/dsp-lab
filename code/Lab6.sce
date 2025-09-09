A =10 // Amplitude
fm = 50 // Frequency of signal
k = 10  //Number of Cycles
t = 0:0.0001:k/fm;  //Time Axis
x = cos(2*%pi*fm*t); // Cos Wave
s = sin(2*%pi*fm*t); // Cos Wave

subplot(4,1,1);
plot(t,x);
xtitle("Cos Wave","t","Amplitude");
legend("Original Signal")
xgrid();
fn = 2*fm

// fs < fn
fs1 = (4/5)*fn
n1 = 0:1/fs1:k/fm;
xn1 = cos(2*%pi*fm*n1)
subplot(4,1,2);
plot(n1,xn1);
plot2d3(n1,xn1);
legend("Reconstructed Signal","Sampled Signal")
xgrid();
xtitle("Sampled Signal (fs<2fm)","n","Amplitude")


// fs = fn
fs2 = fn
n2 = 0:1/fs2:k/fm;
xn2 = cos(2*%pi*fm*n2)
subplot(4,1,3);
plot(n2,xn2);
plot2d3(n2,xn2);
legend("Reconstructed Signal","Sampled Signal")
xgrid();
xtitle("Sampled Signal (fs=2fm)","n","Amplitude")


// fs > fn
fs3 = 10*fn
n3 = 0:1/fs3:k/fm;
xn3 = cos(2*%pi*fm*n3);
subplot(4,1,4);
plot(n3,xn3);
plot2d3(n3,xn3);
legend("Reconstructed Signal","Sampled Signal")
xgrid();
xtitle("Sampled Signal (fs>2fm)","n","Amplitude")



