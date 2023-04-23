%compare orders
t=[1 10 50 100 150]; S=[88 90 130 120 110];
T=linspace(1,150,100);
first=polyfit(t,S,1);
yfirst=polyval(first,t);
subplot(2,2,1)
plot(t,S,'ro',t,yfirst,'b')
sec=polyfit(t,S,2);
ysec=polyval(sec,T);
subplot(2,2,2)
plot(t,S,'ro',T,ysec,'b')
thrd=polyfit(t,S,3);
ythrd=polyval(thrd,T);
subplot(2,2,3)
plot(t,S,'ro',T,ythrd,'b')
four=polyfit(t,S,4);
yfour=polyval(four,T);
subplot(2,2,4)
plot(t,S,'ro',T,yfour,'b')