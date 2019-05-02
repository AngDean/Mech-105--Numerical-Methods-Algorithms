% Find the Volume of a Gas Tank
% Created on: 30 January 2019
% By: Angela Dean
% Description: The user would nomrally input the height of the fuel in the
% tank, but the h will be equal to 20. The goal of this algorithm is to
% find the volume of the liquid in the tank. The tank is an inverted frustum
% and cylinder combined.

close all
clear
clc

%% Defining Variables
h = 20; %Normally would have the input function here
Db = 46; %This is the diameter of the biggest part of the inverted frustum
Ds = 25; %This is the diameter of the cylinder
Rb = Db/2; %This is the radius of the biggest part of the inverted frustum
Rs = Ds/2; %This is the raidus of the cylinder
h2 = 19; %This is a constant because it is the height of the cylinder

%% Time for Calculations!
if h <= 19
    V = pi*(Rs^2)*h;
    fprintf('The volume of the liquid is %1.0f m^3\n',V)
else
    h3 = h - 19; %This will give the height of the inverted frustum
    Rh = Rs + ((Rb-Rs)/14)*(h-19);
    Vc = pi*(Rs^2)*h2;
    Cf = ((pi*h3)/3)*((Rs^2)+(Rh^2)+(Rs*Rh));
    V = Vc + Cf;
end
fprintf('The volume of the liquid is %1.0f m^3\n',V)