function himpunanfuzzy()
  pkg load fuzzy-logic-toolkit
  #1. Figure for berat badan
 x = 0:100;
 #bb ringan
 params = [-1 35 40 55];
 y1 = trapmf(x, params);
 #bb normal
 params = [45 55 65];
 y2 = trimf(x, params);
 #bb berat
 params = [55 75 80 90];
 y3 = trapmf(x, params);
 figure('NumberTitle', 'off', 'Name', 'Himpunan Fuzzy');
 subplot(2,2,1);
 plot(x, y1, 'r;Ringan = [35 40 55];', 'LineWidth', 2)
 hold on;
 plot(x, y2, 'b;Normal = [45 55 65];', 'LineWidth', 2)
 hold on;
 plot(x, y3, 'g;Berat = [55 75 80 90];', 'LineWidth', 2)
 axis([35 80 -0.1 3]);
 title("Berat Badan");
 xlabel('Crisp Input Value', 'FontWeight', 'bold');
 ylabel('Degree of Membership', 'FontWeight', 'bold');
 
 grid;
  #2. Figure for tinggi badan
   x = 100:200;
 #tb rendah
 params = [-1 145 150 165];
 y1 = trapmf(x, params);
 #tb standar
 params = [150 165 175];
 y2 = trimf(x, params);
 #tb tinggi
 params = [160 175 190 200];
 y3 = trapmf(x, params);
 subplot(2,2,2);
 plot(x, y1, 'r;Rendah = [145 150 165];', 'LineWidth', 2)
 hold on;
 plot(x, y2, 'b;Normal = [150 165 175];', 'LineWidth', 2)
 hold on;
 plot(x, y3, 'g;Tinggi = [160 175 190 200];', 'LineWidth', 2)
 axis([145 190 -0.1 3]);
 title("Tinggi Badan");
 xlabel('Crisp Input Value', 'FontWeight', 'bold');
 ylabel('Degree of Membership', 'FontWeight', 'bold');
 grid;
  #3. Figure for nilai gizi
    x = 10:40;
 #kurus tingkat berat
 params = [-1 13 16 17];
 y1 = trapmf(x, params);
 #kurus tingkat ringan
 params = [16 17 17.5 18.5];
 y2 = trapmf(x, params);
 #normal
 params = [17.5 18.5 24 25];
 y3 = trapmf(x, params);
 #gemuk tingkat ringan
 params = [24 25 26 27];
 y4 = trapmf(x, params);
 #gemuk tingkat berat
 params = [26 27 33 35];
 y5 = trapmf(x, params);
 subplot(2,2,3);
 plot(x, y1, 'r');
 hold on;
 plot(x, y2, 'b');
 hold on;
 plot(x, y3, 'g');
 hold on;
 plot(x, y4, 'k');
 hold on;
 plot(x, y5, 'y');
 axis([13 33 -0.1 1.5]);
 title("Nilai Gizi");
 xlabel('Crisp Input Value', 'FontWeight', 'bold');
 ylabel('Degree of Membership', 'FontWeight', 'bold');
 grid;
endfunction
