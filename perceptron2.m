function[w,training,iter] = perceptron()
%create a linealy seperatebale dataset, and then set w as 0 to find
%original w again

% w is weghted vector
% training is the input combined with output
w = zeros(1,11);
w(2:end) = rand(1,10);
training = 2*rand(100,12,1)-1;
training(:,1) = zeros(100,1)+1;
training(:,12) = sign(training(:,1:11)*w');
X = training(:,1:11);
Y = training(:,12);

w = zeros(1,11);

%perceptron learning algorithms
error = 1;
iter = 0;
while error > 0
    error = 0;
    for i = 1:100
        if Y(i) ~= sign(X(i,:)*w')
            error = error + 1;
            iter = iter +1;
            w = w + Y(i)*X(i,:);
        end
    end
            
end