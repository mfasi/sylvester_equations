function [coeff1, coeff2, rhs] = wlm13(m, n)
% Sylvester equation with non-symmetric coefficients [1, Example 3].
%
%  References:
%  [1] Wang, Li, & Mao (2013). On positive-definite and skew-Hermitian splitting
%      iteration methods for continuous Sylvester equation AX + XB = C,
%      Comput. Math. Appl., 66:2352-2361.

  if nargin < 1
    m = 256;
  end
  if nargin < 2
    n = 256;
  end

  coeff1 = full(gallery('tridiag', m, 2, 10, 1));
  coeff1(1, m) = 1;
  coeff1(m, 1) = 1;

  coeff2 = full(gallery('tridiag', n, 3, 8, 1));
  coeff2(1, n) = 1;
  coeff2(n, 1) = 1;

  rhs = [];

end
