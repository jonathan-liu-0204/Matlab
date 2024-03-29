%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment Number: 2
% Problem number: 3
% Student Name:  劉子齊 Jonathan
% Student ID: 0716304
% Email address: jonathan.tzuchi.liu@gmail.com
% Department: Computer Science, NYCU
% Date: 2021/03/15
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clf; clear; clc;		% clear the current figure
                        % clear variables, and clear screen

fprintf('Student ID:0716304 Name:劉子齊 Jonathan\n'); % show student id and name                       
                        
disp('Problem 2.3') 	% show Problem 2.3

x = [-5: 0.01: 5];

while 1
   keyin = input('Please input the value of "m" insode [-1, 10]:');
   m = keyin(1);
   
   if m <= -1
       fprintf('Thanks for playering.\n');
	   return
   elseif m >= 10
       fprintf('Thanks for playering.\n');
	   return
   end
   
   clf; % Clear all curves in the current figure.
   ylim([-1.5, 1.5]);
   
   y1 = sin(x);
   plot(x, y1, 'linewidth', 4);
   hold on
   y2 = 0;
     
   for n = 0:m
       y2 = y2 + ((-1) ^ n / factorial(2 * n + 1)) .* x .^ (2 * n + 1);
       plot(x, y2, 'linewidth', 1);
       hold on
   end
   ylim([-1.5, 1.5]);
end