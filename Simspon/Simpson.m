function [I] = Simpson(x,y)
% Created On: 13 April 2019
% Finished On: 17 April 2019
% Created By: Angela Dean
% Description of the Function:
    % The function numerically evaluates the integral of the vector of
    % function values 'y' with respect to 'x'. The function will use
    % Simpson's 1/3 rule. If the arrays given have an odd number of
    % intervals, the trapezoidal rule will be used for the last interval.
% Variables:
    % Inputs:
        % X: An array containing x values of an area of integration
        % Y: An array containing function values of the x values
    % Outputs:
        % I: The integral value
%--------------------------------------------------------------------------
a = length(x); % Defining lengths of the matrices
b = length(y);
c = mod(a,2); % This tells us if the length of x is even or odd
f = x(1,a-1) - x(1,1); % Used when odd number of intervals for Simpsons 1/3
g = x(1,a)- x(1,1); % Used when even number of intervals for Simpsons 1/3
h = linspace(x(1),x(a),a); % Calculating an array to be exactly like x
i = isequal(x,h); % Used to compare the x matrix and h matrix

if nargin < 2 % Error check to see if user messed up
    error('You did not input two arrays')
end
if nargin > 2 % Error check to see if user messed up
    error('You inputted too many arguments')
end
if a ~= b % Error for if the x and y matrices aren't the same length
    error('Your arrays are not the same length')
end
if i == 0 % Determining if X is not equally spaced, required for Simpson's
    error('X is not equally spaced')
end
if c == 0 % Warning that Trapezodial Rule will be used for last interval
    warning('Odd number of intervals. Trapezoidal Rule used for last interval')
end

if c ~= 0 % Even number of intervals because of odd number of points
    X4 = 0;
    X2 = 0;
    for z = 2:2:a-1 % Determining points between endpoints spaced by 2
        X4 = X4 + y(1,z); % Adding up points between endpoints
    end
    for j = 3:2:a-2 % Determining points between endpoints spaced by 3
        X2 = X2 + y(1,j); % Adding up points between endpoints
    end
    Simp13 = g*((y(1,1) + y(1,a) + 4*(X4) + 2*(X2)))/(3*(a-1)); %Simpson's 1/3 Equation
    I = Simp13;
else % Odd number of invtervals because of even number of points
    X4 = 0;
    X2 = 0;
    for q = 2:2:a-2 % Determining points between endpoints spaced by 2 but not including last interval
        X4 = X4 + y(1,q); % Adding up points between endpoints
    end
    for r = 3:2:a-3 % Determining points between endpoints spaced by 3 but not including last interval
        X2 = X2 + y(1,r); % Adding up points between endpoints
    end
    Simp13 = f*((y(1,1) + y(1,a-1) + 4*(X4) + 2*(X2)))/(3*(a-2)); % Simpson's 1/3 Equation
    Trap = (x(1,a) - x(1,a-1))*(y(1,a-1) + y(1,a))/2; % Trapezoidal Equation for last interval
    I = Trap + Simp13;
end
end