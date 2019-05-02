function [L,U,P] = luFactor(A)
% Function is to determine the LU Factorization of a square matrix
% Created On: 31 March 2019
% Created By: Angela Dean
% Description of the Function:
    % The function is to determine the LU Factorization of a square matrix
    % by breaking up A into a lower and upper triangular matrix. This 
    % function should be able to do any size of a square matrix and be able
    % to do partial pivoting. In the end the matrices multiplied together,
    % L*U = P*A should equal each other. If you wanted to find the actual
    % valus of the variables you begin back-substitution, but will need
    % what the systems of equations equate to. 
% Variables:
    % Inputs:
        % A: Coefficients of a matrix from a system of equations
    % Outputs:
        % L: Lower triangular matrix
        % U: Upper triangular matrix
        % P: The pivot matrix
%-------------------------------------------------------------------------- 
[w,q] = size(A);
% Making sure user did not mess up
if nargin < 1 % Checking if user messed up and did not insert matrix
    error('You did not input a matrix')
end
if nargin > 1 % Checking if user inputted too many arguments
    error('You inserted too many inputs')
end
if w ~= q % Checking if user messed up and did not insert a square matrix
    error('You did not input a square matrix')
end
if w < 2 && q < 2 % Checking to see if the user inputted a one by one matrix
    error('You need to have a matrix bigger than one by one')
end
 
[h,h] = size(A);
L = eye(h); % Setting up an identity matrix because that is what L is (lower)
P = eye(h); % P is also an identity matrix. It is the pivot matrix 
U = A; % A will eventually turn into A
for t = 1:h % Going through every number until we hit size of the matrix
    [pivot d]=max(abs(U(t:h,t))); % Should give where greatest value is and where
    d = d + t - 1;
    if d ~= t 
        % Pivoting rows d and t in U matrix (upper matrix)
        Pivot = U(t,:); % This line is equaling what will change
        U(t,:) = U(d,:); % Making the switch-a-roo
        U(d,:) = Pivot; % Making the new row
        % Pivoting rows d and t in P matrix (pivoting matrix)
        Pivot = P(t,:); % Need to change our pivot matrix based on what happend with U
        P(t,:) = P(d,:); % Making the switch - a - roo
        P(d,:)=Pivot; % Good to go
        if t >= 2 % We are now dealing with L and P (L is lower)
            Pivot = L(t,1:t-1); % t - 1 is to make sure we don't hit the end of the matrix
            L(t,1:t-1) = L(d,1:t-1); % Doing the good 'ol switch-a-roo
            L(d,1:t-1) = Pivot; % Good to go
        end
    end
    for r = t+1:h % Doing some classic elimination here L is ratio/factor
        L(r,t)= U(r,t) / U(t,t); % Finding the factor
        U(r,:)= U(r,:)-L(r,t)*U(t,:); % Eliminating the equations
    end
end