function [sign, out] = Adjunt(matrix,col)
    
    %Asigno matrix a la salida
    out = matrix;
    
    %Calculo el signo
    sign = (-1)^(1 + col);
    
    %Menor Complementario
    
    %Remuevo la primer fila
    out(1,:) = [];
    
    %Remuevo la columna col
    out(:,col) = [];
    
end