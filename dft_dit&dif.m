clear all;
close all;
clc;
x=input(' x  :');
N=legth(x);
subplot(3,2,1);
stem(x);
xlabel('x[n]');
ylabel(' N ');
title(' input sequence ');
y1=dif(x,N);
y2=dit(x,N);
%diplay
subplot(3,2,3);
stem(real(y2));
xlabel('real axis');
ylabel(' N ');
title('Dft using dit ');
subplot(3,2,4);
stem(imag(y2));
xlabel('imag axis');
ylabel(' N ');
title('Dft using dit ');
%bit reversal for DIF FFT
M=log2(N);
x1=y1;
for k=1:N
    m=dec2bin(k-1,M);
    n=fliplr(m);
    g=bin2dec(n)+1;
    if(g~=k)
        x(k)=y(g);
        x(g)=x(k);
    end
end
y1=x1;
%diplay DIF
subplot(3,2,4);
stem(real(y1));
xlabel('real axis');
ylabel(' N ');
title('Dft using dif ');
subplot(3,2,6);
stem(imag(y1));
xlabel('imag axis');
ylabel(' N ');
title('Dft using dif ');


