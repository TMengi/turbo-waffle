function plot_ang_margins(fgc, fpc, pm)
% plot_ang_margins(fgc, fpc, pm)
% 
% Plots the relevant margins on a Bode phase plot
% fgc: gain crossover frequency
% fpc: phase crossover frequency
% pm: phase margin

hold_state = is_hold;
hold on;

hline(-180, 'r--');
vline(fpc, 'r--');
semilogx(fgc*ones(2,1), [0, pm]-180, 'k--');

if ~hold_state
    hold off;
end

end