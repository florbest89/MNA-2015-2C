function out = main(n)
    %Genero la matriz del problema
    matrix = GenerateMatrix(n);
    
    tic;
    
    eig1 = eigenValues(matrix);
    
    time = toc;
    eigPOSTA = eig(matrix);
    
    disp('NUESTRO');
    disp(eig1);
    
    disp('POSTA')
    disp(eigPOSTA);
    
    disp(time);
    
end