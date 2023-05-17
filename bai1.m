function [coeff1, coeff2, rhs] = bai1(n, r)
% Sylvester equation with non-symmetric coefficients [1, section 4.1].
%
%  References:
%  [1] Bai (2011). On Hermitian and skew-Hermitian splitting iteration methods
%      for continuous Sylvester equations. J. Comput. Math., 29(2):185–198.

  if nargin < 1
    n = 8;
  end
  if nargin < 2
    r = 0.01;
  end
  coeff1 = gallery('tridiag', n, -1 + r, 2 + 100 / (n+1)^2, -1 - r);
  coeff2 = coeff1;
  rhs = [];

end
