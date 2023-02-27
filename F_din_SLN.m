A = [1 0 0; 1 0 -1; 0 1 2];
B = [2 -1; 1 0; 0 1];
C = [0 0 1];
lambdad = [-1 -1 -1];
qt = [3 -2 -1];
g = [1; 1];

[n, m] = size(B);
n;
m;
F0 = zeros(m,n);

A0 = A + B * F0;

ft = -qt * ((A0 - lambdad(1,1) * eye(3)) * (A0 - lambdad(1,2) * eye(3)) * (A0 - lambdad(1,3) * eye(3)));
F = F0 + g * ft
