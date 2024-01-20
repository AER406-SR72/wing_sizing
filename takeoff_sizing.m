v_stall = 8;
v_LO = v_stall * 1.05;
v_hw = 3;
C_D0 = 0.063;
C_Lgr = 0.1;
e = 0.9;
AR = 5;
s_TO = 7.5;
T = 9.25;
C_Lmax = 0.701;
g = 9.80665;
rho = 1.225;
M0 = 1630;
W = M0 * g / 1000;
mu = 0.1;


C4 = (-1.05^2/(g*rho*C_Lmax));
C3 = (1.05*v_hw/g * sqrt(2/(rho*C_Lmax)));
C2 = (s_TO*(T/W + 1.05^2/(2*C_Lmax) * (mu*C_Lgr - C_D0 - C_Lgr^2/(pi*e*AR)) - mu) - v_hw^2/(2*g));
C1 = 0;
C0 = s_TO * (rho*v_hw^2/4) * (mu * C_Lgr - C_D0 - C_Lgr^2/(pi*e*AR));

results = roots([C4 C3 C2 C1 C0]);

W_S_takeoff = results(4)^2 * g  %???? units are not consistent but meh it looks like it works
