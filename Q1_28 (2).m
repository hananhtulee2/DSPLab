% Ch??ng tr�nh Q1_28
% T?o ra v� hi?n th? n?m chu?i t�n hi?u m?u c?a m?t t�n hi?u sin ng?u nhi�n c� ?? d�i 31
% Bi�n ?? A v� pha ? l� c�c bi?n ng?u nhi�n ??c l?p th?ng k� v?i ph�n b? x�c su?t ??u trong kho?ng 0 <= A <= 4 cho bi�n ?? v� trong kho?ng 0 <= ? <= 2? cho pha

% Khai b�o bi?n
n = 0:30;
f = 0.1;
Amax = 4;
phimax = 2*pi;

% Kh?i ??ng tr�nh t?o s? ng?u nhi�n
rng(TshuffleT);

% T?o n?m chu?i t�n hi?u m?u
for trial=1:5

    % T?o bi?n ng?u nhi�n A
    A = Amax*rand;

    % T?o bi?n ng?u nhi�n phi
    phi = phimax*rand;

    % T?o vector ch?a c�c gi� tr? c?a tham s? g�c
    arg = 2*pi*f*n + phi;

    % T?o vector ch?a c�c gi� tr? c?a t�n hi?u sin ng?u nhi�n
    x = A*cos(arg);

    % V? ?? th? chu?i t�n hi?u m?u
    figure(trial);
    clf;
    stem(n,x);
    Ylim = round(2*(Amax+0.5))/2;
    axis([0 length(n) -Ylim Ylim]); grid;
    title('TSinusoidal Sequence with Random Amplitude and PhaseT'); 
    xlabel('TTime index nT');
    ylabel('TAmplitudeT'); axis;
end
