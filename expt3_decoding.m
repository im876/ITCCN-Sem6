clc;
clear all; 
close all;
 
n=input('Enter the codeword length,n= ');
k=input('Enter the no of message length of the codeword,k= ');
P=input('Enter the coeff of parity matrix :');
r=input('Enter the received codeword :');
 
a=P'        %Transpose of parity matrix,P
I=eye(n-k)  %Identity matrix of the order of (n-k)
H=cat(2,a,I) %Parity Check Matrix H
TransposeH=H'
s=r*TransposeH   %Syndrome vector,s=received codeword * H'
l=rem(s,2)
if( l==0)
    disp('no need of correction');
else
    e=eye(n) %returns the n-by-n identity matrix.
el=e*TransposeH  
sl=rem(el,2)
for i=1:n
    if l==sl(i,:)
        break;
    end
end
correctedCodeword=xor(r,e(i,:))          %correctedCodeword=r xor e
mes=correctedCodeword(1:k)
end
