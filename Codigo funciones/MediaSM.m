function y = MediaSM(M,a,b,s)
    sum1=0;
    
    for k=0:(M-1)
        sum1 = sum1 + integral2(@(z,t)(z.*lambda2(t,s)).^k/factorial(k).*exp(-z.*lambda2(t,s)).*densidadWeibull(z,a,b),0,Inf,0,Inf);  
    end
    
    y = sum1;
end