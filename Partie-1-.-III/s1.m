function [  ] = s1( fonction )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
a=-5;
b=5;
N=32768;
Te=(b-a)/N;
fe=N/(b-a);

if fonction==1
    f1=1000;
    f2=1500;
    fDemod=f1;
elseif fonction==2
    f1=5000;
    f2=7500;
    fDemod=f2;
end

t=zeros(1,N);
s1=zeros(1,N);
s2=zeros(1,N);
c=zeros(1,N);
d=zeros(1,N);
for e=1:1:N
    t(e)=(e-1)*Te+a;
    f(e)=(e-1)*fe/N-fe/2;
    for n=1:5
        s1(e)=s1(e)+n*cos(2*pi*20*n*t(e));
        s2(e)=s2(e)+(6-n)*cos(2*pi*20*n*t(e));
    end
    c(e)=s1(e)*cos(2*pi*f1*t(e))+s2(e)*cos(2*pi*f2*t(e));
    d(e)=c(e)*cos(2*pi*fDemod*t(e));
end


figure(1)
subplot(2,2,1), plot(t,s1), title('s1')
subplot(2,2,2), plot(t,s2), title('s2')
subplot(2,2,3), plot(f,tfour(s1)), title('TF de s1')
subplot(2,2,4), plot(f,tfour(s2)), title('TF de s2')


figure(2)
subplot(2,2,1), plot(t,c), title('c')
subplot(2,2,3), plot(f,tfour(c)), title('TF de c')
subplot(2,2,2), plot(t,d), title('d')
subplot(2,2,4), plot(f,tfour(d)), title('TF de d')


figure(3)
if fonction==1
    subplot(2,2,1), plot(t,s1), title('s1')
    subplot(2,2,3), plot(f,tfour(s1)), title('TF de s1')
elseif fonction==2
    subplot(2,2,1), plot(t,s2), title('s2')
    subplot(2,2,3), plot(f,tfour(s2)), title('TF de s2')
end

Fwd=tfour(d);
for e=1:1:N
    if e<N/2-1500
        Fwd(e)=0;
    elseif e>N/2+1500
        Fwd(e)=0;
    else
        Fwd(e)=2*Fwd(e);
    end
end
d=tfourinv(Fwd);

subplot(2,2,2), plot(t,d), title('d filtré')
subplot(2,2,4), plot(f,tfour(d)), title('TF de d filtré')

end

