A = [1 0 0; 1 0 -1; 0 1 2];      % SCHIMBA A
B = [0 -1; 1 0; 0 1];            % SCHIMBA B
C = [0 0 1];                     % SCHIMBA C
lambdae = [0 0 0];               % SCHIMBA LAMBDA_E


Astar = A';
bstar = C';
Rstar = [bstar, Astar * bstar, (Astar ^ 2) * bstar];
Rstar = inv(Rstar);
qstart = Rstar(3, :);
fstart = -qstart * ((Astar - lambdae(1,1) * eye(3)) * (Astar - lambdae(1,2) * eye(3)) * (Astar - lambdae(1,3) * eye(3)));
L = fstart';

J = A + L * C
K = -L
H = B;
M = eye(3);
N = 0;