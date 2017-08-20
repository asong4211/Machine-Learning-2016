function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

 
 for i = 1:size(X,1)
  %Initialize the distance vector, will be a 3 *1 vector that allows me to store the output of every distance
  distance = zeros(size(centroids,1),1);
    for a = 1:size(centroids,1)
      %calculate the distance from X to each centroid, take the square root sum, and then put it into our distance vector
        distance(a) = sum((X(i,:)-centroids(a,:)).^2);
    end
    %find the minimum in this  distance vector, locate its index and values, but we only need the index
    [variable,index] = min(distance);
    %store it to our index vector
    idx(i)= index;
end
% =============================================================




end

