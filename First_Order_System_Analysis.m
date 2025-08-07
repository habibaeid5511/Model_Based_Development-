%% parametersof a First-Order System
k=0.5;
R= 1e4;
C=1e-7;
T=R*C;
%% Modeling a First-Order System
num=[0 k];
den=[T 1];
G=tf(num,den)
step(G)
%% Analyzing the System Response:
sys=stepinfo(G);
disp(sys)
%% Exploring Different Scenarios:
k=0.75;
t=0.005;
Num=[0 k];
Den=[t 1];
g=tf(Num,Den);
subplot(2,3,6)
step(g)
title(['For  ' 'K=' num2str(k) ',' 'T=' num2str(t)])
hold on
%% Ramp Input Response:
k=0.5;
R= 1e4;
C=1e-7;
T=R*C;
num=[0 k];
den=[T 1];
G=tf(num,den)

time=0:0.01:10;
u_ramp = 0.1 * time;

[y_ramp, t_ramp]=lsim(G,u_ramp,time);
plot(t_ramp,y_ramp)

%% Parabolic Input Response:
k=0.5;
R= 1e4;
C=1e-7;
T=R*C;
num=[0 k];
den=[T 1];
G=tf(num,den)

time=0:0.01:10;
u_parabolic = 0.2 * time.^2;
[y_parabolic,t_parabolic]=lsim(G,u_parabolic,time);
plot(t_parabolic,y_parabolic)
hold on
plot(time,u_parabolic)
legend('Response','Input')