clc; close all; clear all;

%sub c

s_x = auread( 'xilo.au' ) ;

figure;
subplot( 2, 1, 1 ) ;
stem( s_x ) ;
title( 'Semnalul Xilo' ) ;                                    %semnalul Xilo 

subplot( 2, 1, 2 )
rs_x = xcorr( s_x( 8000 : 10000 ), 1000, 'biased' ) ;         %corelatia deviata
stem( rs_x ) ;
title( 'Semnalul xilo: corelatia intre 8000 si 10000' ) ;     %corelatia semnalului Xilo

%sub d 

figure;
subplot( 8, 1, 1) ;
stem( s_x ) ;
title( 'Semnalul Xilo' );

subplot( 8, 1, 2) ;
stem( rs_x ) ;
title( 'Semnalul Xilo: corelatia intre 8000 si 10000' );      %semnalul Xilo


s_a = auread( 'sunet_a.au' ) ;

subplot( 8, 1, 3 ) ;
stem( s_a ) ;
title( 'Semnalul a' ) ;                                       %semnalul a 

subplot( 8, 1, 4 ) ;
rs_a = xcorr( s_a( 300 : 500 ), 100, 'biased' ) ;             %corelatia deviata
stem( rs_a ) ;
title( 'Semnalul a: corelatia intre 300 si 500' ) ;           %corelatia semnalului a


s_i = auread( 'sunet_i.au' ) ;

subplot( 8, 1, 5 ) ;
stem( s_i ) ;
title( 'Semnalul i' ) ;                                       %semnalul i 

subplot( 8, 1, 6 ) ;
rs_i = xcorr( s_i( 400 : 700 ), 150, 'biased' ) ;             %corelatia deviata
stem( rs_i ) ;
title( 'Semnalul i: corelatia intre 400 si 700' ) ;           %corelatia semnalului i


s_s = auread( 'sunet_s.au' ) ;

subplot( 8, 1, 7 ) ;
stem( s_a ) ;
title( 'Semnalul s' ) ;                                       %semnalul s 

subplot( 8, 1, 8 ) ;
rs_s = xcorr( s_s( 500 : 900 ), 200, 'biased' ) ;             %corelatia deviata
stem( rs_s ) ;
title( 'Semnalul s: corelatia intre 500 si 900' ) ;           %corelatia semnalului s

%medii

m_x = mean( s_x ) ;                                           %media semnalului Xilo
m_a = mean( s_a ) ;                                           %media semnalului a
m_i = mean( s_i ) ;                                           %media semnalului i
m_s = mean( s_s ) ;                                           %media semnalului s