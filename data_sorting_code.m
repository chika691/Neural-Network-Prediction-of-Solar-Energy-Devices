%% Code to automatically arrange, extract data and make neural network predictions
filename = 'Train_data.xlsx';
sheet = 1;
xlrange = 'A26:G6689';

T = xlsread(filename,sheet,xlrange);

%Input data Faeture normalization
P_n = 0.1+(0.9-0.1).*(T-min(T))./(max(T)-min(T)); %Normalized data
P = (P_n-0.1).*(max(T)-min(T))./(0.9-0.1)+min(T); %Un-normalized data

%Extract normalized Input
Input = P_n(:,1);

%Extract normalized Target
Target = P_n(:,2:7);

%% Neural Network
nftool
%% Un-normalize output data
O_n = [Input(:,1) output'];
O = (O_n-0.1).* (max(T)-min(T))./(0.9-0.1)+min(T); % Un-normalize the ANN output results

%Data visuals
plot(T(:,1), T(:,2))
hold on
plot(O(:,1), O(:,2))
ylabel('Air temperature (K)'); xlabel ('Number of days');
legend('NASA data', 'ANN prediction','Location','best');
%%
