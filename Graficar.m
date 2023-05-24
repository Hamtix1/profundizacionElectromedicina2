function [] = Graficar(I,Io,titulo)

mosaico = imtile({I, Io},'GridSize',[1 2]);
figure
imshow(mosaico);
title(titulo);

end
