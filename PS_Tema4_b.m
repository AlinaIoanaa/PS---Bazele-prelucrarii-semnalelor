function PS_Tema4_b( omega, M )

Ts = 1;
n = 0 : M - 1 ;
n1 = 0 : 0.2 : M - 1 ;

t = n * Ts ;                                                  %perioada        
T = n1 * Ts;                                                  %perioada

x1 = sin( omega * T );
x2 = sin( omega * t );

subplot( 2, 1, 1 ) ;
plot( n1, x1, ':' ) ;
title( 'Sinusoida' ) ;
hold on ;
stem( n, x2 ) ;
hold off ;

subplot( 2, 1, 2 ) ;
L = length( x2 ) / 2 ;

rx = xcorr( x2, L, 'biased' ) ;
stem( rx ) ;
title( 'Auto corelatia' ) ;

end