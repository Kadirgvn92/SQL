

--TOP KOMUTU
--Ýlk üç veriyi getirir
select top(4) * from Personeller

--DISTINCT KOMUTU
--AYný olan ifadeleri teke indirip çýktýyý verir
select Distinct Sehir from Personeller

--Group BY
select * from Urunler
-- Birden fazla kolon gruplama 
select KategoriID, TedarikciID , COUNT(*) Sayýsý from Urunler group By KategoriID , TedarikciID

select * from Satislar
--    Kolon ismi   Sayýsý       Tablo           hangi kolona göre sýrlayacak
select PersonelID,COUNT(*) from Satislar group by PersonelID

--Personelimin ne kadar satýþ yaptýðýný hesaplayalým

select PersonelID , SUM(NakliyeUcreti) from Satislar group by PersonelID