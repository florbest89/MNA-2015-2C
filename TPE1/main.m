function out = main(n)

    %Genero la matriz del problema
    matrix = GenerateMatrix(n);
    
    tic;
    
    eig1 = eigenValues(matrix);
    
    time = toc;
    eigReal = eig(matrix);
    
    disp('Our Values');
    disp(sort(eig1));
    
    disp('Real Values')
    disp(sort(eigReal));
    
    disp(time);
    
end