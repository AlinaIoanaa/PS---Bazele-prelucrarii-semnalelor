%sub a
function media = PS_Tema4( N, L )

x = randn( 1, N );                           %semnal gaussian
media = mean( x );                           %media trebuie sa fie nula
rx = xcorr( x, L, 'biased' );                %dispersia trebuie sa fie unitara

plot( rx );
hold on;
stem( rx );
hold off;

end
