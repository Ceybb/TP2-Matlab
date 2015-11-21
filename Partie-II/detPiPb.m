function [ Pi,Pb ] = detPiPb( valeur )
% Détermination de Pi et Pb
im=imread('photoRef.png');
IM=fftshift(fft2(im));
Pi=(abs(IM)).*(abs(IM));
H=detH(valeur);
IMfloue=IM.*H;
IMfloueBruitee=round(IM.*H);
F=IMfloue-IMfloueBruitee;
Pb=(abs(F)).*(abs(F));

end

