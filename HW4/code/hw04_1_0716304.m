%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: HW4
% Problem number: 1
% Student Name:  劉子齊
% Student ID: 0716304
% Email address: jonathan.tzuchi.liu@gmail.com
% Department: Computer Science, NYCU
% Date: 2022/05/13
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% close all windows
% clear variables, and clear screen
clf; clear; clc;close all;

disp('HW04 Problem 4.1'); 

while true
   
    a = input("Please input 'a': ");
    b = input("Please input 'b': ");
    c = input("Please input 'c': ");
    
    if(and(a > 0, and(b > 0, c > 0)))
        break;
    elseif(and(a < 0, and(b < 0, c < 0)))
        break;
    else
        disp("a, b, c needs to be nonzero and in the same sign :)))")
    end
end

clf;

n = 1000000;
Y = rand(1, 1000000);
X = a .* Y .^ 2 + b .* Y + c;

M = mean(X);
SD = std(X);

current_pdf = histogram(X, 'Normalization', 'pdf');

hold on;
ax = gca
% x = linspace(ax.XLim(1), ax.XLim(2), 1000000);
% plot(X, current_pdf, 'LineWidth', 2)

pdf_X = normpdf(X);
plot(X, pdf_X);

% A = normrnd(0,1,1000,1);
% histogram(A, 'Normalization', 'pdf');
% hold on;
% ax = gca;
% x = linspace(ax.XLim(1), ax.XLim(2), 1000);
% plot(x, normpdf(x), 'LineWidth', 2)
