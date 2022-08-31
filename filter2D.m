function [A, B, C] = filter2d()
%
% [1] Hohlfeld, Bechtold, & Zappe (2005). Tunable Optical Filter. In: Benner,
%     Sorensen, Mehrmann, (eds) Dimension Reduction of Large-Scale Systems.
%     Lecture Notes in Computational Science and Engineering, vol 45. Springer,
%     Berlin, Heidelberg. https://doi.org/10.1007/3-540-27909-1_15

  if ~exist('filter2D.mtx', 'file')
    unzip('https://nrvis.com/download/data/misc/filter2D.zip')
  end

  load filter2D.mtx;
  M = spconvert(filter2D);
  A = M + tril(M, -1).';
  B = [];
  C = [];
end