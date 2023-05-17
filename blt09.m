function [coeff1, coeff2, rhs] = blt09()
% Sylvester equation with symmetric coefficients [1, Example 6.3].
%
%  References:
%  [1] Benner, Li, & Truhar (2009). On the ADI Method for Sylvester Equations,
%      J. Comput. Appl. Math., 233:1035–1045.

  install_UFget();

  coeff1 = UFget('HB/nos6').A;
  coeff2 = UFget('HB/nos5').A;
  rhs = [];

end
