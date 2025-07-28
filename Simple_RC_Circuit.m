% RC Circuit parameters
R = 1000;        % ohms
C = 1e-6;        % farads
t = 0:0.0001:1; % time vector (0 to 0.05 s)
dt = 0.0001;     % time step

% Input voltage Vin(t) = 5*sin(2*pi*t)
Vin = 5 * sin(2*pi*t);

% Initialize Vc
Vc = zeros(size(t));

% Loop to compute Vc using Euler method
for i = 1:length(t)-1
    dVc = (Vin(i) - Vc(i)) / (R*C);
    Vc(i+1) = Vc(i) + dVc*dt;
end

% Plot results
plot(t, Vc, 'b', 'LineWidth', 2);
hold on;
plot(t, Vin, 'r--', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Voltage (V)');
legend('V_C(t)', 'V_{in}(t)');
title('RC Circuit Response');
grid on;
