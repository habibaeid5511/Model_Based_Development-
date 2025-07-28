% Parameters
L = 1;                  % length (m)
g = 9.81;               % gravity (m/s^2)
theta0 = 0.1;           % initial angle (rad)
omega0 = 0;             % initial angular velocity (rad/s)

t = 0:0.01:10;          % time vector (0 to 10 s, step = 0.01)
dt = 0.01;              % time step

% Preallocate
theta = zeros(size(t));
omega = zeros(size(t));

% Initial conditions
theta(1) = theta0;
omega(1) = omega0;

% Simple Euler integration
for i = 1:length(t)-1
    theta_dd = -(g/L)*sin(theta(i));   % angular acceleration
    omega(i+1) = omega(i) + theta_dd*dt;
    theta(i+1) = theta(i) + omega(i)*dt;
end

% Plot angular displacement
plot(t, theta, 'LineWidth', 2);
xlabel('Time (s)');
ylabel('\theta (rad)');
title('Pendulum Angular Displacement');
