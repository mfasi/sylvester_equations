function [A, B, C] = ex_rand(n, m, stability_margin)
% Stable random matrix with predefined stability margin.
% [1, Example 1.3.7, p. 22]
%
%  References:
%  [1] Benner & Quintana-Ortí (2005). Model Reduction Based on Spectral
%      Projection Methods. In: Benner, Sorensen, Mehrmann, (eds) Dimension
%      Reduction of Large-Scale Systems. Lecture Notes in Computational Science
%      and Engineering, vol 45. Springer, Berlin, Heidelberg.
%      https://doi.org/10.1007/3-540-27909-1_1

  if nargin < 1
    n = 500;
  end
  if nargin < 2
    m = 10;
  end
  if nargin < 3
    stability_margin = 0.055;
  end

  A = randn(n, n);
  A = A - diag((stability_margin + real(eigs(A, 1, 'largestreal'))*ones(1,n)));
  B = [];
  C = [];
end
