function H = hank(Y)
% hank(Y) is the Hankel matrix for the timeseries Y, which can be multiple
% input multiple output in the general case.
% 
% Y is assumed to have dimension (N, p, m), where N is the number of
% observations, p is the number of outputs, and m is the number of inputs

[N, p, m] = size(Y);

h_dim = floor((N-1+1)/2);
H = zeros(p*h_dim, m*h_dim);
for k = 1:h_dim
    H(:, m*(k-1)+1:m*k) = reshape(permute(Y(k+1:h_dim+k, :, :), [2, 1, 3]), h_dim*p, m);
end

end