% transform [baza] din baza b1 in baza 10
% transform din baza 10 in baza b2

function r = baza(sursa, b1, b2)
  % creeaza un vector cu elementele sursei, transformate in numere
  % in ordine inversa
  v = nr_to_vector(sursa);
  
  %transformare b1 in vector
  % exemplu: b1 = 12 -> v_b1 = 2, 1
  if b1 < 10
    v_b1(1) = b1;
  else
    v_b1(1) = mod(b1, 10);
    v_b1(2) = idivide(b1, 10, "fix");
   endif
  
  suma(1) = 0; % vector de acumulare; va contine [sursa] in baza 10
  tmp(1) = 0;
  %transformare in baza 10
  n = length(v); 
  for i = 1:n
    if v(i) ~= 0
      contor = i-1; % nr de inmultiri pentru ridicarea la putere a lui b1
      if contor == 0 % ridicare la puterea 0
        tmp = zeros(1, length(tmp));
        tmp(1) = 1;
      else %ridicare la puterea 1
        if contor == 1
          tmp = v_b1;
        else %ridicare la puterea contor
          tmp = v_b1;
          for j = 2: contor
            tmp = inmultire_vector_scalar(tmp, b1);
          endfor
        endif
      endif
      tmp = inmultire_vector_scalar(tmp, v(i)); % inmultire cifra cu putere
      suma = adunare_vectori(suma, tmp); % adunare vectori
    endif
    tmp = zeros(1, length(tmp)); % resetare vector la 0
  endfor
   
   % transformare din baza 10 in baza b2
   % cat = catul impartirii
   % rest = restul impartirii
   i = 0;
   while sum(suma) ~= 0
    i = i + 1;
    [rest suma] = impartire_vector_scalar(suma, b2);
    r(i) = rest;
   endwhile
    
   % inverseaza ordinea elementelor din vector
   r = fliplr(r);
   
   % pentru conversia intr-o baza [b2] <=10 nu sunt necesare a, b, c, d, ...
   % pentru conversia intr-o baza [b2] > 10 se vor folosi a, b, c, d...
   % se parcurge vectorul de resturi
   if b2 > 10
     for i = 1: length(r)
       if r(i) >= 10
       % se inlocuiesc resturile >10 cu literele corespunzatoare
        switch (r(i))
          case (10) r(i) = 97;
          case (11) r(i) = 98;
          case (12) r(i) = 99;
          case (13) r(i) = 100;
          case (14) r(i) = 101;
          case (15) r(i) = 102;
          case (16) r(i) = 103;
          case (17) r(i) = 104;
          case (18) r(i) = 105;
          case (19) r(i) = 106;
          case (20) r(i) = 107;
          case (21) r(i) = 108;
          case (22) r(i) = 109;
          case (23) r(i) = 110;
          case (24) r(i) = 111;
          case (25) r(i) = 112;
          case (26) r(i) = 113;
          case (27) r(i) = 114;
          case (28) r(i) = 115;
          case (29) r(i) = 116;
         endswitch
        else
          %adaug 48 pentru numerele de la 0 la 9 pentru a permite conversia in char
          r(i) = r(i) + 48;
        endif
       endfor
      else
         for i = 1: length(r)
          r(i) = r(i) + 48;
          endfor
      endif  
   
   %realizeaza conversia numarului la caractere
   r = char(r);

 endfunction
