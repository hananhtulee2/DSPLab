% % Program P1_1
% % Generation of a Unit Sample Sequence 
% %clf;
close all;
clc;
clear;
% % Generate a vector from -10 to 20
% n = -10:20;
% % Generate the unit sample sequence
% u = [zeros(1,21) 1 zeros(1,9)];
% % Plot the unit sample sequence
% stem(n,u);
% grid;
% xlabel('Time index n');ylabel('Amplitude');
% title('Unit Sample Sequence');
% axis([-10 20 0 1.2]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n1=-10;
n2=20;
n=n1:n2;
n0=11;
[x,n]=impseq(n0,n1,n2);
stem(n,x);
grid;