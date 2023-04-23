N = 100;
for p = 1:N
    x = randi([0 999],1,2000);
    tic
    sort(x);
    t = toc;
end
tave = sum(t)/100