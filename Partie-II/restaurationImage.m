function [  ] = restaurationImage(  )
% Restauration de l'image
for valeur=1:20
    H=detH(valeur);
    [Pi,Pb]=detPiPb(valeur);
    W=((abs(H)).*(abs(H)))./(H.*(((abs(H)).*(abs(H)))+(Pb./Pi)));

    [im,map]=imread('photoTexte.png');
    IM=fftshift(fft2(im));
    IMideale=IM.*W;

    imideale=ifft2(fftshift(IMideale));

    figure(valeur)
    image(imideale)
    colormap(map)
end

end

