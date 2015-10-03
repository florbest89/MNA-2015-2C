function determinant = Laplace(matrix, n)
    
    determinant = 0;
    
    %CASO BASE - Matriz de orden 2
    if (n == 2)
        determinant = det(matrix);
        return;
    end
    
    %PASO RECURSIVO - Calculo el adjunto y ejecuto laplace. 
    %Se ejecuta por profundidad. Se acumula el determinante resultado de
    %toda la rama de matrices que corresponden a cada columna. Luego avanza
    %el loop y se prosigue con la siguiente. 
    for col = 1 : n
        
        firstElement = matrix(1,col);
        [sign, tempAdjunt] = Adjunt(matrix, col);
            
        %Ejecuto Laplace con el adjunto de orden n-1 
        determinant = determinant + firstElement * (sign * Laplace(tempAdjunt, n-1));
    end
    
end