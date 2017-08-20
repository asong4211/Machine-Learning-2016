function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

mu = mean(X);
X_norm = bsxfun(@minus, X, mu);
%compute the standard deviation of X_norm
sigma = std(X_norm);
% rdivide is the elemenet by element right division from X_norm to sigma
X_norm = bsxfun(@rdivide, X_norm, sigma);


% ============================================================

end
