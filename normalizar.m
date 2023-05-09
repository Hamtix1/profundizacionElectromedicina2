function [resultado] = normalizar(x)
    resultado=(x-min(x))/max(x-min(x));
end

