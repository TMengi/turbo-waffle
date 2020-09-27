function Rx = Rx(theta)
% elemental rotation about x axis by theta [rad]
Rx = [1 0 0;
      0 cos(theta) -sin(theta);
      0 sin(theta) cos(theta)];
end