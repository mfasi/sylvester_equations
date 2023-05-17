function install_UFget()
% Install the MATLAB interact to SparseSuite.

  if ~exist('UFget', 'file')
    unzip('https://www.cise.ufl.edu/research/sparse/mat/UFget.zip');
    addpath(fullfile(cd,'UFget'))
    savepath
  end
end
