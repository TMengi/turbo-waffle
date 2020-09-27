function [Ad, Bd, Cd, Dd] = ss_c2d(A, B, C, D, ts)
% converts a continuous-time state space model to a discrete-time state
% space model with timestep ts

I = eye(size(A));
psi = (I - ts/2*A)\B*ts/2;
Ad = (I - ts/2*A)\(I + ts/2*A);
Bd = (Ad + I)*psi;
Cd = C;
Dd = C*psi + D;

end