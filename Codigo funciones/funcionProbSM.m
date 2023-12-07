function y = funcionProbSM(M,T,a,b,s)
    f = @(z,x) z.^M.*lambda2(x,s).^(M-1)/factorial(M-1).*lambda(x,s).*exp(-z.*lambda2(x,s)).*densidadWeibull(z,a,b);
    y = integral2(f,0,Inf,0,T);
end