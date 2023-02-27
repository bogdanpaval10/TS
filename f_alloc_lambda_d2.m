A = [1 0 1; -1 0 -1; 0 0 1];
B = [-1 1; 0 1; 0 -1];
C = [-1 1 -2];
lambda_d = [-1 -1 -1];

[n, m] = size(B);
%Modifica g
g = [1; 1];

F0 = zeros([m n]);
A0 = A + B * F0;
b0 = B * g;

R0 = ctrb(A0,b0);
inv_R0 = inv(R0);

%Modifica q_t
q_t = [0 1 1];

hi = eye(n);
for i = 1:n
    hi = hi * (A0 - lambda_d(i)* eye(n));
end

f_t = -q_t * hi;

F = F0 + g * f_t

