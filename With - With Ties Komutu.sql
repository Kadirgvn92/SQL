

--With Ties Komutu 
--with Komutu

select * from [Satis Detaylari]

--Ýlk altý verileri getirmek istiyorsak
select top 6 * from [Satis Detaylari]

--With tiesda þu durum var : with ties Order by ile çalýþýr yoksa çalýþmaz
--order by ile çalýþtýðýndan bir sýralama kolonu yazmamýz gerekiyor order By'a 
--bu kolona sýraladýðýmýzda son gelen order by kolon verisine ait diðer veriler de gelir 
select top 6 with ties * from [Satis Detaylari] order by SatisID

-- BÝze burada normalde 6 veri getirmesini istedik ancak 8 veri getirdi nedeni
--satisID de son gelen 6. verinin ýd'sinden 2 tane daha olmasýndan dolayý 8 adet 
--veri getirdi.



--With Komutu
--Kompleks olan kodlarýmýzý daha rahat okumamýzý saðlar
with PersonelSatis (ID,Adi,Soyadi,satisID)
as
(
select s.PersonelID,Adi,SoyAdi,SatisID from Personeller p inner join Satislar s on p.PersonelID = s.PersonelID
)
select * from PersonelSatis ps inner join [Satis Detaylari] sd on ps.satisID = sd.SatisID order by ps.ID

