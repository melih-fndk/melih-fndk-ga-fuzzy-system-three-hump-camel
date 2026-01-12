function y = camel3(X)
% X: Nx2 => [x1 x2]
x1 = X(:,1);
x2 = X(:,2);
y  = 2*x1.^2 - 1.05*x1.^4 + (x1.^6)/6 + x1.*x2 + x2.^2;
end
