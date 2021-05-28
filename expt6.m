clc;
clear all;
pkg load communications;
k=input('input constraint length : '); %Enter the length of the constraint
g=input('enter coefficients of generator paths : ');
msg=input('enter message : ');
t=poly2trellis(k,g);
chcode=convenc(msg,t)
disp('encoded sequence is : ')
disp(chcode);

%addition of random error
err=randerr(1,length(chcode),2);
disp('error pattern is : ');
disp(err)
rcode=rem(chcode+err,2)
disp('received sequence is : ')
disp(rcode);
