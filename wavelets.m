clc;
close all;
clear all;
load mask;

meth   = 'ezw';   % Method name
wnames = {'haar', 'db1', 'sym2'};

for i = 1:3
  disp(char(wnames(i)));
  fprintf('CR BPP snr \n');
  % nbloop - number of loops
  for nbloop = 1:12
    [CR,BPP,snr] = get_compresion_rates(X, meth, char(wnames(i)), nbloop);
    fprintf('%3.2f, %3.2f, %3.2f \n', CR, BPP, snr);
  end
end



    





