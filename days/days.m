function [nd] = days(mo,da,leap)

leap = input('If leap year enter 1, if not enter 0');
if leap == inf > 2
    error('Put in 1 for it is a leap year or 0 for not a leap year')
end

mo = input('What month is it? (1-12)');
if mo ~= 1:12;
    error('You must put in the number of the month between 1 and 12')
end

da = input('What day is it? (1-31)');
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

