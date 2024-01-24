
--SELECT KOMUTU


--Personeller s�tunundaki Adi'ni Ad Soyad olarak birle�tirdik ve Kare i�ine alarak bo�lu�u yedirdik
select Adi [Ad Soyad], SoyAdi [Soy �simler] from Personeller 

--Bo�luk bulunan tablolar� bu �ekilde �a��r�yoruz
select * from [Satis Detaylari]

--Adi ve soyad�n� aras�nda bo�luk b�rakarak yeni bir s�tun ismiyle birle�tirmi� olduk
select Adi + ' ' + SoyAdi [Personel Bilgileri] from Personeller

--Farkl� tipteki klonlar� birle�tirme
select Adi + ' ' + CONVERT(nvarchar,IseBaslamaTarihi) [Ba�lama Tarihi] from Personeller

--alternatifi
select Adi + ' ' + CAST(IseBaslamaTarihi as nvarchar) Baslama  from Personeller