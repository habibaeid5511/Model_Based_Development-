%% Task1, While Loop
%% Display even numbers
x = 2;   % Initialize the variable x with the first even number

while x <= 20   % Start the while loop that runs as long as x is less than or equal to 20

    % Display the current even number with a descriptive message
    disp(['The even number is :', num2str(x)])
    
    x = x + 2;      % Increment x by 2 to move to the next even number
end
%% Display factorial of inputs
c=input('Enter a number')
result=1;
i=1;
while c>=i
    result=result*i;
    i=i+1;
end
   disp(['factorial ',num2str(c),' is ' ,num2str(result)])

   %% Task2
   %% Switch Statement
   mode=input('Enter the mode of transportaion\n','s');      % Ask user for mode (string input)
   distance=input('Enter the distance in miles\n');                   % Ask user for distance (numeric)

switch mode                                      % Decide cost per mile based on mode
    case 'car'                                   % If mode is car 
        costPerMile = 25;                        % cost per mile is 25
    case 'train'                                 % If mode is train 
        costPerMile = 10;                        % cost per mile is 10
    case 'bus'                                   % If mode is bus
        costPerMile = 15;                        % cost per mile is 15
    case 'airplane'                              % If mode is airplane 
        costPerMile = 250;                       % cost per mile is 250
    otherwise                                    % Anything else is invalid
        disp('Not valid')                        % Display error message
        return                                   % Exit script early
end

totalCost = costPerMile * distance;              % Compute total trip cost
disp(['The total cost is: ', num2str(totalCost)])% Display the result
          
%% Color Code
code=input('Enter the color code\n','s')
switch code
    case 'k'
        disp('Black color')
    case 'r'
        disp('Red color')
    case 'b'
        disp('Blue color')
    case 'g'
        disp('Green color')
    case 'y'
        disp('Yellow color')
    otherwise
        disp('Out of my cases')
end