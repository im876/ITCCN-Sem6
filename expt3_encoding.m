clc;
clear all;
n=input('Enter value of n=');
k=input('Enter value of k=');
m=n-k;
P=input('Enter parity matrix=');
disp(P);
I=eye(k,k);
disp('Generator Matrix G=');
G=[I P];
disp(G);
d=0:(2^k)-1;
u=dec2bin(d,3);
disp('Display all possible messages=');
disp(u);
cws=u*G;
cw=rem(cws,2);
disp('Generated all codewords for the messages are=');
disp(cw);
B=input('Enter the messages=');
disp('entered message is=');
disp(B);
C=B*G;
Code_C=rem(C,2);
disp('Generated codeword for the message is=');
disp(Code_C);