

--Case - When - Else - End

--Personellerimizin isim ve soyisimlerinin yan�nda mr ise erkek ms ise kad�n yazs�n

select Adi,SoyAdi,UnvanEki from Personeller

--Case

Select 
Adi,SoyAdi,
Case
When UnvanEki = 'Mrs.' or UnvanEki = 'Ms.' then 'Erkek'
When UnvanEki = 'Mr.' then 'Kad�n'
Else UnvanEki
End
From Personeller

--E�er �r�n�n birim fiyat� 0 - 50 aras�nda ise '�in Mal�' , 50-100 aras�nda ise 'ucuz' , 100-200 arsa�nda ise 
--'normal' 200den fazla ise pahal� yazs�n

--Dikkat edilmesi gereken husus burada selectten sonra hangi kolonlar� salt �ekilde alacaksak onlar� yaz�yoruz
--daha sonra �art koymak isted�imiz kolonu case end i�ine al�p when ise sartl�yourz sonucunu then ile yaz�yoruz
-- ancak whenlerin aras�na kesinlikle , virg�l koymuyourz yoksa hata veriyor ve caseden �ncede virg�l kullan�yoruz

select
UrunID,UrunAdi,
Case
When BirimFiyati between 0 and 50 then '�in Mal�'
When BirimFiyati between 50 and 100 then 'Ucuz'
When BirimFiyati between 100 and 200 then 'Normal'
when BirimFiyati > 200 then 'Pahal�'
else 'Belirsiz'
End
from Urunler

