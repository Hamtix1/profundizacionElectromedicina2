function [f,data] = fourier(x,fs)
    L = length(x);
    ts = 1/fs;
    potencia = nextpow2(L);
    k = 2^potencia;
    data = abs(ts*fftshift(fft(x,k)));
    resolucion = 2*pi*fs/k;
    resolucion = resolucion/(2*pi);
    m = -round(k/2):round(k/2)-1;
    f = resolucion*m;
end


