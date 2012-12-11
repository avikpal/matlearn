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
fprintf('%f\n',size(X));
app=ones(m,1);
data=[app X];
 temp1=sigmoid(data*(Theta1)');
  app=ones(size(temp1,1),1);
  data= [app temp1];
 temp2=sigmoid(data*(Theta2)');
 maximum=max(temp2,[],2);
 for i=1:m
     for j=1:num_labels
            fprintf('checking%f\n',j,temp2(i,j));
        if(temp2(i,j)==maximum(i))
            p(i)=j;
            fprintf('the index is %f value is%f\n',j,temp2(i,j));
            break;
        end
    end
end 







% =========================================================================


end
