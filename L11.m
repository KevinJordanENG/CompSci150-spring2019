%Program for acids pH
%prompt user for choice
Acidtype = menu('How would you classify your acid?','Strong','Weak','Acid pH Plot');
switch Acidtype %based on user input
    case 1 %if Strong pressed
        HA = input('Please enter the strong acids concentration [HA]: '); %enter concentration
        if (HA < 0);       %check if less than 0 (negative)
            disp('Sorry, please enter a possible positive concentration [HA]') %display error
        elseif (HA < 1e-7);       %check if 0 < HA < 1e-7
            disp('Neutral pH of 7.00')    %display pH neutral
        elseif (HA > .999999999);        %check if over maximum possible
            disp('Sorry, please enter a possible concentration [HA] less than 1') %display error
        else (HA > 1e-7);           %should be in appropriate range
            spH = strongpH(HA); %call f(x) strongpH
            if (spH > 2);       %acid is actually weak
                fprintf('pH of weak acid: %4.2f \n',spH) %display results as weak
            else (spH < 1.999999999);             %acid is strong
                fprintf('pH of strong acid: %4.2f \n',spH) %display results as strong
            end
        end
    case 2 %if Weak pressed
        HA = input('Please enter the weak acids concentration [HA]: '); %enter concentration
        if (HA < 0);    %check if HA is negative
            disp('Sorry, please enter a possible positive concentration [HA]') %display error
        elseif (HA > 1);     %check if over maximum possible
            disp('Sorry, please enter a possible concentration [HA] less than 1') %display error
        else (HA > 0) & (HA < 1); %should be appropriate range
            Ka = input('Please enter the dissociation constant Ka: ');  %enter Ka
            if (Ka < 0);  %check if negative
                disp('Sorry, please enter a positive dissociation constant Ka') %display error
            else (Ka > 0); %proceed
                H = weakH(HA,Ka); %call f(x) weakH
                if (H < 1e-7);     %check if neutral
                    disp('Neutral pH of 7.00')    %display pH neutral
                else (H > 1e-7);    %should be in range
                    wpH = weakpH(H);   %call f(x) weakpH
                    if (wpH < 2);  %check if acid is strong
                        fprintf('pH of strong acid: %4.2f \n',wpH) %display results strong
                    else (wpH > 1.999999999);  %its weak
                        fprintf('pH of weak acid: %4.2f \n',wpH) %display results
                    end
                end
            end
        end
    case 3   %if Acid pH Plot is pressed
        Ka = input('Please enter the dissociation constant Ka: ');  %enter Ka
        if (Ka < 0);  %check if negative
                disp('Sorry, please enter a positive dissociation constant Ka') %display error
            else (Ka > 0); %proceed
                HA = linspace(.01,1,100);    %generate HA vector for x axis
                H = weakH(HA,Ka); %call f(x) weakH
                pH = weakpH(H);   %call f(x) weakpH
                plot(HA,pH,'r')      %plot graph
                title(['pH vs Concentration for dissociation constant Ka =',num2str(Ka)]) %title
                xlabel('Concentration [HA]');ylabel('pH')  %label graph
        end
    otherwise %if x cancel is pressed
        disp('Alright fine be that way....') %error msg
end