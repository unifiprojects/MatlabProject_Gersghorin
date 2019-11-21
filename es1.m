clc
clear

A = [ 1  2 -1;
      2  7  0;
     -1  0 -5]
figure('Name','Matrice A');
gershghorin(A);

B = [ 0 1 0;
      0 0 1;
      2 1 1]
figure('Name','Matrice B');
gershghorin(B);

% Ogni matrice ha sicuramente un autovalore reale (perche' hanno dimensioni  
% dispari), perche' i complessi stanno a coppie (coniugati con stesso modulo,
% cioe' con parte immaginaria di segno opposto e parte reale identica). 
% Il grafico B ci dice che 2 autovalori sono sicuramente complessi perche' 
% 2 cerchi sono a coppie coincidenti.