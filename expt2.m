clc;
clear all;
close all;
x=input('enter the number of symbols:'); %Enter the number of symbols
for m=1:x
  symbols(m)=input('enter the symbol no:'); %Enter the symbol number
  p(m)=input('enter the probability of symbol :'); %Enter the probablity occurance
  end
  hx=0;    %Initialization of Entropy
  L=0;       %Initialization of Efficiency
  pkg load communications;
  for m=1:x
    dict=huffmandict(symbols,p);  %Function to create dictionary
    hcode=huffmanenco(m,dict);     %encoding
    dsig=huffmandeco(hcode,dict);   %decoding
    code_length(m)=length(hcode);   %to find length
    hx=hx-(p(m)*log2(p(m)));        %formula for entropy
    L=L+code_length(m)*p(m);
    end
     allencode=huffmanenco(symbols,dict); %ecoding code
     decodeall=huffmandeco(allencode,dict); %Decoding code
     display(hx);     %Display efficiency value
     Efficiency=(hx/L)*100;  %Formula for Efficiency 