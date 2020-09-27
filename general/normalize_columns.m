function A_norm = normalize_columns(A)
% constructs a matrix whose columns are the normalized columns of A

A_norm = zeros(size(A));
n = size(A,2);
for i = 1:n
    A_norm(:,i) = A(:,i)/norm(A(:,i));
end

end