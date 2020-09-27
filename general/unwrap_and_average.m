function y = unwrap_and_average(x, T)
% separates x into groups of T columns and averages the groups together

% dimension of x
[m, n] = size(x);

% number of groups
nT = floor(n/T);

% sum groups together
y = zeros(m, T);
for i = 1:nT
    y = y + x(m, (i-1)*T+1:i*T);
end

% average
y = y/nT;

end