clc;  clear all;pkg load communications;m =input('Enter degree of generator poly-> '); n = 2^m -1; k = input('Enter length of msg -> '); t = input('Enter error correcting capability -> ');msg = input('Enter message(each of length k bits) -> ');printf("\n");disp('*************** BCH encoding ******************');		code = bchenco(msg, n, k);disp('bch encoded message is ');disp(code);printf("\n");disp('**************** noisy **********************');noisy = mod(randerr(size(msg),n) + code,2);disp('received message (after error)is ');disp(noisy);printf("\n");disp('************* BCH decoding *******************');  [dec err] = bchdeco(noisy, k, t);disp('after decoding, obtained msg is ');disp(dec);printf("\n");disp('************** Error *******************');disp('Error is ');disp(err);