function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% add a new column of 1 to X as a bias unit. 
X = [ones(m,1) X];
% size of X is 5000*401 now, and size of theta1 is 25 * 401,hence we could just transpose theta 1 to get the multiplication.
a2 = sigmoid(X* Theta1');
% same thing, add a new column of 1 to a2 as a bias unit. 
a2 = [ones(size(a2,1),1) a2];
% prediction here is equivalent to a3 also h(x)
prediction = sigmoid (a2 * Theta2');
[v p] = max(prediction,[],2);




% =========================================================================


end
