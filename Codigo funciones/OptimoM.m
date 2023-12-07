function [r,s]= OptimoM(c1,c2M,a,b,s)
    w = 1:20;
    w(1) = QM(1,c1,c2M,a,b,s);
    
    for k=2:20
        w(k)= QM(k,c1,c2M,a,b,s);
        
        if(w(k-1)<w(k))&&(k>1)
            r=k-1;
            s=w(k-1);
            break;
        end
    end
end
            