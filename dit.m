function y2=dit(x,N)
wn=exp(-1i*2*pi/N);
if(N==2)
    y(1)=x(1)+x(2);
    y(2)=x(1)-x(2);
else
   for k=1:N/2
    y_e(k)=x(2*k-1);
    y_o(k)=x(2*k);
   end
   ye=dit(y_e,N/2);
   yo=dit(y_o,N/2);
   for k=1:N/2
     y(k)=ye(k)+yo(k)*wn^(k-1);
     y(k+N/2)=ye(k)-yo(k)*wn^(k-1);
   end
end
y2=y;
end
