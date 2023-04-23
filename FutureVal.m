function [FV1] = FutureVal(D,i,m)
%FutureVal calculates the running total of deposits and interest in an
%account
N=48; %iterations
FV1=0; %initialize
for k=1:N %for increment
    FV1 = FV1 + D.*((1+i).^(k-1)) %running update of Future Value
end %end for loop
end