function orthogonal = is_orthogonal(A)
% checks orthogonality of the columns in a matrix A

orthogonal = true;

n = size(A,2);
for i = 1:n-1
    for j = i+1:n
        if dot(A(:,i), A(:,j)) >= 1e-6
            orthogonal = false;
            break
        end
    end
end

end
