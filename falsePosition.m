function [root,fx,ea,iter] = falsePosition(func,Xl,Xu,es,maxiter)
% Summary: This function will allow a user to input a function and find the
%   roots of the function
% Defintion of Input Variables:
%   func: The function being evaluated
%   Xl: The lower guess
%   Xu: The upper guess
%   es: The desired relative error (should default to 0.00001%)
%   maxiter: The number of iterations desired (should default to 200)
% Defintion of Output Variables:
%   root: The estimated root location
%   fx: The function evaluated at the root location
%   ea: The approximate relative error (%)
%   iter: How many iterations were performed

if nargin < 3 % We are testing to see if the user inputed enough arguments
    error('There needs to be at least three input arguments entered')
end
SignChangeTest = func(Xl)*func(Xu); % We are testing if there is a sign change
if SingChangeTest > 0
    error('You need to enter a lower guess and an upper guess of the root')
end

if nargin < 4 % If there are less than 4 arguments, es is defaulted to 0.00001%
    es = 0.00001;
end
if nargin < 5 % If there are less than 5 arguments, maxiter is defaulted to 200
    maxiter = 200;
end

format long

maxiter = 0; % Defining our inital count of maxiter
ea = 100; % Defining our inital relative error

while ea > es || maxiter >= 200 % Making our requirments to begin loop
    Xrprev = Xr; % Before we create a new Xr, the previous Xr is stored as Xrprev
    Xr = Xu - ((func(Xu)*(Xl - Xu))/(func(Xl) - func(Xu))); % False positon equation
    maxiter = maxiter + 1; % Counter
    
    if Xr > 0 % This will give us the approximate relative error
        ea = abs((Xr - Xrprev)/ Xr)*100;
    end
    
    SignChangeTest = func(Xl)*func(Xu);
    if SignChangeTest < 0 % If less than zero, Xr becomes the high guess
        Xu = Xr;
    elseif SignChangeTest > 0 % If greather than zero, Xr becomes the low guess
        Xl = Xr;
    else % If it is zero, then I guess we have found the root? Ask Peter or Dr. B
        ea = 0;
    end
end
root = Xr;
fprintf('The root of the function is %f, root')
fx = func(Xr);
fprintf('The value of the function at the root location is %f, fx')
ea = ea;
fprintf('The value of the approximate relative error is %f%, ea')
maxiter = maxiter;
fprintf('There were %f iterations before ea was below the desired relative error or if a certain number of iterations were perfromed, maxiter')
end

