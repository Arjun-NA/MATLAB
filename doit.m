function b=doit(n,wp,'low',y);
b=firl(n,wp,'low',y);
[h,o]=freqz(b,1,256);
an=angle(h);
m=20*log10(abs(h));
plot(o/pi,m);
end
