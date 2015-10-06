function [] = prueba(n)   

    tic;

    %Genero la matriz del problema
    matrix = GenerateMatrix(n);
    matrizprueba = GenerateMatrix(n);
    
    %Genero la matriz Lambda * I, siendo I la matriz identidad de nxn
    syms lambda;
    I = eye(n);
    
    LambdaIdentity = lambda * I;
           
    fprintf('<< Executing with n = %d >>\n', n);
    
    %Agregar lamba a la matriz (A - Lambda * I)
    matrix = matrix - LambdaIdentity; 
    
    %Ejecuto el algoritmo de Laplace
    result = Laplace(matrix, n);
    
    %Resuelvo el polinimio    
    eigenValues = vpasolve(result,lambda);
    
    time = toc;
    
    fprintf('The eigenvalues obtained are: \n');
    disp(eigenValues);
    
    fprintf('The eigenvalues obtained with matlab real function: \n2');
    postas = eig(matrizprueba);
    disp(postas);
    
    fprintf('<<Execution time to obtain eigen values of a %d x %d matrix is: %f seconds>>\n',n,n,time);
    
    %Verificación de Determinante
    realDet = det(matrix);
    
    %fprintf('Real Det >> %d \n', realDet);
    %fprintf('Our Det >> %d \n', result);
    
end