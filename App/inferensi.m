function [ktb,ktr,normal,gtr,gtb]=inferensi(berat,tinggi,miuringan,miunormal,miuberat,miurendah,miustandar,miutinggi)
  ktb = [];
  ktr =[];
  normal =[];
  gtr = [];
  gtb = [];
  # Menggunakan inferensi clipping
  #{
  1. Gunakan aturan conjunction (^) dengan memilih derajat keanggotaan
  minimum dari nilai nilai linguistik yang dihubungkan oleh ^.
  #}
  #{
   ATURAN 1.
   Jika ringan dan rendah maka normal
  #}
  if berat(1) == 1 && tinggi(1) == 1
    normal(end+1) = min(miuringan,miurendah);
  endif
  #{
   ATURAN 2.
   Jika ringan dan standar maka kurus tingkat ringan
  #}
  if berat(1) == 1 && tinggi(2) == 1
    ktr(end+1) = min(miuringan,miustandar);
  endif
  #{
   ATURAN 3.
   Jika ringan dan tinggi maka kurus tingkat berat
  #}
  if berat(1) == 1 && tinggi(3) == 1
    ktb(end+1) = min(miuringan,miutinggi);
  endif
  #{
   ATURAN 4.
   Jika normal dan rendah maka gemuk tingkat ringan
  #}
  if berat(2) == 1 && tinggi(1) == 1
    gtr(end+1) = min(miunormal,miurendah);
  endif
  #{
   ATURAN 5.
   Jika normal dan standar maka normal
  #}
  if berat(2) == 1 && tinggi(2) == 1
    normal(end+1)= min(miunormal,miustandar);
  endif
  #{
   ATURAN 6.
   Jika normal dan tinggi maka kurus tingkat ringan
  #}
  if berat(2) == 1 && tinggi(3) == 1
    ktr(end+1) = min(miunormal,miutinggi);
  endif
  #{
   ATURAN 7.
   Jika berat dan rendah maka gemuk tingkat berat
  #}
  if berat(3) == 1 && tinggi(1) == 1
    gtb(end+1) = min(miuberat,miurendah);
  endif
  #{
   ATURAN 8.
   Jika berat dan standar maka gemuk tingkat ringan
  #}
  if berat(3) == 1 && tinggi(2) == 1
    gtr(end+1)= min(miuberat,miustandar);
  endif
  #{
   ATURAN 9.
   Jika berat dan tinggi maka normal
  #}
  if berat(3) == 1 && tinggi(3) == 1
    normal(end+1) = min(miuberat,miutinggi);
  endif
  #{
  2. Gunakan aturan disjunction (v) dengan memilih derajat keanggotaan
  maksimum dari nilai nilai linguistik yang dihubungkan oleh v.
  #}
  ktb = max(ktb);
  ktr = max(ktr);
  normal = max(normal);
  gtr = max(gtr);
  gtb = max(gtb);

  
endfunction
