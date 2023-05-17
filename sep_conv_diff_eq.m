function [coeff1, coeff2, rhs] = sep_conv_diff_eq(m, n, h, p1, p2, p3)
  % Discretization of a boundary-value problem for a two-dimensional separable
  % model convection-diffusion equation [1, sect. 7, pp. 306-307].
  %
  %  References:
  %  [1] Hu, Reichel (1992). Krylov-Subspace Methods for the Sylvester Equation.
  %      Linear Algebra Appl., 172:283–313.
  %      https://doi.org/10.1016/0024-3795(92)90031-5

  if nargin < 1
    m = 100;
  end
  if nargin < 2
    n = 100;
  end
  if nargin < 3
    h = 0.001;
  end
  if nargin < 4
    p1 = 0;
  end
  if nargin < 5
    p2 = 0;
  end
  if nargin < 6
    p3 = 0;
  end

  coeff1 = anymatrix('gallery/tridiag', m, -1-p1*h, 2-p3*h^2, -1+p1*h) / h^2;
  coeff2 = -anymatrix('gallery/tridiag', n, -1-p2*h, 2-p3*h^2, -1+p2*h) / h^2;
  rhs = [];
end
