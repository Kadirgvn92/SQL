

--Case - When - Else - End

--Personellerimizin isim ve soyisimlerinin yanýnda mr ise erkek ms ise kadýn yazsýn

select Adi,SoyAdi,UnvanEki from Personeller

--Case

Select 
Adi,SoyAdi,
Case
When UnvanEki = 'Mrs.' or UnvanEki = 'Ms.' then 'Erkek'
When UnvanEki = 'Mr.' then 'Kadýn'
Else UnvanEki
End
From Personeller

--Eðer ürünün birim fiyatý 0 - 50 arasýnda ise 'Çin Malý' , 50-100 arasýnda ise 'ucuz' , 100-200 arsaýnda ise 
--'normal' 200den fazla ise pahalý yazsýn

--Dikkat edilmesi gereken husus burada selectten sonra hangi kolonlarý salt þekilde alacaksak onlarý yazýyoruz
--daha sonra þart koymak istedðimiz kolonu case end içine alýp when ise sartlýyourz sonucunu then ile yazýyoruz
-- ancak whenlerin arasýna kesinlikle , virgül koymuyourz yoksa hata veriyor ve caseden öncede virgül kullanýyoruz

select
UrunID,UrunAdi,
Case
When BirimFiyati between 0 and 50 then 'Çin Malý'
When BirimFiyati between 50 and 100 then 'Ucuz'
When BirimFiyati between 100 and 200 then 'Normal'
when BirimFiyati > 200 then 'Pahalý'
else 'Belirsiz'
End
from Urunler

