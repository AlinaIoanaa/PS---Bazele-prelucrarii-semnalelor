%sub a
clc; clear all; close all;

load sunet_a.mat
load sunet_i.mat
load sunet_s.mat
load xilo.mat

%Sunetul a 
[ sunet_a s_a ] = auread( 'sunet_a.au' );
subplot( 4, 1, 1 );
stem( sunet_a );                                      %semnal discret
title( 'Semnalul a' );
durata_a = length( sunet_a ) / s_a

%Sunetul i
[ sunet_i s_i ] = auread( 'sunet_i.au' );
subplot( 4, 1, 2 );
stem( sunet_i );                                       %semnal discret
title( 'Semnalul i' );
durata_i = length( sunet_i ) / s_i

%Sunetul s
[ sunet_s s_s ] = auread( 'sunet_s.au' );
subplot( 4, 1, 3 );
stem( sunet_s );                                        %semnal discret
title( 'Semnalul s' );
durata_s = length( sunet_s ) / s_s

%Sunetul xilo
[ xilo s_x ] = auread( 'xilo.au' );
subplot( 4, 1, 4 );
stem( xilo );                                           %semnal discret
title( 'Semnalul xilo' );
durata_xilo = length( xilo ) / s_x


%info = audioinfo(s_a)
