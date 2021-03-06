function y1=dif(x,N)
wn=exp(-1i*2*pi/N);
if(N==2)
    y1(1)=x(1)+x(2);
    y1(2)=x(1)-x(2);
else
    x1(1:N/2)=x(1:N/2);
    x2(1:N/2)=x(N/2+1:N);
    for k=1:N/2
      y1(k)=x1(k)+x2(k);
      y2(k)=(x1(k)-x2(k))*wn^(k-1);
    end
y_1=dif(y1,N/2);
y_2=dif(y2,N/2);
y1=[y_1,y_2];
end
end
