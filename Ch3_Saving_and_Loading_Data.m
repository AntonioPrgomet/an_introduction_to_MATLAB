%% Chapter 3: Saving and Loading Data

%% 3.1 Saving Variables
A = [1 2; 3 4];
B = magic(3);
c = 1:2:10;
d = linspace(1,10,8);

save('important_data', 'A', 'c' ) %Saves the specified variables A and C in the current folder. 
save('all_data')  % Saves all variables in the workspace in a file called "all_data". The file is saved in current folder. 

%% 3.2 Loading Variables 
load('all_data.mat', 'B', 'd') %Loads only the specified variables, B and d. 
load('all_data.mat') %Loads all variables in the file