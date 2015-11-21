function [ H ] = detH( valeur )
% détermination de H
d = zeros(512);
[debL,finL,debC,finC,nb] = detrect(valeur);
for ligne=debL:finL
    for colonne=debC:finC
        d(ligne,colonne)=1/nb;
    end
end
    
i = zeros(512);
i(256,256) = 1;

H=fftshift(fft2(d))./fftshift(fft2(i));

end

