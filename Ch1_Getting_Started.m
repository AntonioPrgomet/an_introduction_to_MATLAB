%% Chapter 1: Getting Started 

%% 1.4 Creating a Script
% In practice, write code in a script. Better overview and easier to work. 

% Good practice to (1) divide code into sections (%%) and (2) to comment code. 

%% 
% This is a comment. 

% Comment out this  %(Ctrl + R, Ctrl + T)

%% Section 1: Writing code on a new line (...)
1 + 2 + ... 
    3 + 4 + ... 
    2 + 1 

%% Section 2: Terminate output (;)

a = 1 + 1   
b = 1 + 2; % Output supressed, computation still carried out


%% Section 3: Running your code 

% Running whole script 
% Ch1_Getting_Started %Alternative, Editor > Run 

% Running Section, Ctrl + Enter. 
% Alternative, Editor > Run Section (Run and Advance). 

% Running selected lines, select the lines and press F9. 
1 + 1 
2 + 1

%% Section 4: Undock script
% Undock script - If working on two screens. 

%% Section 5: Some recap from previous video 
%Purpose to demonstrate how a script could look like and for you to recap
%that lecture. 

% Basic Mathematics  
1 + 1 
10 * 10 

log(100)
log10(100) 
sin(pi/2)

% help log 
% doc log

% help elfun 
% help specfun 

%Complex numbers 
z1 = 1 + 2i 
z2 = 3 + 1j 
real(z1) 
imag(z1)
z1 + z2  % Adding two complex numbers

% Creating variables 
a = 1 
b = 2 
a + b %Stored as ans since no assignment

% Creating a vector 
x = [1 10 100 1000] 
sum(x)
log10(x) %Takes the logharitm of each element in vector x

% Creating a matrix 
A = [1 3; 2 4] 
A(2,2)  %Exract element in row 2, column 2

sum(A) % Returns sum of each column
exp(A) % Exponentiate each element in matrix A. 

%clc [clears the command window] 
%clear a A [clears the variable a and A]
%clear [clears the complete workspace] 
