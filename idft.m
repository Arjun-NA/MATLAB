clear all;
close all;
clc;
x=input(' x  :');
N=length(x);
subplot(3,2,1);
stem(x);
ylabel('x[n]');
xlabel(' N ');
title(' input sequence ');
y1=idif(x,N);
y2=idit(x,N);
%diplay
y2=y2/N;
y1=y1/N
subplot(3,2,3);
stem(real(y2));
ylabel('real axis');
xlabel(' N ');
title('IDft using dit ');
subplot(3,2,4);
stem(imag(y2));
ylabel('imag axis');
xlabel(' N ');
title('IDft using dit ');
%bit reversal for DIF FFT
M=log2(N);
x1=y1;
for k=1:N
    m=dec2bin(k-1,M);
    n=fliplr(m);
    g=bin2dec(n)+1;
    if(g~=k)
        x1(k)=y1(g);
        x1(g)=y1(k);
    end
end
y1=x1;
%diplay DIF
subplot(3,2,5);
stem(real(y1));
ylabel('real axis');
xlabel(' N ');
title('IDft using dif ');
subplot(3,2,6);
stem(imag(y1));
ylabel('imag axis');
xlabel(' N ');
title('IDft using dif ');
y1
y2

