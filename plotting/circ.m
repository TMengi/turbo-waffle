function circ(x, y, r, style)
% adds a circle on the current plot.
% x: x-coordinate of center
% y: y-coordinate of center
% r: radius
% style: plotting style to use (e.g. 'k--');

if nargin < 4
    style = '-';
end

hold_state = ishold;
hold on;

xscale = get(gca, 'XScale');
yscale = get(gca, 'YScale');

% determine plot type
if strcmp(xscale, 'linear')
    if strcmp(yscale, 'linear')
        plot_func = @plot;
    elseif strcmp(yscale, 'log')
        plot_func = @semilogy;
    end
elseif strcmp(xscale, 'log')
    if strcmp(yscale, 'linear')
        plot_func = @semilogx;
    elseif strcmp(yscale, 'log')
        plot_func = @loglog;
    end
end

theta = linspace(0, 2*pi);
plot_func(r*cos(theta)+x, r*sin(theta)+y, style);

if ~hold_state
    hold off;
end

end