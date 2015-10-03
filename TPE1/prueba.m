function [] = prueba(n)   

    %Genero la matriz del problema
    matrix = GenerateMatrix(n);
       
    fprintf('<< Executing with n = %d >>\n', n);
    
    %Agregar lamba a la matriz
    
    %Ejecuto el algoritmo de Laplace
    result = Laplace(matrix, n);
    
    %Resuelvo el polinimio    
    %lambdaValues = solve(result);
    
    %Verificación de Determinante
    realDet = det(matrix);
    fprintf('Real Det >> %d \n', realDet);
    fprintf('Our Det >> %d \n', result);
    
end