function y = OptimoLista(c1,c2M,c2T,a,b,s)
tiempo=1:20;
coste=1:20;
T = optimvar('T',1,'LowerBound',0,'Type','continuous');
type funcionCoste;

for k=1:20
    fun = fcn2optimexpr(@funcionCoste,k,T,c1,c2M,c2T,a,b,s);
    prob = optimproblem('Objective', fun);
    x0.T = 0;
    [sol,fval]=solve(prob,x0);
    tiempo(k)=sol.T;
    coste(k)=fval;
    k
end

for M =1:20
    A = sprintf('M = %d -------- Q = %d \n', M, coste(M));
    fprintf(A);
end

end