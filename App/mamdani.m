function mamdani(bb,tb)
  #1. Fuzzifikasi
  [miuringan,miunormal,miuberat,miurendah,miustandar,miutinggi]= fuzzifikasi(bb,tb);
   #masukan keaktifan masing-masing BERAT BADAN & TINGGI BADAN
   #1 --> active , 0 --> not active
   #BERAT BADAN
   berat =[]; #berat[1]--> ringan, berat[2] --> normal, berat[3] --> berat
   tinggi = []; #tinggi[1] --> rendah, tinggi[2] --> standar, tinggi[3] --> tinggi
   if miuringan != 0
     berat(1) = 1;
   else
     berat(1) = 0;
   endif
   if miunormal != 0
     berat(2) = 1;
   else
     berat(2) = 0;
   endif
   if miuberat !=0
     berat(3) = 1;
   else
     berat(3) = 0;
   endif
   #TINGGI BADAN
   if miurendah != 0;
     tinggi(1) = 1;
   else 
     tinggi(1) = 0;
   endif
   if miustandar != 0
     tinggi(2) = 1;
   else
     tinggi(2) = 0;
   endif
   if miutinggi != 0;
     tinggi(3) = 1;
   else 
     tinggi(3) = 0;
   endif
  #2. pembentukan aturan (fungsi implikasi) & inferensi
  [ktb,ktr,normal,gtr,gtb]=inferensi(berat,tinggi,miuringan,miunormal,miuberat,miurendah,miustandar,miutinggi);

  #3. Defuzzifikasi
  [hasil]=defuzzifikasi(ktb,ktr,normal,gtr,gtb);
  printf("\tNilai gizi Anda\t\t>> %.4f\n",hasil);
  #4. Penentuan kategori berdasarkan variabel "hasil"
  [gizi]=kategorihasil(hasil);
    #Cari nilai maksimum dari gizi untuk menentukan kategorinya
    [value,col] = max(gizi);
    indeks = col;
    #Menentukan kategori berdasarkan indeksnya
    if indeks == 1
      kategori = "Kurus Tingkat Berat";
    elseif indeks == 2
      kategori = "Kurus Tingkat Ringan";
    elseif indeks == 3
      kategori = "Normal";
    elseif indeks == 4
      kategori = "Gemuk Tingkat Ringan";
    elseif indeks == 5
      kategori = "Gemuk Tingkat Berat";
    endif
   printf("\tKategori\t\t>> %s\n",kategori);

endfunction
