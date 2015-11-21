function [ debL,finL,debC,finC,nb ] = detrect( valeur )
% Détermination du rectangle optimisé
switch (valeur)
    case 1
        debL = 256;
        finL = 256;
        debC = 255;
        finC = 257;
        nb = 3;
    case 2
        debL = 256;
        finL = 256;
        debC = 254;
        finC = 258;
        nb = 5;
    case 3
        debL = 256;
        finL = 256;
        debC = 253;
        finC = 259;
        nb = 7;
    case 4
        debL = 256;
        finL = 256;
        debC = 252;
        finC = 260;
        nb = 9;
    case 5
        debL = 255;
        finL = 257;
        debC = 256;
        finC = 256;
        nb = 3;
    case 6
        debL = 255;
        finL = 257;
        debC = 254;
        finC = 258;
        nb = 15;
    case 7
        debL = 255;
        finL = 257;
        debC = 253;
        finC = 259;
        nb = 21;
    case 8
        debL = 255;
        finL = 257;
        debC = 252;
        finC = 260;
        nb = 27;
    case 9
        debL = 254;
        finL = 258;
        debC = 256;
        finC = 256;
        nb = 5;
    case 10
        debL = 254;
        finL = 258;
        debC = 255;
        finC = 257;
        nb = 15;
    case 11
        debL = 254;
        finL = 258;
        debC = 253;
        finC = 259;
        nb = 35;
    case 12
        debL = 254;
        finL = 258;
        debC = 252;
        finC = 260;
        nb = 45;
    case 13
        debL = 253;
        finL = 259;
        debC = 256;
        finC = 256;
        nb = 7;
    case 14
        debL = 253;
        finL = 259;
        debC = 255;
        finC = 257;
        nb = 21;
    case 15
        debL = 253;
        finL = 259;
        debC = 254;
        finC = 258;
        nb = 35;
    case 16
        debL = 253;
        finL = 259;
        debC = 252;
        finC = 260;
        nb = 63;
    case 17
        debL = 252;
        finL = 260;
        debC = 256;
        finC = 256;
        nb = 9;
    case 18
        debL = 252;
        finL = 260;
        debC = 255;
        finC = 257;
        nb = 27;
    case 19
        debL = 252;
        finL = 260;
        debC = 254;
        finC = 258;
        nb = 45;
    case 20
        debL = 252;
        finL = 260;
        debC = 253;
        finC = 259;
        nb = 63;

end
