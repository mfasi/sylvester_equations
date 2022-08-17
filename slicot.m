function [coeff1, coeff2, rhs] = slicot(benchmark_name)

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
