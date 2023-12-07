function y = MediaCoste(M,T,c1,c2M,c2T,a,b,s)
    sum1=0;
    sum2=0;
    
    for k=0:(M-1)
        sum1 = sum1 + (M-1-k).*Probabilidad(k,T,a,b,s);
        sum2 = sum2 + Probabilidad(k,T,a,b,s);
    end
    
    y = c1.*(M-1-sum1)+c2M+(c2T-c2M).*sum2;
end
    