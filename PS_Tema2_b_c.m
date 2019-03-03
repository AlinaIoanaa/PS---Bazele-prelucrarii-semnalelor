function [ x1, x2 ] = PS_Tema2_b_c( omega, Ts, M )

n = 0 : M - 1 ;
n1 = 0 : 0.2 : M - 1 ;

t = n * Ts ;
T = n1 * Ts ;

x1 = sin( omega * T );                        %sinusoida continua 
x2 = sin( omega * t );                        %sinusoida discreta

plot( n1 , x1 )                               %grafic sinsuoida continua
hold on
stem( n , x2 )                                %grafic sinusoida discreta
title( 'Tema 2' )

end