function [J] = computeCost(X, y, theta)

m = size(X, 1);

J = (1/m) * sum(-y.* log(sigmoid(X*theta')) - (1-y).*log(1-sigmoid(X*theta')));

end