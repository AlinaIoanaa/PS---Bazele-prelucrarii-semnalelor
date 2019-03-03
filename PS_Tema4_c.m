clc; close all; clear all;

s_x = auread( 'xilo.au' ) ;

figure;
subplot( 2, 1, 1 ) ;
stem( s_x ) ;
title( 'Semnalul Xilo' ) ;                                    %semnalul Xilo 

subplot( 2, 1, 2 )
rs_x = xcorr( s_x( 8000 : 10000 ), 1000, 'biased' ) ;         %corelatia deviata
stem( rs_x ) ;
title( 'Semnalul xilo: corelatia intre 8000 si 10000' ) ;     %corelatia semnalului Xilo
