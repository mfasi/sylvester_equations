function [coeff1, coeff2, rhs] = benner04(m, n)
% Sylvester equation with nonsymmetrix stable coefficients [1, Example 4.1].
%
%  References:
%  [1] Benner (2004) Factorized Solution of Sylvester Equations with
%      Applications in Control. In: De Moor, Motmans, Willems, Van Dooren, &
%      Blondel (eds) Proceedings of the 16th International Symposium on
%      Mathematical Theory of Networks and Systems.

  if nargin < 1
    m = 50;
  end
  if nargin < 2
    n = 50;
  end

  coeff1 = generate_matrix(m);
  coeff2 = generate_matrix(n);
  rhs = [];

  function res = generate_matrix(m)
    [~, U] = qr(randn(m,m));
    tmp = diag(linspace(-1/m, -m, m));
    tmp(1,m) = 1;
    res = U' * tmp * U;
  end

end
