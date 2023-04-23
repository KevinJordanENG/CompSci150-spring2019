function [FV2] = FutureVal2(D,i,m)
%FutureVal2 is a non summation version of FutureVal
FV2 = ((D.*(1-((1+i).^m)))/(1-(1+i))); %alt calc
end

