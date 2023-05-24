function [data] = fbutt(x,fc,fs,tipo,n)
    [b,a] = butter(n,fc/(fs/2),tipo);
    data = filtfilt(b,a,x);
end



