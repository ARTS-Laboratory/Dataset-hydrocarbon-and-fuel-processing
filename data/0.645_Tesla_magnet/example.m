%{
-------------------------------------------------
An example showing how to load and plot some 
hydrocarbon and jet fuel T2 relaxation curves.

Author: Parker Huggins
-------------------------------------------------
%}

close all; clc;

% read the hydrocarbon data
hcData = readtable('trainingData.xlsx','Sheet','hydrocarbons','Range','B4:AV3958');

hcData = table2array(hcData); % convert table to matrix
time = hcData(:,1);           % extract time
t2Data = hcData(:,2:end);     % extract T2 data

% plot some T2 curves (hydrocarbons)
names = ["toluene","1,3,5-trimethylbenzene","iso-cetane","iso-octane"];
ix = 1;
hold on;
for i = [1,6,9,14]
    plot(time,t2Data(:,i),'DisplayName',names(ix));
    ix = ix + 1;
end
grid on; box on;
xlabel('time (s)'); ylabel('amplitude (V)');
legend;
title('hydrocarbon T2 curves');

% read the jet fuel data
jetData = readtable('data.xlsx','Sheet','jet fuels','Range','B4:BE3958');

jetData = table2array(jetData); % convert table to matrix
time = jetData(:,1);            % extract time
t2Data = jetData(:,2:end);      % extract T2 data

% plot some T2 curves (jet fuels)
names = ["POSF 10151","POSF 10153","POSF 7629","POSF 13690"];
ix = 1;
figure; hold on;
for i = [1,4,9,14]
    plot(time,t2Data(:,i),'DisplayName',names(ix));
    ix = ix + 1;
end
grid on; box on;
xlabel('time (s)'); ylabel('amplitude (V)');
legend;
title('jet fuel T2 curves');