function vline(x, style)
% adds a vertical line on the current plot. use after ylimits have been
% assigned.
% x: x value of line
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

y_lims = get(gca, 'ylim');
for i = 1:length(x)
    plot_func(x(i)*ones(2,1), y_lims, style);
end

if ~hold_state
    hold off;
end

end