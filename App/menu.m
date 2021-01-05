function menu()
  printf("\t   ANALISIS NILAI GIZI (IMT) \n\tBERDASARKAN BERAT & TINGGI BADAN\n");
  #1. Input berupa tinggi badan dan berat badan
  printf("\n");
  printf("Semesta berat badan [35 - 80] kg\n");
  printf("Semesta tinggi badan [145 - 190] cm\n");
  printf("Semesta nilai gizi [13 - 33]\n\n");
  printf("\n");
  printf("1. Masukan data sendiri\n");
  printf("2. Hitung data dari excel\n");
  printf("\n\tPilihan\t\t\t");
  pil = input(">> ");
  printf("\n");
  if pil == 1
    printf("\tMasukan berat badan\t");
    bb = input(">> ");
    printf("\tMasukan tinggi badan\t");
    tb = input(">> ");
    mamdani(bb,tb);
    himpunanfuzzy();
  elseif pil == 2
    bukaExcel();
  else
    printf("Maaf inputan Anda tidak ada!!\n");
    animasi();
  endif

endfunction
