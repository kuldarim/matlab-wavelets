clc;
close all;
clear all;
load mask;

meth   = 'ezw';   % Method name
wnames = {'haar', 'db1', 'sym2', 'coif1', 'bior1.1', 'rbio1.1'};

for i = 1:6
  disp(char(wnames(i)));
  fprintf('CR BPP snr \n');
  % nbloop - number of loops
  for nbloop = 1:12
    [CR,BPP,snr] = get_compresion_rates(X, meth, char(wnames(i)), nbloop);
    fprintf('%3.2f, %3.2f, %3.2f \n', CR, BPP, snr);
  end
end



    





