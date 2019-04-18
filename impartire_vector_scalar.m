function [rest vector] = impartire_vector_scalar(vector, scalar)
  % vector va contine catul impartirii 
  rest = 0; % restul impartirii
  
   n = length(vector);
  for i = n:-1:1
    rest = 10*rest + vector(i);
    vector(i) = idivide(rest, scalar, "fix");
    rest = mod(rest, scalar);
  endfor
  
  % eliminare zerouri
  zero = 0;
  i = n;
  while vector(i) == 0 && i > 1
    zero = zero + 1;
    i = i - 1;
  endwhile
  vector = vector(1:n-zero);
endfunction