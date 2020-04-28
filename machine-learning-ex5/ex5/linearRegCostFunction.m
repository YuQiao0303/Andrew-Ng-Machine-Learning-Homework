function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
%  x0 has already been added to X, theta is m+1 dimentional too
H = X * theta;
cost = ((H-y)' * (H-y))/ (2 * m);
temp = theta(2:end);
reg_term = (temp'* temp) * lambda /(2*m);
J = cost + reg_term;

grad = (X' * (H - y))/ m ;
grad = grad + lambda * theta / m;
grad(1) = grad(1) - lambda * theta(1) /m;










% =========================================================================

grad = grad(:);

end
