lambda = input('enter lamda value: ') %  lambda, weighting factor entered by the user 
es = input('enter error value ( not as percent): ') % acceptable error value entered by the user

% take the input of the coefficients for the first equation
  x1 = input('enter x coefficient for first equation:') 
    y1 = input('enter y coefficient for first equation:')
        z1 = input('enter z coefficient for first equation:')
katsayi1 = [x1 y1 z1]; % the received coefficients are transformed into an array
sonuc1 = input('enter the result of first equation: ') % result of first equation taken 
sonucar1 = sonuc1; 

% take the input of the coefficients for the second equation
    x2 = input('enter x coefficient for second equation:')
        y2 = input('enter y coefficient for second equation:')
            z2 = input('enter z coefficient second equation:')
katsayi2 = [x2 y2 z2]; % the received coefficients are transformed into an array
sonuc2 = input('enter result of second equation: ')  % result of second equation taken
sonucar2 = sonuc2;

% take the input of the coefficients for the third equation
    x3 = input('enter x coefficient for third equation:')
        y3 = input('enter y coefficient for third equation:')
            z3 = input('enter z coefficient for third equation:')
katsayi3 = [x3 y3 z3];% the received coefficients are transformed into an array
sonuc3 = input('enter result of third equation: ') % result of third equation taken
sonucar3 = sonuc3;

% A preliminary estimate for x-y-z values is requested 
x0 = input('any initial guess for x:')
y0 = input('any initial guess for y:')
z0 = input('any initial guess for z:')

x = [x0 y0 z0];  % Initial guess for the solution x-y-z 
error = 1;   % Initializing error
iter = 0; % number of iterations
% I applied the method's formula inside the loop 

while error > es % Running the code until actual error is greater than tolerance 
    x_old = x;
    % does the iteration for x
    x(1,1) = (1-lambda) * x(1,1) + lambda * ((sonucar1 - katsayi1(1,2) * x(1,2) -    katsayi1(1,3) * x(1,3)) / (katsayi1(1,1)));
    % does the iteration for y
    x(1,2) = (1-lambda) * x(1,2) + lambda * ((sonucar2 - katsayi2(1,1) * x(1,1) -    katsayi2(1,3) * x(1,3)) / (katsayi2(1,2)));
    %does the iteration for z
    x(1,3) = (1-lambda) * x(1,3) + lambda * ((sonucar3 - katsayi3(1,1) * x(1,1) -    katsayi3(1,2) * x(1,2)) / (katsayi3(1,3)));
    error = norm(x - x_old) / norm(x); % error calculation 
    iter = iter + 1; % iteration counter, at the result we will show how much iteration made the code

end

fprintf('Total number of iterations needed is: %d\n', iter); % prints how many iterations were done at the end of the loop

fprintf('x= %d\n', x(1,1)); % prints x value
fprintf('y= %d\n', x(1,2)); % prints y value
fprintf('z= %d\n', x(1,3)); % prints z value