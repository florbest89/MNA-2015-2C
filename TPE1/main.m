function out = main(n)
    %Genero la matriz del problema
    matrix = GenerateMatrix(n);
    
    tic;
    
    eig1 = eigenValues(matrix);
    
    time = toc;
    eigPOSTA = eig(matrix);
    
    disp('NUESTRO');
    disp(sort(eig1));
    
    disp('POSTA')
    disp(sort(eigPOSTA));
    
    disp(time);
    
end