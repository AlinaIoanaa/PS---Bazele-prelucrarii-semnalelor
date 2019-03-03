function PS_Tema3( M, omega )

Ts = 1;
n = 0 : M - 1 ;
n1 = 0 : 0.2 : M - 1 ;

t = n * Ts ;                                                  %perioada        
T = n1 * Ts;                                                  %perioada

x1 = sin( omega * T );
x2 = sin( omega * t );

plot( n1, x1, ':' );
hold on
stem( n, x2 );

end
