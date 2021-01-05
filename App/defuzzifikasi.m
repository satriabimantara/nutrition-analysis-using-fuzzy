function [hasil]=defuzzifikasi(ktb,ktr,normal,gtr,gtb)
  nlengthrand = 1000; #banyak angka random yang dibangkitkan
  sumktb  =0; #menampung total array untuk angka yang sudah diacak kategori ktb
  sumktr = 0; #menampung total array untuk angka yang sudah diacak kategori ktr
  sumnormal = 0; #menampung total array untuk angka yang sudah diacak kategori normal
  sumgtr = 0; #menampung total array untuk angka yang sudah diacak kategori gtr
  sumgtb = 0; #menampung total array untuk angka yang sudah diacak kategori gtb
  pembagi = 0;
  hasil = 0;
  #defuzzifikasi menggunakan metode centroid
  if !isempty(ktb)
    randnumberktb = [];
    a = 13; #as bottom interval
    b = 17 ; #as upper interval
    for i = 1 : nlengthrand
      #random integer dari a sampai b
      randnumberktb(i) = randi([a,b]);
    endfor
    sumktb = sum(randnumberktb);
    hasil = hasil + sumktb*ktb;
    pembagi = pembagi + ktb*nlengthrand;
  endif
  if !isempty(ktr) 
    randnumberktr = [];
    a = 16; #as bottom interval
    b = 18 ; #as upper interval
    for i = 1 : nlengthrand
      randnumberktr(i) = randi([a,b]);
    endfor
    sumktr = sum(randnumberktr);
    hasil = hasil+ sumktr*ktr;
    pembagi = pembagi + ktr*nlengthrand;
  endif
  if !isempty(normal)
    randnumbernormal = [];
    a = 18; #as bottom interval
    b = 25 ; #as upper interval
    for i = 1 : nlengthrand
      randnumbernormal(i) = randi([a,b]);
    endfor
    sumnormal = sum(randnumbernormal);
    hasil = hasil + sumnormal*normal;
    pembagi = pembagi + normal*nlengthrand;
  endif
  if !isempty(gtr) 
    randnumbergtr = [];
    a = 24; #as bottom interval
    b = 27 ; #as upper interval
    for i = 1 : nlengthrand
      randnumbergtr(i) = randi([a,b]);
    endfor
    sumgtr = sum(randnumbergtr);
    hasil = hasil + sumgtr *gtr;
    pembagi = pembagi + gtr*nlengthrand;
  endif
  if !isempty(gtb)
    randnumbergtb = [];
    a = 26; #as bottom interval
    b = 33 ; #as upper interval
    for i = 1 : nlengthrand
      randnumbergtb(i) = randi([a,b]);
    endfor
    sumgtb = sum(randnumbergtb);
    hasil = hasil + sumgtb *gtb;
    pembagi = pembagi + gtb*nlengthrand;
  endif
  hasil = hasil / pembagi;
  
  
  
endfunction
