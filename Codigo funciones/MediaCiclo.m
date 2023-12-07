function y = MediaCiclo(M,T,a,b,s)
    sum = 0;
    for k = 0:(M-1)
        sum = sum + integral2(@(z,t) ((z.*lambda2(t,s)).^k/factorial(k).*exp(-z.*lambda2(t,s)).*densidadWeibull(z,a,b)),0,Inf, 0,T);
    end
    y = sum;
end
        