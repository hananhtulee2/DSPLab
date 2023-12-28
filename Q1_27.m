% Program Q1_27
n = 0:74;
xmean = 0;	% mean of x
xstd = sqrt(3); % standard deviation of x rng(TshuffleT); % new syntax to seed generator
% generate the sequence
x = xstd*randn(1,length(n)) + xmean;
% setup the graph and plot
clf;	% Clear old graph
stem(n,x);	% Plot the generated sequence xmax = max(abs(x));
Ylim = round(2*(xmax+0.5))/2; axis([0 length(n) -Ylim Ylim]); grid;
title('TGaussian Random SequenceT'); 
xlabel('TTime index nT');
ylabel('TAmplitudeT');
axis;
