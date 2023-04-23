n = input('Please enter an integer: ');
k = 0;
nums = zeros(1,6);
while length(nums) <= 5
    k = k + 1;
    if (mod(n, 1) == 0) == 0
        n = input('No, please enter an integer: ');
    else
        nums(k) = n;
    end
end