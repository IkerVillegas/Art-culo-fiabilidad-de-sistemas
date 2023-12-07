function  y = QT(T,c1,c2T,a,b,s)
    y = (c1.*mediaWeibull(a,b).*lambda2(T,s)+c2T)/T;
end