clc;
close all;
clear all;
load mask;

% Method name
meth   = 'ezw';
% wavelet names
wnames = {'haar', 'db1', 'sym2', 'coif1', 'bior1.1', 'rbio1.1'};
% loop number values
nbloops = [1,2,3,5,6,7,8,13,21,34];
number_of_wavelets = 6;
number_of_loops = 10;

for i = 1:number_of_wavelets
  disp(char(wnames(i)));
  fprintf('CR BPP snr \n');
  plotdata = [];
  % nbloop - number of loops
  for j = 1:number_of_loops
    [CR,BPP,snr] = get_compresion_rates(X, meth, char(wnames(i)), nbloops(:,j));
    fprintf('%3.2f, %3.2f, %3.2f \n', CR, BPP, snr);
    plotdata(:,j) = snr;
  end
  %figure;plot(plotdata);
  subplot(number_of_wavelets,1,i), plot(plotdata), title(char(wnames(i)));
end



    





