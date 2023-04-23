function [NH] = nexthour(Hour)
%nexthour claculates the next hour regardles of 12 or 24 input format
if Hour >= 0 && Hour <= 11;
    NH = Hour + 1;
else Hour >= 12 && Hour <= 23;
    NH = Hour - 11;
end
end