function [coeff1, coeff2, rhs] = bai2(n, r, t)
% Sylvester equation with non-symmetric coefficients [1, section 4.3].
%
%  References:
%  [1] Bai (2011). On Hermitian and skew-Hermitian splitting iteration methods
%      for continuous Sylvester equations. J. Comput. Math.,  29(2):185–198.

  if nargin < 1
    n = 8;
  end
  if nargin < 2
    r = 0.01;
  end
  if nargin < 3
    t = 1;
  end

  L = tril(ones(n), -1);

  coeff1 = r * L';
  coeff1(1:n+1:n^2) = 1:n;

  coeff2 = r * L' + 2^-t * L;
  coeff2(1:n+1:n^2) = 1:n + 2^-t;
  rhs = [];

end
