function [predictions] = predict(X, all_theta)

m = size(X, 1);
n = size(X, 2);

pred = sigmoid(X * all_theta');

predictions = zeros(m,1);

for eg = 1:m
	[val, ival] = max(pred(eg,:));
	predictions(eg,1) = ival;
end


end