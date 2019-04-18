function rezultat = inmultire_vector_scalar(vector, scalar)
  v =  vector;
  n = length(v);
  carry = 0;
  for i = 1:n
    v(i) = v(i) * scalar + carry;
    carry = idivide(v(i), 10, "fix");
    v(i) = mod(v(i), 10);
    endfor
  
  aux(1) = 0;
  i = 1;
  if carry > 0
    while carry > 0
      aux(i) = mod(carry, 10);
      i = i + 1;
      carry = idivide(carry, 10, "fix");
      endwhile
     rezultat = [v, aux]; 
  else
    rezultat = v;
  endif
endfunction