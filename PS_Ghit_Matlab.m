%------------------------Ghid Matlab------------------------%

% SEMNALE DETERMINISTE
N = 50;                                       %lungime N
n = 0 : N - 1 ;                               

imp_unit = eye( 1, N );                       %impulsul unitate
tr_unit = ones( 1, N );                       %treapta unitate

w = 1;
phi = 1.618;
alfa = 2.72;

e = alfa .^ n ;                               %semnal exponential
sin_real = sin( w * n + phi );                %sinusoida reala
j = sqrt(-1);
sin_compl = exp( j * ( w * n + phi ));        %sinusoida complexa

stem( n, sin_real );                          %echivalentul functiei plot pentru semnale discrete

x1 = n;
x2 = n;                                       %doua semnale cu acelasi suport
xs = x1 + x2;                                 %suma semnalelor
xc = conv( x1, x2 );                          %convolutia semnalelor
xm = x1 .* x2;                                %modulatia in timp a semnalelor

% SEMNALE ALEATOARE(stocastice)
x1 = rand( 1, N );
x2 = randn( 1, N );                           %semnal aleator cu distributie gaussiana de medie nula si dispersie unitara

m = mean( x2 );                               %media semnalului aleator
r = xcorr( x2, 'unbiased' );                  %auto-corelatia nedeviata
rx = xcorr( x2, 'biased' );                   %aut-corelatia deviata, lungime 2 * N - 1
                                              %daca nu se specifica daca semnalul este deviat sau nevediat atunci s.n. auto-corelatie bruta                
rxx = xcov( x2 );                                             
                                              
% SUNETE(semnale audio)
%se salveaza cu functia auwrite pentru a putea fi ascultat
auwrite(yx, 44100, 16, 'linear', 'xilo.au');
%se scrie cu functia auread
%pentru fisierele .wav se folosesc functiile wavwrite si wavread

