function rez = adunare_vectori(v1, v2)
  n1 = length(v1);
  n2 = length(v2);
  carry = 0;

  if n2 > n1
    for i = n1+1:n2
      v1(i) = 0;
    endfor
  else
    for i = n2+1:n1
      v2(i) = 0;
    endfor
  endif
  
  for i = 1:length(v1)
    v1(i) = v1(i) + v2(i) + carry;
    carry = idivide(v1(i), 10, "fix");
    v1(i) = mod(v1(i), 10);
  endfor
  
  if carry > 0
    rez = [v1, carry];
  else
    rez = v1;
  endif
  
endfunction