% Ch??ng trình Q1_28
% T?o ra và hi?n th? n?m chu?i tín hi?u m?u c?a m?t tín hi?u sin ng?u nhiên có ?? dài 31
% Biên ?? A và pha ? là các bi?n ng?u nhiên ??c l?p th?ng kê v?i phân b? xác su?t ??u trong kho?ng 0 <= A <= 4 cho biên ?? và trong kho?ng 0 <= ? <= 2? cho pha

% Khai báo bi?n
n = 0:30;
f = 0.1;
Amax = 4;
phimax = 2*pi;

% Kh?i ??ng trình t?o s? ng?u nhiên
rng(TshuffleT);

% T?o n?m chu?i tín hi?u m?u
for trial=1:5

    % T?o bi?n ng?u nhiên A
    A = Amax*rand;

    % T?o bi?n ng?u nhiên phi
    phi = phimax*rand;

    % T?o vector ch?a các giá tr? c?a tham s? góc
    arg = 2*pi*f*n + phi;

    % T?o vector ch?a các giá tr? c?a tín hi?u sin ng?u nhiên
    x = A*cos(arg);

    % V? ?? th? chu?i tín hi?u m?u
    figure(trial);
    clf;
    stem(n,x);
    Ylim = round(2*(Amax+0.5))/2;
    axis([0 length(n) -Ylim Ylim]); grid;
    title('TSinusoidal Sequence with Random Amplitude and PhaseT'); 
    xlabel('TTime index nT');
    ylabel('TAmplitudeT'); axis;
end
