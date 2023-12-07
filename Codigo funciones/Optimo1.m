function y=Optimo1(c1,c2M,c2T,a,b,s)
format long;
T = optimvar('T',1,'LowerBound',0,'Type','continuous');
type funcionCoste;
tiempo=1:70;
coste = 1:70;

for M=1:70
    fun = fcn2optimexpr(@funcionCoste,M,T,c1,c2M,c2T,a,b,s);
    prob = optimproblem('Objective', fun);
    x0.T = 0;
    [sol,fval]=solve(prob,x0);
    tiempo(M)=sol.T;
    coste(M)=fval;
    M
    if(M>1)&&(coste(M)>coste(M-1))
        D = sprintf('Para M = %d, T = %d, P(SM<T)= %d, Media del ciclo = %d, coste = %d \n',M-1,tiempo(M-1),funcionProbSM(M-1,tiempo(M-1),a,b,s),MediaCiclo(M-1,tiempo(M-1),a,b,s),coste(M-1));
        [r,j]=OptimoT(c1,c2T,a,b,s);
        [p,q]=OptimoM(c1,c2M,a,b,s);
        F = sprintf('Ademas el coste óptimo de las políticas univariantes será: \n');
        G = sprintf('T*=%d, Q(T*)=%d, M*=%d, Q(M*)=%d \n',r,j,p,q);
        H = sprintf('E[T*]=%d, Probabilidad(SM*<T*)=%d \n',r,funcionProbSM(p,r,a,b,j));
        fprintf(D)
        fprintf(F)
        fprintf(G)
        fprintf(H)
        funcionProbSM(p,r,a,b,j)
        %MediaTiempoFallo(M-1,b,lamb)
        %ProbSn(p,r,b,lamb)
        %I=sprintf('E[SM]=%d',double(MediaTiempoFallo(M-1,b,lamb)));
        %fprintf(I)
        

        
        break
       
    elseif M==70
        I = sprinrf('Se ha llegado al tope de iteraciones');
        fprintf(I)
        D = sprintf('Para M = %d, T = %d, P(SM<T)= %d, Media del ciclo = %d, coste = %d \n',M,tiempo(M),funcionProbSM(M,tiempo(M),a,b,s),MediaCiclo(M,tiempo(M),a,b,s),coste(M));
        fprintf(D)
        F = sprintf('Ademas el coste óptimo de las políticas univariantes será: \n');
        [r,s]=OptimoT(c1,b,lamb);
        [p,q]=OptimoM(c1,c2M,b,lamb);
        G = sprintf('T*=%d, Q(T*)=%d','M*=%d','Q(M*)=%d',r,s,p,q);
        fprintf(F)
        fprintf(G)
    end
        
end



    