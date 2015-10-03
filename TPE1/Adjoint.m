function out = Adjoint(matrix,i,j)
    
    sign = (-1)^(i+j);
    
    n = size(matrix,1);
    
    out = matrix(n-1,n-1);
    
    a = 1;
    b = 1;
    
    for row= 1 : n
        for col= 1 : n
            
            if(row == i)
                row = row + 1;
            end
            
            if(col == j)
                col = col + 1;
            end
            
            if(row < (n+1) && col < (n+1))
                out(a,b) = matrix(row,col);
                a = a + 1;
                b = b + 1;
            end            
            
        end
    end
    
    out = out * sign;
    
end