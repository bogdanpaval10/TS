A = [2 1 -1; 1 0 0; 0 1 0];
B = [0 1; 2 0; 0 0];
C = [0 -1 1];
F0 = [0 0 0; 0 0 0];
g = [0; 1];

A0 = A + B * F0;
b0 = B * g;

R0 = [b0, A0 * b0, (A0^2) * b0];
R0 = inv(R0);
qt = R0(3, :)