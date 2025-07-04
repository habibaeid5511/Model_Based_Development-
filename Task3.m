%%Task1
function sum=mySimpleFunction(a,b)
add=a+b;
disp(add)
end

%%Task2
function area = calculateCircleArea(r)
area = pi* r^2
disp (['area of circle is ',num2str(area)])
end

%%Task3
function [avg,sd]=computeStatistics(data)
avg=mean(data)
sd=std(data)
fprintf('Mean is  %.5f\n :', avg)
fprintf('standard Deviation is  %.5f\n : ', sd)
end

%%Task4
function outerFunction()
% This is the outer function — the one you call

    % input values
    a=input('enter a :\n');
    b=input('enter b :\n') ;


    % Call the nested inner function with a and b
    sumResult = innerFunction(a, b);

    % Display the result of the addition
    fprintf('The sum is: %d\n', sumResult);

    
    % Now comes the nested function:
    function result = innerFunction(x, y)
        % This function is defined inside outerFunction
        result = x + y;  % It just adds x and y
    end

end


%%Task5
function result = applyFunction(funcHandle, vec)

    % Apply the function to each element using arrayfun
    result = arrayfun(funcHandle, vec);
end


%%Task6
b = 5;
h = 8;

triArea = @(base,height) 0.5 * base * height;   % anonymous function

areaVal = triArea(b, h);                          % CALL the function
disp(['Area of triangle = ', num2str(areaVal)])


%%Task7
vector=[1 2 3 4 5 6 7 8 9];
x=max(vector)
y=min(vector)
z=sum(vector)
f=size(vector)
g=length(vector)