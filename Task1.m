%%Numeric Types
intVar= int32(6);      % initialize a variable  with an integer value 
doubleVar=  3.3512;    %initialize a variable  with a double-precision floating-point value

% Display their data types using the class function
disp(['Type of intVar is:' , class(intVar)])
disp(['Type of doubleVar is:',  class(doubleVar)])

%%Creating Numeric Arrays
evenNumbers=linspace(2,10,5); % a row vector containing the first 5 even numbers (2, 4, 6, 8, 10).
evenNumbers2=(2:2:10);        % another way for a row vector containing the first 5 even numbers (2, 4, 6, 8, 10).

primeNumbers=primes(12)' ;    %a column vector containing the first 5 prime numbers (2, 3, 5, 7, 11)
%Display Numbers
disp('evenNumbers=')
disp(evenNumbers)
disp( 'primeNumbers=')
disp( primeNumbers)

%%Specialized Matrix Functions
identityMatrix =eye(3)  % a 3x3 identity matrix 
magicSquare=magic(3)    %a 3x3 magic square 

%%Matrix Concatenation

% Concatenate horizontally
combinedVector=[evenNumbers,primeNumbers'];
disp('combinedVector =')
disp(combinedVector)

% Concatenate vertically
combinedMatrix = [identityMatrix; magicSquare];  %Resized magicMatrix to be a 3x3 matrix for right Concatenation
disp('combinedMatrix =')
disp(combinedMatrix)
