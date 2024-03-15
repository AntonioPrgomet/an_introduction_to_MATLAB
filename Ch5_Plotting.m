%% Chapter 5: Plotting

%% 5.1 Plot(y), Plot(x,y)  
y = [2 3 -2 3];
plot(y, '--*')  %Ignore '--*', that's line specification and we will come to that later 

x = linspace(-4,4,100);
plot(x.^2)  %Misleading

%"Correct way", plot(x,y)
plot(x,x.^2)  

% To wide distance between points
x1 = linspace(-4,4,3)   
y1 = x1.^2; 
plot(x1,y1,'--*')

%% 5.2 Labels, axis-limits, title 
x = linspace(-4,4,80);       
y = x.^2;
plot(x,y) 
title('Plotting x^2')
xlabel('x-axis') 
ylabel('y = x^2') 
xlim([-12 12])
%ylim works the same way 

%% 5.3 Line Specification - Line style, Marker, Color
x = linspace(-4,4,80);       
y = x.^2;

plot(x,y, ':+b') 

% doc plot

%% 5.4 Hold On, Legend, Grid
x = linspace(-4,4,100); 
y1 = x.^2;
y2 = 2*x.^2;

plot(x,y1, '-*b') 
hold on  %Add a plot to existing figure window
plot(x,y2) 
hold off %No more plots should be added to exisiting figure window. 
legend('y = x^2', 'y = 2x^2') %So we can distinguish between the plots
grid minor
grid on

%% 5.5 Subplot
% Sometimes you want to have multiple plots by splitting the figure window in a grid, use subplot! 

x = linspace(0,2*pi, 100) 
y1 = cos(x) 
y2 = sin(x)
y3 = abs(cos(x))
y4 = abs(sin(x))

subplot(1,4,1) 
plot(x,y1) 
title('cos(x)') 
subplot(1,4,2) 
plot(x,y2) 
title('sin(x)') 
subplot(1,4,3) 
plot(x,y3) 
title('abs(cos(x))')
subplot(1,4,4)
plot(x,y4)
title('abs(sin(x))')
sgtitle('Plots of trigonometric functions') 
%sgtitle produces a main title for all the subplots whereas title is for the specific subplots

%% 2 by 2 grid 
subplot(2,2,1) 
plot(x,y1) 
title('cos(x)') 
subplot(2,2,2) 
plot(x,y2) 
title('sin(x)') 
subplot(2,2,3) 
plot(x,y3) 
title('abs(cos(x))')
subplot(2,2,4)
plot(x,y4)
title('abs(sin(x))')
sgtitle('Plots of trigonometric functions')

%% 5.6 Multiple Figure Windows - figure
% If we have multiple plots in a section, it will only plot the last one.
x = linspace(-4,4,100);
y1 = x.^2;
y2 = -x.^2;
y3 = exp(x)

plot(x,y1)
plot(x,y2)
plot(x,y3)

%% Figure - Creating new figure windows
figure
plot(x,y1)

figure
plot(x,y2)

figure
plot(x,y3)

% clf [clears figure window]
%close [closes current figure]
% close all [Closes all figure windows] 

%% 5.7.1 Scatterplot 
% Scatterplot sometimes called Bubble plot.
x = [1 2 3 7]
y = [3 1 -2 4] 

scatter(x,y)  %Demonstrate that points are plotted by location (x,y) 

%Measurments of length and weight of some individuals
length = [182 190 167 145 185 173 183 147 120 201 114 117 167 148 155 183 189 186 174 159 144 133 188 210] 
weight = [83 95 127 54 94 83 65 45 53 110 37 42 65 37 45 84 93 94 73 45 42 39 73 85]

scatter(length, weight, 'filled', 'b')
xlabel('Length')
ylabel('Weight')
ylim([25 130])


%% 5.7.2 Brushing, Export Brushed
%Measurments of length and weight of some individuals
length = [182 190 167 145 185 173 183 147 120 201 114 117 167 148 155 183 189 186 174 159 144 133 188 210] 
weight = [83 95 127 54 94 83 65 45 53 110 37 42 65 37 45 84 93 94 73 45 42 39 73 85] 
scatter(length, weight, 'filled', 'b')
xlabel('Length')
ylabel('Weight')
ylim([25 130])

%Brushing, hold shift to select multiple values 
%Drag a rectangle to select multiple values in a area 

%Tools, brushing > Export brushed
