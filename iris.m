%load the data
[X, y] = loadData();

%sizes
m = size(X, 1);
n = size(X, 2);

%number of classes
k = 3;


trainingSetRatio = 0.7;
[Xtrain, yTrain, Xtest, yTest] = getTrainingAndTestSet(X, y, trainingSetRatio);


%initialise theta
all_theta = zeros(k, n);
alpha = 0.01;
iterations = 1500;

[all_theta, J_history] = gradientDescent(Xtrain, yTrain, k, all_theta, alpha, iterations);

figure;
plot(1:iterations, J_history(:,1), '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J for classifier 1');

figure;
plot(1:iterations, J_history(:,2), '-r', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J for classifier 2');

figure;
plot(1:iterations, J_history(:,3), '-g', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J for classifier 3');

%predict
predictions = predict(Xtest, all_theta);

compare = [predictions yTest]

total = size(yTest, 1)
correct = sum(predictions==yTest)
accuracy = (correct/total)*100