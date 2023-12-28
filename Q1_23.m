% Program P1_4_modified
% Generation of a sinusoidal sequence with frequency 0.9 Hz and phase 90 degrees
n = 0:49;
f = 0.9;
phase = pi/2;
A = 1.5;
arg = 2*pi*f*n - phase;
x = A*cos(arg);
clf; % Clear old graph
stem(n,x); % Plot the generated sequence
axis([0 50 -3 3]);
grid;
title('Sinusoidal Sequence with frequency 0.9 Hz and phase 90 degrees');
xlabel('Time index n');
ylabel('Amplitude');
axis;