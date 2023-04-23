x = linspace(0, 7*pi, 100); % generate 100 value x array
y = x .* sin(x);            % evaluate x for f(x) to generate y array
hplot1 = plot(x,y)          % assign line data to hplot1 handle variable
hf = gcf                    % get and assign current figure handle to hf
ha = gca                    % get and assign current axes handle to ha
set(hf, 'Visible', 'off')   % make figure hf disappear from view
set(hf, 'Visible', 'on')    % make figure hf reappear
set(ha,'XGrid','on')        % turns xgrid on for axes ha
set(ha,'YGrid','on')        % turns ygrid on for axes ha
set(hplot1,'LineWidth',4)   % set Linewidth to 4 for hplot1
set(ha,'FontSize',12)       % set the font size to 12 for axes ha
set(ha,'XLim',[0 20])       % set x-axis limits to be 0 to 20 for axes ha
set(ha,'YLim',[-20 20])     % set y-axis limits to be -20 to 20 for axes ha
set(0,'Units','Normalized') % normalizes to [0 0 1 1], which allows you to write
% programs that will work for different monitors
set(hf,'Units','Normalized')% normalizes units for figure so it is compatible
set(hf,'Position',[0 0.5 0.5 0.5])%scale and position the figure window boundary
% in the top left corner
hxlab = xlabel('x');        % labels x axis and assigns text handle to hxlab
hylab = ylabel('y');        % labels y axis and assigns text handle to hylab
set(hylab,'String','y = x sin(x)')% assigns 'y = x sin(x)' string in hylab text object
set([hxlab,hylab],'Color',[0 0 1])% changes color properties of [hxlab,hylab] to blue
set([hxlab,hylab],'FontSize',14)% changes fontsize of [hxlab,hylab] to 14 point
set([hxlab,hylab],'FontWeight','bold')% changes fontweight of [hxlab,hylab] to bold
% Now animate and capture...
hold on; % hold current settings
for k = 1:32
    y = x .* sin(x - k * pi/8); % phase shift wave depending on k
    set(hplot1, 'YData', y); % change y data to new values
    M(k) = getframe; % capture each figure as movie frame
end
hold off;
movie(M,4,4) % To play movie M, 4 times, at 24 frames per second