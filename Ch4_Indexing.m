%% Chapter 4: Indexing

%% 4.1 Vector Indexing
% Accessing elements in an vector/matrix (based on their index) is called indexing. 

x = [2 4 5 8 10 12 3 4 10 13 12 15 13 8] 
x(3) 

x([1 3 4]) %the first, third and fourth element
x([end])  %the last element
x([1:4 9:end]) %First four elements, and ninth to last element 
x([end-2:end]) %Last 3 elements,don't have to count 

x(x>=10) %Logical indexing

%% 4.2 Matrix Indexing - Positional, Linear and Logical
A = [1 3 13 2; 8 2 4 5; 2 3 11 1; 9 2 7 1]
A(2,3) %Element in row 2 and column 3

% When indexing, a single : is shorthand notation for 1:end and is often used to extract entire rows or columns:
A(1,:) %First row
A(1, 1:end)

A(:,3) %third column

A([1 3], [1 4]) %Elements from row 1 and column 1,4.  Row 3 and column 1 and 4.
%This is not element (1,1) and (3,5). For that we need linear indexing. 

% Want to extract specific elements, then we use Linear indexing, index now runs down the columns.
A 
A(2) 
A(5) 
A(end)

A([2 5 end])

% Logical indexing 
A(A > 10) %Extracts all elements greater than 10.

%% 4.3 Reshape Function
b = A(:)  % Makes the matrix into a column, where first column put first, then second and so on. 
reshape(b, 5,5)

%% 4.4 Concatinationon and Deletion 
A = zeros(2,2) 
B = ones(2,2) 
C = repmat(3,2,2)

D = [A; B; C] % A matrix consisting of matrices, often called block matrix. 

D(2,:) = [] %Deletes the second row 

D([1 3]) = [] %Delete first and third element (linear indexing) and changing the matrix to a row vector.


%% 4.5  Replace Matrix Elements
A = [2 7 1; 8 2 8; 1 8 2]

A(1,3) = 100  % Positional indexing 
A([3 5]) = 88 %Linear indexing
A(A==2) = 0  % Logical indexing      

%Can be done manually aswell, double click on variable A in Workspace. 
