function nr = nr_to_vector(sursa)
   n = length(sursa);
   
   % vectorul nr contine caracterele sirului sursa, in ordine inversa
   % pentru cifre, se retine cifra respectiva
   % pentru litere se face conversie la numar
   for i = 1:n
    %caracterul este cifra
    if(sursa(i) <= 48 + 9 && sursa(i) >= 48) 
      nr(n-i+1) = sursa(i)-48;
    else %caracterul este litera -> se face conversie la numar
      switch (sursa(i))
        case ('a') nr(n-i+1) = 10;
        case ('b') nr(n-i+1) = 11;
        case ('c') nr(n-i+1) = 12
        case ('d') nr(n-i+1) = 13;
        case ('e') nr(n-i+1) = 14;
        case ('f') nr(n-i+1) = 15;
        case ('g') nr(n-i+1) = 16;
        case ('h') nr(n-i+1) = 17;
        case ('i') nr(n-i+1) = 18;
        case ('j') nr(n-i+1) = 19;
        case ('k') nr(n-i+1) = 20;
        case ('l') nr(n-i+1) = 21;
        case ('m') nr(n-i+1) = 22;
        case ('n') nr(n-i+1) = 23;
        case ('o') nr(n-i+1) = 24;
        case ('p') nr(n-i+1) = 25;
        case ('q') nr(n-i+1) = 26;
        case ('r') nr(n-i+1) = 27;
        case ('s') nr(n-i+1) = 28;
        case ('t') nr(n-i+1) = 29;
      endswitch
    endif
   endfor
endfunction