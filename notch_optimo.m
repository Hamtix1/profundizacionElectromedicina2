function [estimada] = notch_optimo(senal,ruido)
    g_prom = mean(senal,"all");
    n_prom = mean(ruido,"all");
    gn_prom = mean(senal.*ruido,"all");
    n2_prom = mean(ruido.^2,"all");
    w = (gn_prom - g_prom.*n_prom)./(n2_prom - n_prom.^2);
    disp("Factor = "+w);
    estimada = senal - w.*ruido;
end

