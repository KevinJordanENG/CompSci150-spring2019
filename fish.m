fishmat = load('fishdata.txt');
weeks = fishmat(:,1);
totalfishcount = fishmat(:,2);
lin = interp1(weeks,totalfishcount,4.4);spl = spline(weeks,totalfishcount,4.4);
fprintf('Linear interpolated 4.4 week count: %4.2f \n',lin)
fprintf('Spline interpolated 4.4 week count: %4.2f \n',spl) 
fit = polyfit(weeks,totalfishcount,1); polyval(fit,weeks);
plot(weeks,totalfishcount,'ro',)