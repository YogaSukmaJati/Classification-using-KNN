function MatriksHasil=ko135(pic)
pic=double(pic);
Temp=zeros(256);
[tinggi,lebar]=size(pic);
for i=2:tinggi
for j=2:lebar
p=pic(i,j)+1;
q=pic(i-1,j-1)+1;
Temp(p,q) = Temp(p,q)+1 ;
Temp(q,p) = Temp(q,p)+1 ;
end
end
JumlahPixel=sum(sum(Temp));
MatriksHasil=Temp/JumlahPixel;