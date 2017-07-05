clear all;
close all;
clc;
x=input('Enter x : ');
N=input('Enter N : ');
%display input
stem(x);
title('Input');
xlabel(' n ');
ylabel('x(n)');
y1=dif(x,N);
y2=dit(x,N);
%display y2
subplot(2,2,1);
stem(real(y2));
title('dft using dit');
ylabel('real axis');
xlabel('N');
subplot(2,2,2);
stem(imag(y2));
title('dft using dit');
ylabel('imaginary axis');
xlabel('N');
M=log2(N);
for k=1:N
    m=dec2bin(k-1,M);
    n=fliplr(m);
    g=bin2dec(n)+1;
    if(k~=g)
        x1(g)=y1(k);
        x1(k)=y1(g);
    end
end
y1=x1;
subplot(2,2,3);
stem(real(y1));
title('Dft using dif');
xlabel('N');
ylabel('real axix');
subplot(2,2,4);
stem(imag(y1));
ylabel('imag axis');
xlabel(' N ');
title('dft using dif');
