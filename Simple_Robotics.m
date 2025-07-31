l1 = 10;
l2 = 9;

theta1 = linspace(0, 90, 1000);
theta2 = linspace(0, 180, 1000);

x1 = l1 * cosd(theta1);
y1 = l1 * sind(theta1);
x2 = x1 + l2 * cosd(theta1 + theta2);
y2 = y1 + l2 * sind(theta1 + theta2);

p1 = plot([0, x1(1)], [0, y1(1)]);
p2 = plot([x1(1), x2(1)], [y1(1), y2(1)]);
hold on

xlim([-1 * l1 * 2, 1 * l1 * 2])
ylim([-1 * l1 * 2, 1 * l1 * 2])

for i = 1:10:length(theta1)
    delete(p1); delete(p2);
    p1 = plot([0, x1(i)], [0, y1(i)], 'r');
    p2 = plot([x1(i), x2(i)], [y1(i), y2(i)], 'b');
    drawnow
    pause(0.1)
end


