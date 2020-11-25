function vector3_plots(x, y1, y2, n)

figure(n);
subplot(311);
plot(x, y1(1,:), x, y2(1,:));
grid on;
subplot(312);
plot(x, y1(2,:), x, y2(2,:));
grid on;
subplot(313);
plot(x, y1(3,:), x, y2(3,:));
grid on;

end