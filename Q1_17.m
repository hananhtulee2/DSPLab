% Program P1_4
% Generation of a sinusoidal sequence
n = 0:40;
f = 0.1;
phase = 0;
A = 1.5;
arg = 2*pi*f*n - phase;
x = A*cos(arg);
clf; % Clear old graph
stem(n,x); % Plot the generated sequence
axis([0 40 -2 2]);
grid;
% Calculate the instantaneous power at each sample point
instantaneous_power = x.^2;

% Compute the average power
average_power = mean(instantaneous_power);