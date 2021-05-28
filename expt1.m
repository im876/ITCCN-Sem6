%noiseless channel

clc;
close all;
clear all;

disp ("CODE BY ISHAN MODI");
i=input("Enter the number of input : ");
q=input("Enter the joint probability matrix : ");
sum=0;

%probability P(x)
for n=1:i
    w=0;
    for m=1:i
        p(n)=w+ q(n,m);
        w=p(n); 
 end
end
disp('P(X):');
disp(p);

%Entropy H(x)
for n=1:i
    
H=sum+p(n)*log(1/p(n))/log(2);
    sum=H;
end
disp("H(X):");
disp(H);

%Conditional Probability matrix
for n=1:i
    for m=1:i
        a(n,m)=q(n,m)/p(n);
    end
end
disp("P(Y/X):");
disp(a);

%Entropy H (y/x)
H1=0;
d=0;
for n=1:i
    for m=1:i
        if (a(n,m)>0)
        Hl=d+(q(n,m)*log2(1/(a(n,m))));
        d=H1;
        
    end
end

disp('H (Y/X) :');
disp(H1);

%Probability p (y)
for n=1:i
    w=0;
    for m=1:i
        s(n)=w+q(m,n);
        w=s(n);
    end
end
disp('P (Y) :');
disp(s);

%entropy H(y)
k=0;
for n=1:i
    H2=k+s(n)*log2(1/s(n));
    k=H2;

end
disp("H(Y):");
disp(H2);

%mutual information

m=H2-H1;
disp("Mutual Information:");
disp(m);
end;