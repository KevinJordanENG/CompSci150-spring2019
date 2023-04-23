%L12a3 computes specific savings vs cost for a college savings account
%compute savings
savings = zeros(1,216); %iterations
savings(1)=1000; %initialize
for k=2:216 %for increment
    savings(k) = (savings(k-1) + savings(k-1).*(.005)+100); %running update savings
end
%vectorize savings vs years for graph
yearss=[1:18]; sy=[savings(12:12:end)];
%define %increase in tuition for cost
increase = [10,8,10,16,15,4,6,7,8,10,8,12,14,15,8,7,6,5,7,8,9];
%compute cost
cost = zeros(1,22); %iterations
cost(1)=5000; %initialize
for k = 2:22 %for increment
    cost(k) = cost(k-1) + cost(k-1).*(increase(k-1)/100); %running tuition cost
end
yearsc=[1:22]; %vectorize years for graph
%graph savings and cost vs time
plot(yearss,sy,'r+-',yearsc,cost,'bo-')
title('Savings Totals vs College Cost');xlabel('Years');ylabel('Dollars');legend('Savings','Cost')
fs=savings(end); %index final balance
fprintf('Final Savings Balance $%8.2f \n',fs) %display final balance
Total4YCost = sum(cost(19:end)); %sum for total tuition cost
if Total4YCost <= fs; %check if savings is enough
    fprintf('The Total Tuition of $%9.2f is Under Your Savings of $%8.2f No Need for FAFSA. \n',Total4YCost,fs); %display
else Total4YCost > fs; %did not save enough
    fprintf('The Total Tuition of $%9.2f is More than Your Savings of $%8.2f FAFSA Recommended. \n',Total4YCost,fs); %display
end
