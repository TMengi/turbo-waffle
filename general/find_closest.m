function best_i = find_closest(x, x0, k)
% FIND_CLOSEST(x, x0, k)
% Finds the indices of the k values in x which are closest to x0. By
% default, k = 1.

if nargin < 3
    k = 1;
end

[~, best_i] = mink(abs(x - x0), k);

end