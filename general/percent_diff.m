function pd = percent_diff(x, y)
% percent difference, calculated as absolute value of difference over
% average
pd = abs(2*(x-y)/(x+y));