%%% Cyclic code
clc;  clear all;
pkg load communications;
#{ 
adds named package 'communication package' here to the path ,
after loading package it is possible to use functions provided by the package
#}
n=input('Enter the length of code word:')
k=input('Enter the length of msg word:')
m=input('Enter the msg word:')
G=cyclpoly(n,k,'max')%https://octave.sourceforge.io/communications/function/cyclpoly.html
gx=polyout(G,'x')    %https://octave.sourceforge.io/octave/function/polyout.html
disp('Codeword for the msg word is:')
C=encode(m,n,k,'cyclic',G)%%https://octave.sourceforge.io/communications/function/encode.html
disp('Decoded Codeword is:')
D=decode(C,n,k,'cyclic',G)

%{
