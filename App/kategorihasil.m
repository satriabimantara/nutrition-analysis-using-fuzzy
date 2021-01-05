function [gizi]=kategorihasil(hasil)
  #{
  Array Gizi :
  indeks 1 --> ktb
  indeks 2 --> ktr
  indeks 3 --> normal
  indeks 4 --> gtr
  indeks 5 --> gtb
  #}
  gizi = [];
  #checking kurus tingkat berat
  if hasil <= 16
    miuktb = 1;
  elseif hasil > 16 && hasil<= 17
    miuktb = 17-hasil;
  else
    miuktb = 0;
  endif
  #checking kurus tingkat ringan
  if hasil <= 16 || hasil > 18.5
    miuktr = 0;
  elseif hasil > 16 && hasil <= 17
    miuktr = hasil - 16;
  elseif hasil > 17 && hasil <= 17.5
    miuktr = 1;
  elseif hasil >17.5 && hasil <= 18.5
    miuktr = 18.5 - hasil;
  endif
  #checking normal
  if hasil <= 17.5 || hasil > 25
    miunormal = 0;
  elseif hasil > 17.5 && hasil <= 18.5
    miunormal = hasil - 17.5;
  elseif hasil > 18.5 && hasil <= 24
    miunormal = 1;
  elseif hasil >24 && hasil <= 25
    miunormal = 25 - hasil;
  endif
  #checking gemuk tingkat ringan
  if hasil <= 24 || hasil > 27
    miugtr = 0;
  elseif hasil > 24 && hasil <= 25
    miugtr = hasil - 24;
  elseif hasil > 25 && hasil <= 26
    miugtr = 1;
  elseif hasil > 26 && hasil <= 27
    miugtr = 27 - hasil;
  endif
  #checking gemuk tingkat berat
  if hasil <= 26
    miugtb = 0;
  elseif hasil > 26 && hasil <= 27
    miugtb = hasil - 26;
  else
    miugtb = 1;
  endif
  gizi(end+1)=miuktb;
  gizi(end+1)=miuktr;
  gizi(end+1)=miunormal;
  gizi(end+1)=miugtr;
  gizi(end+1)=miugtb;
  
endfunction
