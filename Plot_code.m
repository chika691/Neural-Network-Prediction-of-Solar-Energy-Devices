%% Reading the results obtained from the simulation from an excel file
W1 = xlsread('data.xlsx',1);%Reading sheet 1
%Inputs
CG = W1(:,1); SKT = W1(:,2); H = W1(:,3); A = W1(:,4); h_conv = W1(:,5); v = W1(:,6); T_a = W1(:,7);
%FEM Outputs
P_te1a = W1(:,8); N_en1a = W1(:,9); P_te2a = W1(:,10); N_en2a = W1(:,11); P_te3a = W1(:,12); N_en3a = W1(:,13);
P_te4a = W1(:,14); N_en4a = W1(:,15); P_te5a = W1(:,16); N_en5a = W1(:,17); P_te6a = W1(:,18); N_en6a = W1(:,19);
P_te7a = W1(:,20); N_en7a = W1(:,21);
%ANN Outputs
P_te1b = W1(:,22); N_en1b = W1(:,23); P_te2b = W1(:,24); N_en2b = W1(:,25); P_te3b = W1(:,26); N_en3b = W1(:,27);
P_te4b = W1(:,28); N_en4b = W1(:,29); P_te5b = W1(:,30); N_en5b = W1(:,31); P_te6b = W1(:,32); N_en6b = W1(:,33);
P_te7b = W1(:,34); N_en7b = W1(:,35);

%% Concentrated solar irradiance (Suns)
figure
plot(CG, P_te1a, '-k'); xlabel('Concentrated solar irradiance (Suns)'); ylabel('Power (W)') 
hold on
plot(CG, P_te1b, 'ko', 'MarkerFaceColor','k');

yyaxis right
ax = gca;
          ax.XColor = 'k'; % black
          ax.YColor = 'k'; % red
          
plot(CG, N_en1a, '-r'); ylabel('Efficiency (%)') 
hold on
plot(CG, N_en1b, 'rs', 'MarkerFaceColor','r');

legend('FEM, Power (W)', 'ANN, Power (W)','FEM, Efficiency (%)', 'ANN, Efficiency (%)', 'Location','South');

%% Percentage content of Skutterudite (%)
figure
plot(SKT, P_te2a, '-k'); xlabel('Percentage content of Skutterudite (%)'); ylabel('Power (W)') 
hold on
plot(SKT, P_te2b, 'ko', 'MarkerFaceColor','k');

yyaxis right
ax = gca;
          ax.XColor = 'k'; % black
          ax.YColor = 'k'; % red
          
plot(SKT, N_en2a, '-r'); ylabel('Efficiency (%)') 
hold on
plot(SKT, N_en2b, 'rs', 'MarkerFaceColor','r');

legend('FEM, Power (W)', 'ANN, Power (W)','FEM, Efficiency (%)', 'ANN, Efficiency (%)', 'Location','South');

%% Height of thermoelectric leg (mm)
figure
plot(H, P_te3a, '-k'); xlabel('Height of thermoelectric leg (mm)'); ylabel('Power (W)') 
hold on
plot(H, P_te3b, 'ko', 'MarkerFaceColor','k');

yyaxis right
ax = gca;
          ax.XColor = 'k'; % black
          ax.YColor = 'k'; % red
          
plot(H, N_en3a, '-r'); ylabel('Efficiency (%)') 
hold on
plot(H, N_en3b, 'rs', 'MarkerFaceColor','r');

legend('FEM, Power (W)', 'ANN, Power (W)','FEM, Efficiency (%)', 'ANN, Efficiency (%)', 'Location','Northeast');

%% Area of thermoelectric leg (mm^2)
figure
plot(A, P_te4a, '-k'); xlabel('Area of thermoelectric leg (mm^2)'); ylabel('Power (W)') 
hold on
plot(A, P_te4b, 'ko', 'MarkerFaceColor','k');

yyaxis right
ax = gca;
          ax.XColor = 'k'; % black
          ax.YColor = 'k'; % red
          
plot(A, N_en4a, '-r'); ylabel('Efficiency (%)') 
hold on
plot(A, N_en4b, 'rs', 'MarkerFaceColor','r');

legend('FEM, Power (W)', 'ANN, Power (W)','FEM, Efficiency (%)', 'ANN, Efficiency (%)', 'Location','Northeast');

%% Convective cooling coefficient (W/m^2-K)
figure
plot(h_conv, P_te5a, '-k'); xlabel('Convective cooling coefficient (W/m^2-K)'); ylabel('Power (W)') 
hold on
plot(h_conv, P_te5b, 'ko', 'MarkerFaceColor','k');

yyaxis right
ax = gca;
          ax.XColor = 'k'; % black
          ax.YColor = 'k'; % red
          
plot(h_conv, N_en5a, '-r'); ylabel('Efficiency (%)') 
hold on
plot(h_conv, N_en5b, 'rs', 'MarkerFaceColor','r');

legend('FEM, Power (W)', 'ANN, Power (W)','FEM, Efficiency (%)', 'ANN, Efficiency (%)', 'Location','None');

%% Wind speed (m/s)
figure
plot(v, P_te6a, '-k'); xlabel('Wind speed (m/s)'); ylabel('Power (W)') 
hold on
plot(v, P_te6b, 'ko', 'MarkerFaceColor','k');

yyaxis right
ax = gca;
          ax.XColor = 'k'; % black
          ax.YColor = 'k'; % red
          
plot(v, N_en6a, '-r'); ylabel('Efficiency (%)') 
hold on
plot(v, N_en6b, 'rs', 'MarkerFaceColor','r');

legend('FEM, Power (W)', 'ANN, Power (W)','FEM, Efficiency (%)', 'ANN, Efficiency (%)', 'Location','Northeast');

%% Ambient temperature (K)
figure
plot(T_a, P_te7a, '-k'); xlabel('Ambient temperature (K)'); ylabel('Power (W)') 
hold on
plot(T_a, P_te7b, 'ko', 'MarkerFaceColor','k');

yyaxis right
ax = gca;
          ax.XColor = 'k'; % black
          ax.YColor = 'k'; % red
          
plot(T_a, N_en7a, '-r'); ylabel('Efficiency (%)') 
hold on
plot(T_a, N_en7b, 'rs', 'MarkerFaceColor','r');

legend('FEM, Power (W)', 'ANN, Power (W)','FEM, Efficiency (%)', 'ANN, Efficiency (%)', 'Location','Northeast');