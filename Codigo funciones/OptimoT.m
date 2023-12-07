function [r,s] = OptimoT(c1,c2T,a,b,s)
    format long;
    T = optimvar('T',1,'LowerBound',0,'Type','continuous');
    type QT;
    fun = fcn2optimexpr(@QT,T,c1,c2T,a,b,s);
    prob = optimproblem('Objective', fun);
    x0.T = 0;
    [sol,fval]=solve(prob,x0);
    r=sol.T;
    s=fval;
end
    