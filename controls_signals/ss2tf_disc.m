function H = ss2tf_disc(Ad, Bd, Cd, Dd, w, ts)
% ss2tf_disc(Ad, Bd, Cd, Dd, w)
% Computes the transfer function from a discrete SISO state-space model on
% frequency grid w with timestep ts.

I = eye(size(Ad));

H = zeros(size(w));
for i = 1:length(w)
    H(i) = Cd/(exp(1j*w(i)*ts)*I - Ad)*Bd + Dd;
end

end