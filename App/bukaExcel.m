function bukaExcel()
  pkg load io
  data = xlsread("data.xlsx");
  nim = data(:,1);
  bb = data(:,2);
  tb = data(:,3);
  for i = 1:length(nim)
    printf("NIM %d\t\t|%d kg|%d cm\n",nim(i),bb(i),tb(i));
    mamdani(bb(i),tb(i));
  endfor
  himpunanfuzzy();



endfunction
