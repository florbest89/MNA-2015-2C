function out = eigenValues(matrix)

    n = size(matrix,1);
    
    out = []; 
    
    tic;
    loops = 0;
    error = 10 ^ (-6);
    
    A = matrix;
    
    while( n > 2)
        %[Q,R] = QRFactorization(A,n);
        %[Q,R] = householder(A);
         [Q,R] = householderQR(A);
        A = R * Q;
        
        %Single shift%
        a = A(n-1,n-1);
        b = A(n-1,n);
        c = A(n,n-1);
        d = A(n,n);
        
        %Double shift%
        f = A(n-2,n-2);
        i = A(n-1,n-2);
        
        if( abs(c) < error * ( abs(a) + abs(d) ))
            out = [out ;d];
            
            %A(n,:) = [];
            %A(:,n) = [];
            A = A(1:n-1,1:n-1);
            n = n - 1;
            
        elseif ( abs(i) < error * ( abs(f) + abs(a) ))
            aux = lambdas(a,b,c,d);
            out = [out ; aux];
            
            %A(n,:) = [];
            %A(:,n) = [];
            %A(n-1,:) = [];
            %A(:,n-1) = [];
            
            A = A(1:n-2,1:n-2);
            
            n = n - 2;
        end
    
        loops = loops + 1;
    end
    
    a = A(1,1);
    b = A(1,2);
    c = A(2,1);
    d = A(2,2);
    
    aux = lambdas(a,b,c,d);
    out = [out ; aux];
    
end
    
function values = lambdas(a,b,c,d)
    
    x1 = -a-d;
    x0 = (a*d) - (b*c);
    
    p = [1 x1 x0];
    values = roots(p);
end



 