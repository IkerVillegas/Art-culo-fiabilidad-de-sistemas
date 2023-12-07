function y = Probabilidad2(n,t,a,b,s)
    syms z;
    v=lambda2(t,s).^n.*b.*a.^(-b)/factorial(n);
    l = n+b-1;
    d=-a.^(-b);
    u=a.^b.*lambda2(t,s);
    f = z.^l.*exp(d.*(u.*z+z.^b));
    y = v.*int(f,z,0,Inf);
end