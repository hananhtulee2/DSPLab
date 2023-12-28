% Program Q1_26
% Generation of a uniform random sequence
% NOTE: if X is a random variable with mean zero
% and variance 1, then (aX + b) is a random variable
% with mean b and variance a^2. This follows from
% basic probability theory. 
n = 0:99;
A = 2;
%rand(TstateT,sum(100*clock)); % Obsolete syntax to "seed" the generator
TshuffleT = rng ;
rng(TshuffleT); % new syntax to seed generator
%
% rand(1,100) is uniform in [0,1]
% rand(1,100)-0.5 is uniform in [-0.5,0.5]
% 4*(rand(1,100)-0.5) is uniform in [-2,2] 
% x = 2*A*(rand(1,length(n))-0.5);
x = 4.*rand(100,1)-2 ; 
y = 2*A*(rand(1,length(n))-0.5);
clf;	% Clear old graph
stem(n,x);	% Plot the generated sequence
axis([0 length(n) -round(2*(A+0.5))/2 round(2*(A+0.5))/2]); grid;
title('Tuniform Random SequenceT'); xlabel('TTime index nT'); ylabel('TAmplitudeT');
axis;
