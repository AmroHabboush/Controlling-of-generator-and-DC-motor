% Part vii
clc
clear

% Pole-Placement Method
A=[-10 0 0;250 -5 -2.5; 0 0.05 -2];
eig(A)
B=[5 0 0]';
rank(ctrb(A,B))
K=place(A,B,[-6+8j  -6-8j  -60])


% LQR Method
R=1;
Q=[1 0 0;0 1 0;0 0 1000];
K_lqr=lqr(A,B,Q,R)