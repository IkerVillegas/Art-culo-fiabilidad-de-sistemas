function y = Probabilidad(n,t,a,b,s)
    f = @(z) ((z.*lambda2(t,s)).^n/factorial(n).*exp(-z.*lambda2(t,s)).*densidadWeibull(z,a,b));
    y = integral(f,0,Inf);
end