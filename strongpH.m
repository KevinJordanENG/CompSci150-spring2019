function [pH] = strongpH(HA)
%strongpH calculates the pH of strong acids
%   user input concentration of [HA] (mol/L)
pH = -log10(HA);
end