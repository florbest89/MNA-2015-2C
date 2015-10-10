function [Q,R]=QRFactorization(A, n)
    
    Q = A;
    
    %Recorro mi matriz por columnas
    for j = 1 : n
        for i = 1 : j-1
            Q(:,j) = Q(:,j) - internProduct(Q(:,j), Q(:,i)) * normalize(Q(:,i));
        end
        Q(:,j) = Q(:,j) / norm(Q(:,j));
    end
    
    R = transpose(Q)*A;
end

function out = normalize(v)
    norm2 = norm(v)^2;
    out = v / norm2;
end

function out = internProduct(u, v)
    out = transpose(u) * v;
end