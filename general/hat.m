function u_hat = hat(u)

u_hat = [0 -u(3) u(2);
         u(3) 0 -u(1);
         -u(2) u(1) 0];
         
end