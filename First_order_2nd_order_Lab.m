%% Part 1: First-Order System
K= 1;
T= 0.02;
num=[K];
den=[T 1];
Sys_1=tf(num,den)

%% Part 2: Second-Order System
wn= 3.5;
zeta=0.25;
num=[wn^2];
den=[1 2*zeta*wn wn^2];
Sys_2=tf(num,den)