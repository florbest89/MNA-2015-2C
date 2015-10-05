function out = GenerateMatrix(n)

    matrix = ones(n);
    
    for i = 1 : n
        for j = 1 : n
            
            if( j < i)
                matrix(i,j) = -1;
            end
            
        end
    end
    
    out = matrix;

end