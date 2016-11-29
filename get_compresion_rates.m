% CR - compresion rate
% BPP - bits per pixel
% snr - snr value
function [ CR, BPP, snr ] = get_compresion_rates(image, meth, wname, ratio )

[CR,BPP] = wcompress('c',image,'mask.wtc',meth,'comprat', ratio, 'wname',wname);
Xc = wcompress('u','mask.wtc');
[peaksnr, snr] = psnr(Xc, image);

end

