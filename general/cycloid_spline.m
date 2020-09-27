function y = cycloid_spline(start, stop, steps)
t = linspace(0, 2*pi, steps)';
r = (stop - start)/(2*pi);
y = r.*(t - sin(t)) + start;
end