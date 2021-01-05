function [miuringan,miunormal,miuberat,miurendah,miustandar,miutinggi]=fuzzifikasi(bb,tb)
  #BERAT BADAN
  #1. Cek miuringan
  if bb <= 40
    miuringan = 1;
  elseif bb > 40 && bb <= 55
    miuringan = (55-bb)/15;
  elseif bb > 55
    miuringan = 0;
  endif
  #2. Cek miunormal
  if bb <= 45 || bb > 65
    miunormal = 0;
  elseif bb > 45 && bb <=55
    miunormal = (bb-45)/10;
  elseif bb > 55 && bb <= 65
    miunormal = (65-bb)/10;
  endif
  #3. Cek miuberat
  if bb <= 55
    miuberat = 0;
  elseif bb > 55 && bb <= 75
    miuberat = (bb-55)/20;
  elseif bb > 75
    miuberat =1;
  endif
  
  #TINGGI BADAN
  #1. Cek miurendah
  if tb <= 150
    miurendah = 1;
  elseif tb > 150 && tb <= 165
    miurendah = (165-tb)/15;
  elseif tb > 165
    miurendah = 0;
  endif
  #2. Cek miustandar
  if tb <=150 || tb > 175
    miustandar = 0;
  elseif tb > 150 && tb <= 165
    miustandar = (tb - 150) / 15;
  elseif tb > 165 && tb <= 175
    miustandar = (175-tb)/10;
  endif
  #3. Cek miutinggi
  if tb <=160
    miutinggi = 0;
  elseif tb > 160 && tb <= 175
    miutinggi = (tb-160)/15;
  elseif tb > 175
    miutinggi = 1;
  endif
endfunction
