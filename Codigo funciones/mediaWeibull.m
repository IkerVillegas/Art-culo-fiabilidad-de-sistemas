function y = mediaWeibull(a,b)
    y = a.*gamma(b.^(-1)+1);
end