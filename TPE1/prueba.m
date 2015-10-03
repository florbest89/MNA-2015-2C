function [] = prueba()
    matrix = [1 2 3 4 ;  5 6 7 8];
    disp(matrix)
    
    %Para saber la cantidad de columnas de una matriz: size(A,2)
    %Para saber la cantidad de filas de una matriz: size(A,1)
    fprintf('Cantidad de filas: %d Cantidad de columnas:  %d \n',size(matrix,1),size(matrix,2));
    
    GenerateMatrix(4);
    
end