clc; clear all;

%n = 40;
%n = 4000;
n = 400000;
%n = 4000000;

%X variabila aleatoare
X = randn( n, 1 );                         %realizari ale unei variabile aleatoare 
                                           %cu distributie gaussiana 

hist( X );                                 %histograma
hold on;
[ f, Xi ] = ksdensity( X );                %densitatea de probabilitate

f = f * n;                                 %densitatea se inmulteste cu N pentru a avea aceeasi scara
plot( Xi, f );                         
hold off
title('Tema 5 - distributie gaussiana');