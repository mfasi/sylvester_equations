function [coeff1, coeff2, rhs] = bqq05(n, a, b, s)
  % Sylvester equation with symmetric coefficients [1, Example 1].
  %
  %  References:
  %  [1] Benner, Quintana-Ortí & Quintana-Ortí (2005). Solving Stable Sylvester
  %      Equations via Rational Iterative Schemes, J. Sci. Comput., 28(1):51-83.

  if nargin < 1
    n = 500;
  end
  if nargin < 2
    a = 1.03;
  end
  if nargin < 3
    b = 1.008;
  end
  if nargin < 4
    s = 1.001
  end

  % Generate auxiliary matrices.
  H1 = -2/n * ones(n);
  H1(1:n+1:n^2) = H1(1:n+1:n^2) + 1;

  h = (-1) .^ [0:(n-1)]';
  H2 = -2/n * h * h';
  H2(1:n+1:n^2) = H2(1:n+1:n^2) + 1;

  S = s .^ [0:n-1];

  T = (H2 .* S) * H1;

  % Generate coefficients and right-hand side.
  coeff1 = T' \ ((-a) .^ [0:n-1]' .* T');
  coeff2 = (T .* (-b) .^ [0:n-1]) / T;
  rhs = T' \ diag([1:n]) / T;

end
