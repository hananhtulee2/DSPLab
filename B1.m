function B1
clc;clear all;close all;
% Sketch x(n)=3delta(n)-delta(n-2)+(1/5)^(n-1).u(n-3)
% n=-2:10;
% n1=3:10;
% x=[zeros(1,2),3,0,-1,((1/5).^(n1-1)).*ones(1,8)];
% Using subscripts in textbook
n1=-2;
n2=10;
n=n1:n2;
x1=3*impseq(0,n1,n2);
x2=-impseq(2,n1,n2);
x3=stepseq(3,n1,n2);
x=x1+x2+((1/5).^(n-1)).*x3;
% unit step seq.
function [x,n] = stepseq(n0,n1,n2)
% Generates x(n) = u(n-n0); n1 <= n <= n2
% ------------------------------------------
% [x,n] = stepseq(n0,n1,n2)
n = [n1:n2]; x = [(n-n0) >= 0];
end
% unit sample seq
function [x,n] = impseq(n0,n1,n2)
% Generates x(n) = delta(n-n0); n1 <= n <= n2
% ----------------------------------------------
% [x,n] = impseq(n0,n1,n2)
n = [n1:n2]; x = [(n-n0) == 0];
end
stem(n,x);
xlabel('Time index n');
ylabel('Amp x(n)');
grid;
E=sum(x.*x);
disp(['Energy of x(n):',num2str(E)]);
end