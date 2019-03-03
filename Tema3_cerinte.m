clc; close all; clear all;

%sub a
figure
subplot( 3, 1, 1 );
PS_Tema3( 12, pi / 12 );
title( 'sub a, k = 1' );

%sub b
subplot( 3, 1, 2 );
PS_Tema3( 12, 3 * pi / 12 );
title( 'sub b, k = 3' );

%sub c
subplot( 3, 1, 3 );
PS_Tema3( 12, 1 );
title( 'sub c, sinusoida aperiodica cu omega = 1' );

%sub d
figure 
subplot( 2, 1, 1 );                                    
PS_Tema3( 8, pi / 8 );                                 %omega = pi / 3
title('omega = pi / 3');

subplot( 2, 1, 2 ); 
PS_Tema3( 8, 7 * pi / 8 );                             %omega = 7 * pi / 3
title('omega = 7 * pi / 3');

suptitle( 'diferenta dintre sinusoide' );