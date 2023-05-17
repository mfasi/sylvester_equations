function [A, B, C] = rail_1357()
% Lyapunov equation with symmetric coefficient [1].
%
% [1] Benner & Saak (2005). A Semi-Discretized Heat Transfer Model for Optimal
%     Cooling of Steel Profiles. In: Benner, Sorensen, & Mehrmann (eds)
%     Dimension Reduction of Large-Scale Systems. Lecture Notes in Computational
%     Science and Engineering, vol 45. Springer, Berlin, Heidelberg.
%     https://doi.org/10.1007/3-540-27909-1_19

  if ~exist('rail_1357.mtx', 'file')
    unzip('https://nrvis.com/download/data/misc/rail_1357.zip')
  end

  load rail_1357.mtx;
  M = spconvert(rail_1357);
  A = M + tril(M, -1).';
  B = [];
  C = [];
end
