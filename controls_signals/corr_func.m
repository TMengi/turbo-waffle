function R = corr_func(a, b, k)
% calculates the correlation of vectors a and b at lag index k

R = zeros(size(a,1));
n = size(a,2);

if k > 0
    for q = 1:n-k
        R = R + a(:,q+k)*b(:,q)';
    end
else
    for q = 1:n+k
        R = R + a(:,q)*b(:,q-k)';
    end
end

R = R/(n-abs(k));

end