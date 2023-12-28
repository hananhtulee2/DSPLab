function B2
clc;clear all;close all;
% Prob.2: An audio signal includes two sinusoidal components whose frequencies are 1500 Hz
% and 6000 Hz is sampled at the sampling rate of 20 kHz.
% a. Plot the above audio signal.
% b. Plot the naturally sampled signal.
% c. Plot the flat-top signal.
% Using the approriate commands such as xlabel, ylabel, and title to denote all figures.
f1=1500;
f2=6000;
fs=20000;
% T1=1/f1;
% T2=1/f2;
Ts=1/fs;
T=1/gcd(f1,f2); % period of x(t)
A=1;
B=2;
t=linspace(0,T,200);
xt=A*sin(2*pi*f1*t)+B*cos(2*pi*f2*t);
ts=0:Ts:T; % sampling time
xts=A*sin(2*pi*f1*ts)+B*cos(2*pi*f2*ts); % x(t) is sampled with Ts
subplot(311);
plot(t,xt);
xlabel('Time t');
ylabel('Amp x(t)');
title('Continuous time signal');
grid;
subplot(312);
stem(ts,xts);
hold on;
plot(t,xt,'r--');
xlabel('Time index n');
ylabel('Amp x(n)');
title('Naturally-sampled discrete time signal');
grid;
subplot(313);
stairs(ts,xts);
hold on;
plot(t,xt,'r--');
xlabel('Time index n');
ylabel('Amp x(n)');
title('Flat-top discrete time signal');
grid;
end