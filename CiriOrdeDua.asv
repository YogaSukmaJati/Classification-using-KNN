function [CiriASM CiriCON CiriCOR CiriVAR CiriIDM CiriENT]= CiriOrdeDua(pic)
mk000=ko000(pic);
mk045=ko045(pic);
mk090=ko090(pic);
mk135=ko135(pic);
MatKook=(mk000+mk045+mk090+mk135)/4;
I=[1/256];
SumX=sum(MatKook);
SumY=sum(MatKook,2);
MeanX=SumX*I';
MeanY=SumY*I';
StdX=sqrt((I-MeanX).^2*SumX');
StdY=sqrt((I-MeanY').^2*SumY);
save data_error
CiriASM=sum(sum(MatKook.^2));
CiriCON=0;CiriCOR=0;CiriVAR=0;CiriIDM=0;CiriENT=0;
for i=1:256
for j=1:256
TempCON = (i-j)*(i-j)*MatKook(i,j);
TempCOR = (i)*(j)*MatKook(i,j);
TempVAR = (i-MeanX)*(j-MeanY)*MatKook(i,j);
TempIDM = (MatKook(i,j))/(1+(i-j)*(i-j));
TempENT = -(MatKook(i,j))*(log2(MatKook(i,j)+eps));
CiriCON = CiriCON + TempCON;
CiriCOR = CiriCOR + TempCOR;
CiriVAR = CiriVAR + TempVAR;
CiriIDM = CiriIDM + TempIDM;
CiriENT = CiriENT + TempENT;
end
end
CiriCOR=(CiriCOR-MeanX*MeanY)/(StdX*StdY);
fprintf('\n\tASM :%13.4f\n',CiriASM);
fprintf(' \tCON :%13.4f\n',CiriCON);
fprintf(' \tCOR :%13.4f\n',CiriCOR);
fprintf(' \tVAR :%13.4f\n',CiriVAR);
fprintf(' \tIDM :%13.4f\n',CiriIDM);
fprintf(' \tENT :%13.4f\n',CiriENT);