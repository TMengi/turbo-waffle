function [w, lambda] = find_eigenvector(A, max_i)
% finds the eigenvector associated with the largest modulus eigenvalue of
% square matrix A by power iteration

if nargin < 2
    max_i = 1e6;
end

% start with the first standard basis vector
n = size(A,1);
w = zeros(n,1);
w(1) = 1;

% power iteration for convergence
delta = 1;
i = 0;
while delta >= 1e-12 && i < max_i
    w_last = w;
    w = A*w/norm(A*w);
    delta = norm(w - w_last);
    i = i + 1;
end

if i >= max_i
    throw(MException('Algorithm:NoConvergence', 'Power iteration did not converge to an eigenvector'));
end

lambda = mean(A*w./w);

end