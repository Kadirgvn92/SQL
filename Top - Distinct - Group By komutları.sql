

--TOP KOMUTU
--�lk �� veriyi getirir
select top(4) * from Personeller

--DISTINCT KOMUTU
--AYn� olan ifadeleri teke indirip ��kt�y� verir
select Distinct Sehir from Personeller

--Group BY
select * from Urunler
-- Birden fazla kolon gruplama 
select KategoriID, TedarikciID , COUNT(*) Say�s� from Urunler group By KategoriID , TedarikciID

select * from Satislar
--    Kolon ismi   Say�s�       Tablo           hangi kolona g�re s�rlayacak
select PersonelID,COUNT(*) from Satislar group by PersonelID

--Personelimin ne kadar sat�� yapt���n� hesaplayal�m

select PersonelID , SUM(NakliyeUcreti) from Satislar group by PersonelID