clc;
close all;
clear all;
load mask;

%https://se.mathworks.com/help/wavelet/ref/wcompress.html
% Method name
meth   = 'lvl_mmc';
% wavelet names
wnames = {'haar', 'db1', 'sym2', 'coif1', 'bior1.1', 'rbio1.1'};
% 'ParName' = 'comprat' or 'COMPRAT' sets the compression ratio.
% ParVal must be such that 0 ? ParVal ? 100.
compresion_ratios = [0,10,20,30,40,50,60,70,80,90,100];
number_of_wavelets = 6;
number_of_ratios = 11;

for i = 1:number_of_wavelets
  disp(char(wnames(i)));
  fprintf('CR BPP snr \n');
  plotdata = [];
  % nbloop - number of loops
  for j = 1:number_of_ratios
    [CR,BPP,snr] = get_compresion_rates(X, meth, char(wnames(i)), compresion_ratios(:,j));
    fprintf('%3.2f, %3.2f, %3.2f \n', CR, BPP, snr);
    plotdata(:,j) = snr;
  end
  %figure;plot(plotdata);
  subplot(number_of_wavelets,1,i), plot(plotdata), title(char(wnames(i)));
end



    





