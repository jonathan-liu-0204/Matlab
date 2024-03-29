%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: Lab 2
% Problem number: 2
% Student Name:  劉子齊 Jonathan
% Student ID: 0716304
% Email address: jonathan.tzuchi.liu@Gmail.com
% Department: Computer Science, NYCU
% Date: 2022/05/08
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% close all windows
% clear variables, and clear screen
close all; clf; clear; clc;

% show Lab Two Example
disp('Lab 2.2')  

while true
    a = input("Please input a in [-10, 10]: ");
    if(or(a<-10, a>10))
       disp("Please input valid input."); 
    else
       break;
    end
end

while true
    dx = input("Please input dx in [0, 1]: ");
    if(or(dx<0, dx>1))
        disp("dx must be inside (0, 1)"); 
    elseif(dx == 0)
        dx = 0.05;
    else
       break;
    end
end

x = [-10 : dx :10];
y = abs(x) + a .* sin(x);
plot(x, y, 'linewidth', 3);
hold on;
figure(1);

pause(2)

x = [-10 : 0.025 :10];
y = abs(x) + a .* sin(x);

ending = 20 / 0.025 + 1;

for t = 1 : 1 : ending
    
    plot(x, y, 'linewidth', 3);
    hold on;
    p = plot(x(t),y(t), 'o', 'linewidth', 2);
    hold off
    grid on;

    pause(0.01);
end


