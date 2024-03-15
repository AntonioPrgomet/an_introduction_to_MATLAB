%% Chapter 2: Matrices and Functions

%% 2.1 Creating Vectors 
x = [1 2 3 4]  %Creating a Vector.
x' %Transpose

y = [1; 2; 3; 4] %Column vector


1:14  %will create a  a unit-spaced vector from 1 to 14. 

% start:step:end 

1:3:14 % last element is 13 because that is the last step we can do before passing 14 with stepsize 3. 


%A related function is linspace, the syntax is: 
linspace(X1, X2, N), % this generates N points between X1 and X2 which are linearly spaced. N by default 100. 

linspace(1,10,3) %three points
linspace(1,10)  %100 points by default. 

% A related function is logspace, 
doc logspace
   
%% 2.2 Creating Matrices 

A = [1 5 7; 2 1 3]

%zeros and ones
zeros(3) %One argument produces a square matrix. 
zeros(3,2) 

ones(2,3) 

%repmat
repmat(2, 3, 4)  %unlike zeros/ones, choose number yourself
repmat([3 2; 4 5],2,3)  %Repeat the matrix two times in row dimension, 3 times in column dimension 

%magic
magic(3) 

%% 2.3 Scalar Functions 
%Some functions operate, essentially, on scalars, but operate entry-wise when applied to
%a vector or matrix.

log10(10)
sin(3*pi/2)

%Scalar function on vector
y = [0 pi/2 pi 3*pi/2] 
sin(y)

%Scalar function on matrix
A = [1 100; 10 1000]
log10(A)

%List of elementary and specialized math functions
help elfun 
help specfun


%% 2.4 Vector Functions - sum, mean, median, var, std

A = [10 1 7; 1 2 3; 1 1 3]  %Creating a matrix

%sum(A, dim). dim = 1 (default) a row vector containing the sum of each column
%sum(A, 'all')
sum(A)
sum(A,1) 
sum(A,2) 
sum(A, 'all')

%mean, median 
mean(A) 
mean(A, 2)
median(A) 

%variance and standard deviation.
%var(A, w, dim). w = 0 (Default) normalize by N-1, w = 1 normalize by N.

var(A)   %row vector containing the variance of each column, normalize by N-1
var(A, 0, 1)
var(A, [], 1) %use default argument for the weighting scheme []

var(A, [], 'all')

%std(A, w, dim) works the same way as the variance function.

%% 2.4.1 max, min 
%works in a similar way as the sum function, but there is a difference. 
A = [1 5 7; 2 2 3; 1 1 3] 

%Comparing matrix A with the number 2 elementwise, returning the biggest element and
%forming a matrix of all the comparisons.
max(A, 2) 

B = [6 6 6; 6 6 6; 6 6 6] 

max(A, B) %Comparing matrix A and B elementwise. 


 
max(A, [], 1) %a row vector containing the maximum of each column.
% second argument = [], meaning we leave that argument undefined 

%min works in exactly the same way as the max function. 

%% 2.5 Matrix Operators
A = [5 2 3; 4 3 1];  %2 x 3 matrix 
B = [2 2; 3 1; 1 0]; %3 x 2 matrix
C = [1 0; 0 10]; %2 x 2 matrix

B 
B' 

A + A 
% A - B  %Dimension wrong 
A - B' %Prime is transpose operator

A*B 


C^3  %These two computations are the same thing. 
C*C*C

%% 2.6 Entry wise operators 
A = [5 2 3; 4 3 1]; 
B = [1 2 1; 2 4 2]; 

%We could also perform *, /, ^ elementwise by writing a dot (.) before. 
A.*B  %Elementwise multiplication
A./B
A.^2

%Matrix addition and subtraction is (already) elementwise. 

%% 2.7 Backslash and Slash Operator (Matrix operator)
% Backslash (\) operator, also called mldivide
% A*x=b solved by: x = A\b. 

% We have the following equation system 
% x + y = 4 
% 2x + y = 3 
% 
% x = -1, y = 5. Verify. 

% This system can be solved by: 

A = [1 1; 2 1] 
b = [4; 3]

x = A\b

%Warning, as always it is important to know what you  do when typing in your code. 
% size(A) = m x n (m ~= n) then we get the least squares solution. 

%Write (doc \ ) or dock mldivide for documentation.

% A closely related operator is slash operator (/)
%Write ( doc / ) or doc mrdivide to read about it. 


%% 2.8 Matrix functions - Rank and Determinant
A = [1 2; 3 3] 
det(A)
rank(A)

help matfun % To see a list of matrix functions 

%% 2.9 Relational operators 
%Relational Operators Relational operators perform element-by-element
%comparisons between matrices
  %  <	 Less than
  %  <=	 Less than or equal to
  % 
  %  >	 Greater than
  %  >=	 Greater than or equal to
  % 
  %  ==	 Equal to
  %  ~=	 Not equal to 

% logical 1 means TRUE, logical 0 means FALSE 
2 > 3 
10 > 3

A = [-3 2; 3 4] 
B = [-2 2; 2 2] 
  
B >= 2 %Which elements are greater than 1 

A >= B  %Comparing elementwise 
A == B  

isequal(A,B) %Compares the complete matrix, not elementwise 

%% 2.10 Functions with Multiple Outputs - maxk 
A = [1 5 90; 2 2 3; 1 110 3; 5 7 9; 11 13 10] 

maxk(A, 2) %returns the two largest elements from each column 


%Some functions allow for multiple outputs, the syntax is then:
[max, index] = maxk(A, 2) %name of output is arbitrary
[m, i] = maxk(A, 2) %Output variable name, you can choose that yourself. 

%% 2.11 Anonymous functions
%In mathematics we often have relationships of the form y = x^2.
% This is easily done in matlab, it is called Anonymous functions.

y = @(x)  x^2 
y(2)  %4 just as expected 
y(3) %9 just as expected 

%Can be generalized to multiple arguments. 
square2 = @(x,y) x^2 + y^2 
square2(1,2)  %5 just as expected 
