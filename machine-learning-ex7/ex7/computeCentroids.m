function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
%You can implement this function using a loop over the centroids. 
%You can also use a loop over the examples; 
%but if you can use a vectorized implementation thatdoes not use such a loop, your code may run faster

% note: matlab may ask you to modify "find(idx == k)" into "idx == k"
% don't do it. They are totally different.
for k = 1:K
  Xind = find(idx == k);
  centroids(k,:) = sum(X(Xind,:))/length(Xind);
end

% =============================================================


end

