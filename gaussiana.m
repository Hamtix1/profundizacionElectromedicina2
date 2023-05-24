function y = gaussiana(vector_evalua, media, desviacion_estandar)
    y = exp(-(vector_evalua - media).^2 / (2 * desviacion_estandar^2)) / (sqrt(2 * pi) * desviacion_estandar);
end