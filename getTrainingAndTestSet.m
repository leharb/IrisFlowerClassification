function [Xtrain, yTrain, Xtest, yTest] = getTrainingAndTestSet(X, y, trainingSetRatio)

m = size(X, 1);
n = size(X, 2);

trainSetSizeLimit = trainingSetRatio*m;
Xtrain = X(1:trainSetSizeLimit,:);
yTrain = y(1:trainSetSizeLimit,:);

Xtest = X(trainSetSizeLimit+1:end,:);
yTest = y(trainSetSizeLimit+1:end,:);

end