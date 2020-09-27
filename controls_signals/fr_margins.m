function [g_cross, p_marg, p_cross, g_marg] = fr_margins(f, H, max_i)
% finds the crossover frequencies and margins of a frequency response
% function
% f: frequency grid for the frequency response
% H: frequency response function
% max_i: maximum index to search for margins
% returns: [gain crossover frequency, phase margin, phase crossover
% frequency, gain margin]

if nargin > 2
    f = f(1:max_i);
    H = H(1:max_i);
end

% compute magnitude and phase
abs_H = abs(H);
ang_H = 180/pi*unwrap(angle(H));

% gain crossover frequency and phase margin
g_cross_i = find_closest(abs_H, 1);
g_cross = f(g_cross_i);
p_marg = ang_H(g_cross_i) + 180;

% phase crossover frequency and gain margin
p_cross_i = find_closest(ang_H, -180);
p_cross = f(p_cross_i);
g_marg = 1/abs_H(p_cross_i);

end