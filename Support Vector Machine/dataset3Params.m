function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and
%   sigma. You should complete this function to return the optimal C and
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example,
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using
%        mean(double(predictions ~= yval))
%

% CSteps = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
% sigmaSteps = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
% results = zeros(size(CSteps, 2), size(sigmaSteps, 2));
%
% for i = 1:size(CSteps, 2)
%   for j = 1:size(sigmaSteps, 2)
%     C = CSteps(1, i);
%     sigma = sigmaSteps(1, j);
%
%     model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
%     predictions = svmPredict(model, Xval);
%     results(i, j) = mean(double(predictions ~= yval));
%   end
% end
%
% % Find min val and corresponding indices in results
% [min_vals_per_col, row_indices] = min(results);
% [min_val, col_index] = min(min_vals_per_col);
% row_index = row_indices(col_index);
%
% C = CSteps(1, row_index);
% sigma = sigmaSteps(1, col_index);

% Shortcutting the best examples that I’ve found
C = 1;
sigma = 0.1;

% =========================================================================

end
