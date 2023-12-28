function test1
    clc; clear all; close all;
    n = 0:31;
    x = zeros(size(n)); % Kh?i t?o m?ng x v?i gi� tr? ban ??u l� 0

    for i = 1:length(n)
        if n(i) <= 6
            x(i) = n(i);
        else
            x(i) = 6;
        end
    end

    stem(n, x);
    xlabel('Time index n');
    ylabel('Amp x(n)');
    energy = sum(x.*x);
end

