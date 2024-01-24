
--SELECT KOMUTU


--Personeller sütunundaki Adi'ni Ad Soyad olarak birleþtirdik ve Kare içine alarak boþluðu yedirdik
select Adi [Ad Soyad], SoyAdi [Soy Ýsimler] from Personeller 

--Boþluk bulunan tablolarý bu þekilde çaðýrýyoruz
select * from [Satis Detaylari]

--Adi ve soyadýný arasýnda boþluk býrakarak yeni bir sütun ismiyle birleþtirmiþ olduk
select Adi + ' ' + SoyAdi [Personel Bilgileri] from Personeller

--Farklý tipteki klonlarý birleþtirme
select Adi + ' ' + CONVERT(nvarchar,IseBaslamaTarihi) [Baþlama Tarihi] from Personeller

--alternatifi
select Adi + ' ' + CAST(IseBaslamaTarihi as nvarchar) Baslama  from Personeller