function plot_mag_margins(fgc, fpc, gm)
% plot_mag_margins(fgc, fpc, pm)
% 
% Plots the relevant margins on a Bode magnitude plot
% fgc: gain crossover frequency
% fpc: phase crossover frequency
% gm: gain margin

hold_state = is_hold;
hold on;

hline(1, 'k--');
vline(fgc, 'k--');
loglog(fpc*ones(2,1), 1./[1, gm], 'r--');

if ~hold_state
    hold off;
end

end