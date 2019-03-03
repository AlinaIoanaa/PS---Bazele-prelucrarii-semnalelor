%sub a; L fix, N diferit

clc; clear all; close all; 

figure;
subplot( 4, 1, 1 ) ;
media1 = PS_Tema4( 250, 125 ) ;
title( 'N = 250, L = 50' ) ;                %N = 250

subplot( 4, 1, 2 ) ;
media2 = PS_Tema4( 300, 125 ) ;
title( 'N = 300, L = 50' ) ;                %N = 300

subplot( 4, 1, 3 ) ;
media3 = PS_Tema4( 350 , 125 ) ;
title( 'N = 350, L = 50' ) ;                %N = 350

subplot( 4, 1, 4 ) ;
media4 = PS_Tema4( 400, 125 ) ;
title( 'N = 400, L = 50' ) ;                %N = 400