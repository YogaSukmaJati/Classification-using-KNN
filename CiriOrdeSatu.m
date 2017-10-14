function [CiriMEAN CiriVAR CiriSKEW CiriKURT CiriENT] = CiriOrdeSatu(citra)
H=imhist(citra)';
H=H/sum(H);
I=[0:255];
CiriMEAN= I*H';
CiriENT=-H*log2(H+eps)';
CiriVAR=(I-CiriMEAN).^2*H';
CiriSKEW = (I-CiriMEAN).^3*H'/CiriVAR^1.5;
CiriKURT=(I-CiriMEAN).^4*H'/CiriVAR^2-3;
fprintf('\n\tMean :%13.4f\n',CiriMEAN);
fprintf(' \tVariance :%13.4f\n',CiriVAR );
fprintf(' \tSkewness :%13.4f\n',CiriSKEW);
fprintf(' \tKurtosis :%13.4f\n',CiriKURT);
fprintf(' \tEntropy :%13.4f\n',CiriENT );