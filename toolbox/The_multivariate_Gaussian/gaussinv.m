function x = gaussinv(p, mu, sigma2)
% Inverse of the normal cumulative distribution function (cdf).
    if nargin < 2, mu = 0; end
    if nargin < 3, sigma2 = 1; end
    x = sqrt(sigma2).*(-sqrt(2).*erfcinv(2*p)) + mu;
    
    if 0 % make sure it agrees with stats toolbox
       assert(approxeq(x, norminv(p, mu, sqrt(sigma2)))); 
    end
end