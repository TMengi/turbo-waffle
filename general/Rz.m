function Rz = Rz(theta)
% elemental rotation about x axis by theta [rad]
Rz = [cos(theta) -sin(theta) 0;
      sin(theta) cos(theta) 0;
      0 0 1];
end