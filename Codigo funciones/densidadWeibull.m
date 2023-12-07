function y = densidadWeibull(t,a,b)
    y = b.*a.^(-b).*t.^(b-1).*exp(-(t.*a.^(-1)).^b);
end