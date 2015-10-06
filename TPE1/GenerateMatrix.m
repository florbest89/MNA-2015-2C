function out = GenerateMatrix(n)

    matrix = zeros(n);
    
    for i = 1 : n
        for j = 1 : n
            
           if(j == i - 1)
                matrix(i,j) = -1;
           end
           
           if(j == i || j == i+1 || j == i+2 || j == i+3)
                matrix(i,j) = 1;
           end
            
        end
    end
    
    out = matrix;

end