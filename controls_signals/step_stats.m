function [tr, tp, Mp, ts, ess] = step_stats(t, x, ref)
% computes time-domain characteristics of a step response. the data is
% assumed to have reached steady-state
% 
% t: time vector
% x: data vector
% ref: step reference value
% 
% returns:
% 

% initial and final values
x0 = x(1);
xss = x(end);

% rise time
tr1 = t(find(x > x0 + .1*(ref - x0), 1, 'first'));
tr2 = t(find(x > x0 + .9*(ref - x0), 1, 'first'));
tr = tr2 - tr1;

% peak time
[max_x, max_i] = max(x);
tp = t(max_i);

% peak overshoot
Mp = (max_x - xss)/xss;

% settling time
ts = t(find(abs(x - xss) > .01*(xss - x0), 1, 'last'));

% steady-state error
ess = ref - xss;

end