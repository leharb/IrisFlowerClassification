function [X, y] = loadData()

data = csvread('iris.data');
m = size(data, 1);
n = size(data, 2);
rndIDX = randperm(m); 

newSample = data(rndIDX(1:m), :); 

X = newSample(:,1:4);
y = newSample(:,5);

end