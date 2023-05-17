function [coeff1, coeff2, rhs] = slicot(benchmark_name)
% Sylvester equation with symmetric coefficients [1, section 4.1].
%
%  References:
%  [1] Bai (2011). On Hermitian and skew-Hermitian splitting iteration
%      methods for continuous sylvester equations. J. Comput. Math.,
%      29(2):185–198, 2011.

% Install SLICOT group, if not already available.
  if all(~strcmp(anymatrix('g'), 'slicot'))
    anymatrix('g', 'slicot', 'mfasi/slicot');
    run([fileparts(which('anymatrix')) '/slicot/private/setup'])
    anymatrix('s');
  end

  [A, B, C] = anymatrix(['slicot' '/' lower(benchmark_name)]);
  coeff1 = full(A);
  coeff2 = [];
  rhs = -full(B)*full(B)';

end
