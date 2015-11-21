function [  ] = x( numFonction )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
a=-5;
b=5;
N=32768;
Te=(b-a)/N;
fe=N/(b-a);

C=2;
nbPeriodes=5.3;
f0=nbPeriodes/(b-a);
Beta=4;
tho=3;
debut=-2;
T=4;

t=zeros(1,N);
f=zeros(1,N);
vf=zeros(1,N);
for n=1:1:N
    t(n)=(n-1)*Te+a;
    f(n)=(n-1)*fe/N-fe/2;
    switch numFonction
        case 0
            vf(n)=C;
        case 1
            vf(n)=cos(2*pi*f0*t(n));
        case 2
            vf(n)=sin(2*pi*f0*t(n));
        case 3
            vf(n)=exp(-Beta*t(n))*heaviside(t(n));
        case 5
            vf(n)=exp(1i*2*pi*f0*t(n));
        case 6
            if (t(n)>=debut && t(n)<=debut+tho)
                vf(n)=1;
            end
        case 66
            if (mod(t(n)+1,T)>=0 && mod(t(n)+1,T)<=T/2)
                vf(n)=1;
            end
        case 7
            vf(n)=exp(-pi*t(n)^2);
    end
end
if numFonction==4
    vf(25000)=10^50;
end

Fw=tfour(vf);

figure(1)
if (numFonction==5)
    subplot(2,3,1), plot3(t,real(vf),imag(vf)), title('fonction initiale')
else
    subplot(2,3,1), plot(t,vf), title('fonction initiale')
end
subplot(2,3,4), plot3(f,real(Fw),imag(Fw)), title('représentation 3D de la TF')
subplot(2,3,2), plot(f,real(Fw)), title('partie réelle de la TF')
subplot(2,3,5), plot(f,imag(Fw)), title('partie imaginaire de la TF')
subplot(2,3,3), plot(f,abs(Fw)), title('module de la TF')
subplot(2,3,6), plot(f,angle(Fw)), title('argument de la TF')

figure(2)
plot(t,tfourinv(Fw)), title('récupération de la fonction initiale')

end

