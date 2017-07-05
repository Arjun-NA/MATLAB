clc;
close all;
clear all;
rp=input('Enter the passband ripple :');
rs=input('Enter the stopband ripple :');
fp=input('Enter the passband frequency :');
fs=input('Enter the stopband frequency :');
f=input('Sampling frequency : ');
num=(-20*log10(sqrt(rp*rs))-13);
dem=(14.6*(fs-fp)/f);
wp=2*fp/f;
ws=2*fs/f;
n=ceil(num/dem);
n1=n+1;

if(rem(n,2)~=0)
    n=n-1;
else
    n=n;
end
n1
y=boxcar(n1);
subplot(3,3,9);
plot(y);
title(' FIR Rectangle window');
xlabel('Normalised frequency');
ylabel('Magnitude of kaiser window');

%LPF
b=fir1(n,wp,'low',y);
[h,o]=freqz(b,1,256);
m=20*log(abs(h));
an=angle(h);
subplot(3,3,2);
plot(o/pi,an);
grid on;
xlabel('normalised frequency ');
ylabel(' phase ');
grid;
subplot(3,3,1);
plot(o/pi,m);
title('magnitude plot');
xlabel(' frequency ');
ylabel(' magnitude ');
grid;
