% zmienne procesu
%clear;
alfa1 = 0.6;
alfa2 = 1.35;
alfa3 = -0.57;
alfa4 = 0.53;
K = 3;
T1 = 12;
T2 = 5;
Tp1 = 1.5;
Tp2 = 6;
T = 1;

% punkt 2 charakterystyka statyczna
%figure;
%fplot(@(u) 1.8*u+4.05*u^2-1.71*u^3+1.59*u^4, [-1 1], 'b');
%ylim([-2 7]);
%xlabel('u')
%ylabel('y(u)', 'Rotation', 0, 'HorizontalAlignment','right')
%legend('y(u)')
%title('Charakterystyka statyczna y(u) procesu dynamicznego ciągłego:');
% print('zad2wykres.png','-dpng','-r400')


% punkt 4 charakterystyka statyczna zlinearyzowana
ul1 = -0.35;
ul2 = 0.58;

% wykres 1

%figure;
%hold on;
%fplot(@(u) 1.8*u+4.05*u^2-1.71*u^3+1.59*u^4, [-1 1], 'b', 'Color', 'blue');
%fplot(@(u) (1.8+8.1*ul1-5.13*ul1^2+6.36*ul1^3)*u-4.05*ul1^2+3.42*ul1^3-4.77*ul1^4, [-1 1], 'b', 'Color', 'red');
%plot(ul1, (1.8+8.1*ul1-5.13*ul1^2+6.36*ul1^3)*ul1-4.05*ul1^2+3.42*ul1^3-4.77*ul1^4, 'r*', 'Color', 'black');
%xlabel('u')
%ylabel({'y(u)', 'yl(u)'}, 'Rotation', 0, 'HorizontalAlignment','right')
%legend('y(u)', 'yl(u)', '- punkt linearyzacji ul = -0.35')
%title({'Zlinearyzowana charakterystyka statyczna y(u) w punkcie linearyzacji', 'ul = -0.35 na tle charakterystyki statycznej nieliniowej:'});
%hold off;
%print('zad4wykres1.png','-dpng','-r400')

% wykres 2

%figure;
%hold on;
%fplot(@(u) 1.8*u+4.05*u^2-1.71*u^3+1.59*u^4, [-1 1], 'b', 'Color', 'blue');
%fplot(@(u) (1.8+8.1*ul2-5.13*ul2^2+6.36*ul2^3)*u-4.05*ul2^2+3.42*ul2^3-4.77*ul2^4, [-1 1], 'b', 'Color', 'red');
%plot(ul2, (1.8+8.1*ul2-5.13*ul2^2+6.36*ul2^3)*ul2-4.05*ul2^2+3.42*ul2^3-4.77*ul2^4, 'r*', 'Color', 'black');
%xlabel('u')
%ylabel({'y(u)', 'yl(u)'}, 'Rotation', 0, 'HorizontalAlignment','right')
%ylim([-4 6]);
%legend('y(u)', 'yl(u)', '- punkt linearyzacji ul = 0.58')
%title({'Zlinearyzowana charakterystyka statyczna y(u) w punkcie linearyzacji', 'ul = 0.58 na tle charakterystyki statycznej nieliniowej:'});
%hold off;
%print('zad4wykres2.png','-dpng','-r400')

% punkt 6 
%t_ciagly = out.ciagly.time;
%y_ciagly = out.ciagly.signals.values;
%t_dyskretny_maly = out.dyskretny_maly.time;
%y_dyskretny_maly = out.dyskretny_maly.signals.values;
%t_dyskretny_duzy = out.dyskretny_duzy.time;
%y_dyskretny_duzy = out.dyskretny_duzy.signals.values;
%figure;
%hold on;
%plot(t_ciagly,y_ciagly);
%stairs(t_dyskretny_maly,y_dyskretny_maly);
%ylabel({'y(t)', 'y(k)'}, 'Rotation', 0, "HorizontalAlignment", 'right')
%xlabel('t')
%legend('y(s)', 'y(k)')
%title({'Porównanie odpowiedzi układu ciągłego i układu dyskretnego', 'dla okresu próbkowania T = 1.5s:'})
%ylim([-1 6]);
%hold off;
%print('zad6wykres1.png','-dpng','-r400')

%figure;
%hold on;
%plot(t_ciagly, y_ciagly);
%stairs(t_dyskretny_duzy,y_dyskretny_duzy);
%ylabel({'y(t)', 'y(k)'}, 'Rotation', 0, "HorizontalAlignment", 'right')
%xlabel('t')
%legend('y(s)', 'y(k)')
%title({'Porównanie odpowiedzi układu ciągłego i układu dyskretnego', 'dla okresu próbkowania T = 6s:'})
%ylim([-1 6]);
%hold off;
%print('zad6wykres2.png','-dpng','-r400')

%figure;
%hold on;
%t = out.dyskretny_zlinearyzowany.time;
%y_skok_lin = out.dyskretny_zlinearyzowany.signals.values;
%y_skok_nielin = out.dyskretny_nieliniowy.signals.values;
%stairs(t, y_skok_lin);
%stairs(t, y_skok_nielin);
%ylabel({'ylin(k)', 'y(k)'}, 'Rotation', 0, "HorizontalAlignment", 'right')
%xlabel('t')
%ylim([-0.7  6])
%legend('y(k) - zlinearyzowane', 'y(k) - nieliniowe')
%title({'Porównanie odpowiedzi układu dyskretnego nieliniowego i', 'układu dyskretnego zlinearyzowanego dla punktu linearyzacji u = 0.6 i', 'skoku 1 oraz T=1:'})
%hold off;
%print('zad9wykres6.png','-dpng','-r400')

%figure;
%hold on;
%t = out.dyskretny_zlinearyzowany.time;
%y_maly_skok_lin = out.dyskretny_lin_bez_offsetu.signals.values;
%stairs(t, y_maly_skok_lin);
%ylabel({'ylin(k)'}, 'Rotation', 0, "HorizontalAlignment", 'right')
%xlabel('t')
%ylim([-0.1 6.5])
%legend('y(k) - zlinearyzowane')
%title({'Odpowiedź układu dyskretnego zlinearyzowanego dla punktu linearyzacji', ' u = 0.6 i skoku 1 bez uwzględnienia członu stałego:'})
%hold off;
%print('zad11wykres6.png','-dpng','-r400')

figure;
hold on;
fplot(@(u) 3*(0.6+2.7*u-1.71*u^2+2.12*u^3), [-1 1], 'b', 'Color', 'blue');
fplot(@(u) 1.8+8.1*u-5.13*u^2+6.36*u^3, [-1 1], 'b', 'Color', 'red');
xlabel('u')
ylabel({'K_{stat}', 'dy(u)/du'}, 'Rotation', 0, 'HorizontalAlignment','right')
legend('K_{stat}','dy(u)/du')
title({'Wzmocnienie statyczne oraz pochodna charakterystyki statycznej:'});
hold off;
print('wzmocnienie_statyczne.png','-dpng','-r400')