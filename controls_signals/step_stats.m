function [tr, tp, Mp, ts, ess] = step_stats(t, x, ref)
% computes time-domain characteristics of a step response. the data is
% assumed to have reached steady-state
% 
% t: time vector
% x: data vector
% ref: step reference value
% 
% returns
%   rise time: time for the signal to go from 10% to 90% of its
%       steady-state value
%   peak time: time when the signal achieves its maximum value
%   peak overshoot: amount by which the maximum value exceeds the
%       steady-state value, expressed as a percentage of the steady-state
%   settling time: time for the signal to decay to within 1% of its
%       steady-state value
%   steady-state error: difference between reference value and steady-state
%       value

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

% print stuff if not being stored as variables
if nargout == 0
    if tr < .01
        fprintf('Rise time: %.3e\n', tr);
    else
        fprintf('Rise time: %.2f\n', tr);
    end
    
    if tp < .01
        fprintf('Peak time: %.3e\n', tp);
    else
        fprintf('Peak time: %.2f\n', tp);
    end
    
    fprintf('Peak overshoot: %.1f%%\n', 100*Mp);
    
    if ts < .01
        fprintf('Settling time: %.3e\n', ts);
    else
        fprintf('Settling time: %.2f\n', ts);
    end
    
    if ess < .01
        fprintf('Steady-state error: %.3e\n', ess);
    else
        fprintf('Steady-state error: %.2f\n', ess);
    end
end

end