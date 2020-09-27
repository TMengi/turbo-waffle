function x_shifted = shift_by(x, k)
% shift_by(x, k)
% 
% Shifts the array x by index k

if k > 0
    x_shifted = [x(k+1:end), x(1:k)];
else
    x_shifted = [x(end+k+1:end), x(1:end+k)];
end

end