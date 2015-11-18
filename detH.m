function [  ] = detH(  )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
d = zeros(512);
for ligne=254:258
    for colonne=253:259
        d(ligne,colonne)=1/35;
    end
end

i = zeros(512);
i(256,256) = 1;

H=fftshift(fft2(d))./fftshift(fft2(i));
h=ifft2(fftshift(H));


% % %test
% [imInit,mapInit]=imread('photoRef.png');
% figure(1)
% image(imInit)
% colormap(mapInit)
% 
% IMInit=fftshift(fft2(imInit));
% IMfloue=IMInit.*H;
% 
% imfloue=ifft2(fftshift(IMfloue));
% 
% figure(2)
% image(imfloue)
% colormap(mapInit)

end
