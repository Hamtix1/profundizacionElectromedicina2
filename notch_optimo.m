function [estimada] = notch_optimo(senal,ruido,filas,columnas)
%****************Cambiar formato************************
senal=double(senal);
ruido=double(ruido);
%********Tamaño de los vecindarios*********************
[m,n]=size(senal);
vecindarioFilas=round(m/filas);
vecindarioColumnas=round(n/columnas);
disp("filas: "+m+" Columnas: "+n);

for i=1:vecindarioFilas:m
    for j=1:vecindarioColumnas:n        
        g=senal(i:i+vecindarioFilas-1,j:j+vecindarioColumnas-1);
        noise=ruido(i:i+vecindarioFilas-1,j:j+vecindarioColumnas-1);
        g_prom = mean(g,"all");
        n_prom = mean(noise,"all");
        gn_prom = mean(g.*noise,"all");
        n2_prom = mean(noise.^2,"all");
        w = (gn_prom - g_prom.*n_prom)./(n2_prom - n_prom.^2);
        disp("Factor = "+w);
        estimada(i:i+vecindarioFilas-1,j:j+vecindarioColumnas-1) = g - w.*noise;
    end
end
end
