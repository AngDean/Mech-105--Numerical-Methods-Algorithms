function [nd] = days(mo,da,leap)
% Created By: Angela Dean
% This function will calculate how many days has passed since the first
% day of the new year. The algorithm will require the user to input 0 or 1.
% If it is a leap year, enter 1. If it is not a leap year, enter 0.
% Inputs:
%   mo: The current month
%   da: The current day
%   leap: If the year is a leap year or not
% Outputs:
%   nd: How many days has passed since the first day of the new year
%--------------------------------------------------------------------------
if leap ~= 0:1
    error('Put in 1 for it is a leap year or 0 for not a leap year')
end
if mo ~= 1:12;
    error('You must put in the number of the month between 1 and 12')
end
if da ~= 1:31;
    error('You must put in the day of the month between 1 and 31')
end

if leap == 1
    if mo == 1 % January
        nd = da;
    elseif mo == 2 %Feb
        nd = 31 + da;
    elseif mo == 3 % March
        nd = 31 + 29 + da;
    elseif mo == 4 % April
        nd = 31 + 29 + 31 + da;
    elseif mo == 5 % May
        nd = 31 + 29 + 31 + 30 + da;
    elseif mo == 6 % June
        nd = 31 + 29 + 31 + 30 + 31 + da;
    elseif mo == 7 % July
        nd = 31 + 29 + 31 + 30 + 31 + 30 + da;
    elseif mo == 8 % August
        nd = 31 + 29 + 31 + 30 + 31 + 30 + 31 + da;
    elseif mo == 9 % September
        nd = 31 + 29 + 31 + 30 + 31 + 30 + 31 + 31 + da;
    elseif mo == 10 % October
        nd = 31 + 29 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + da;
    elseif mo == 11 % November
        nd = 31 + 29 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + da;
    else % December
        nd = 31 + 29 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + 30 + da;
    end
else
    if mo == 1 % January
        nd = da;
    elseif mo == 2 %Feb
        nd = 31 + da;
    elseif mo == 3 % March
        nd = 31 + 29 + da;
    elseif mo == 4 % April
        nd = 31 + 29 + 31 + da;
    elseif mo == 5 % May
        nd = 31 + 29 + 31 + 30 + da;
    elseif mo == 6 % June
        nd = 31 + 29 + 31 + 30 + 31 + da;
    elseif mo == 7 % July
        nd = 31 + 29 + 31 + 30 + 31 + 30 + da;
    elseif mo == 8 % August
        nd = 31 + 29 + 31 + 30 + 31 + 30 + 31 + da;
    elseif mo == 9 % September
        nd = 31 + 29 + 31 + 30 + 31 + 30 + 31 + 31 + da;
    elseif mo == 10 % October
        nd = 31 + 29 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + da;
    elseif mo == 11 % November
        nd = 31 + 29 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + da;
    else % December
        nd = 31 + 29 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + 30 + da;
    end
end
end