function [all_theta, J_history] = gradientDescent(X, y, k, all_theta, alpha, iterations)

J_history = zeros(iterations, k);
m = size(X, 1);
n = size(X, 2);

for class = 1:k

y_class = y==class;
theta = all_theta(class,:);

	for iter = 1 : iterations
		temp = zeros(size(theta));
		
		for feature = 1:n
			temp(1, feature) = (alpha/m)*sum((sigmoid(X*theta') -y_class).*X(:,feature));
		end	
		
		theta = theta - temp;		
		J_history(iter, class) = computeCost(X, y_class, theta);
	end
	
	all_theta(class,:) = theta;
end

end