function [coeff1, coeff2, rhs] = blw07(testcase)
% Sylvester equation with symmetric/non-symmetric coefficients.
%
% This matrix uses the 7 test cases in [1, Example 2]. The first coefficient is
% one of the following matrices from the Harwell–Boeing collection:
%     testcase = 1: CAVITY01 (n =  317, non-symmetric)
%     testcase = 1: CAVITY05 (n = 1182, non-symmetric)
%     testcase = 1: CAVITY06 (n = 1182, non-symmetric)
%     testcase = 1: GR-30-30 (n =  900, symmetric)
%     testcase = 1: FIDAP001 (n =  216, non-symmetric)
%
%  References:
%  [1] Bao, Lin, & Wei (2007). A new projection method for solving large
%      Sylvester equations. Appl. Numer. Math., 57:521–532.

  if nargin < 1
    testcase = 1;
  end
  switch(testcase)
    case 1
      casestring = 'DRIVCAV/cavity01';
    case 2
      casestring = 'DRIVCAV/cavity05';
    case 3
      casestring = 'DRIVCAV/cavity06';
    case 4
      casestring = 'HB/gr_30_30';
    case 5
      casestring = 'FIDAP/ex1';
  end

  install_UFget();

  coeff1 = UFget(casestring).A;

  n = size(coeff1, 1);

  coeff2 = gallery('tridiag', n, -1 + 10/(n+1), 3, -1+10/(n+1));
  rhs = [];

end
