

--With Ties Komutu 
--with Komutu

select * from [Satis Detaylari]

--�lk alt� verileri getirmek istiyorsak
select top 6 * from [Satis Detaylari]

--With tiesda �u durum var : with ties Order by ile �al���r yoksa �al��maz
--order by ile �al��t���ndan bir s�ralama kolonu yazmam�z gerekiyor order By'a 
--bu kolona s�ralad���m�zda son gelen order by kolon verisine ait di�er veriler de gelir 
select top 6 with ties * from [Satis Detaylari] order by SatisID

-- B�ze burada normalde 6 veri getirmesini istedik ancak 8 veri getirdi nedeni
--satisID de son gelen 6. verinin �d'sinden 2 tane daha olmas�ndan dolay� 8 adet 
--veri getirdi.



--With Komutu
--Kompleks olan kodlar�m�z� daha rahat okumam�z� sa�lar
with PersonelSatis (ID,Adi,Soyadi,satisID)
as
(
select s.PersonelID,Adi,SoyAdi,SatisID from Personeller p inner join Satislar s on p.PersonelID = s.PersonelID
)
select * from PersonelSatis ps inner join [Satis Detaylari] sd on ps.satisID = sd.SatisID order by ps.ID

