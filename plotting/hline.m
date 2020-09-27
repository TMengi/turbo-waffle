function hline(y, style)
% adds a horizontal line on the current plot. use after ylimits have been
% assigned.
% y: y value of line
% style: plotting style to use (e.g. 'k--')

if nargin < 2
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

x_lims = get(gca, 'xlim');
for i = 1:length(y)
    plot_func(x_lims, y(i)*ones(2,1), style);
end

if ~hold_state
    hold off;
end

end