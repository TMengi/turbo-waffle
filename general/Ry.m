function Ry = Ry(theta)
% elemental rotation about x axis by theta [rad]
Ry = [cos(theta) 0 sin(theta);
      0 1 0;
      -sin(theta) 0 cos(theta)];
end