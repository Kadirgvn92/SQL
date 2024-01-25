

--Tablolar� yan yana birle�tirme Basit hali
select * from  Personeller , Satislar

--INNER JOIN
--Genel Mant�k
--Select * from tablo1 inner join tablo2 on Tablo1.ili�kiliKolon = tablo2.ili�kiliKolon

--�ki tabloyu ili�kisel birle�tirme
--Hangi personel hangi sat��lar� yapm��t�r
select * from Personeller inner join Satislar on Personeller.PersonelID = Satislar.PersonelID

--hangi �r�nler hangi kategoride urunler ve kategoriler
select u.UrunAdi , k.KategoriAdi from Urunler as u inner join Kategoriler as k on u.KategoriID = k.KategoriID



--WHere komutu kullan�m�

--Beverages kategorisindeki �r�nleim (urunler kategoriler)
select u.UrunAdi , k.KategoriAdi  from Kategoriler k inner join Urunler u on k.KategoriID = u.KategoriID  Where k.KategoriAdi = 'Beverages'

--Produce kategorisindeki �r�nlerim
select u.UrunAdi , k.KategoriAdi from Kategoriler k inner join Urunler u on u.KategoriID = k.KategoriID where k.KategoriAdi = 'Produce'

--beverages kategorisindeki �r�nlerimin say�s� ka�t�r
select k.KategoriAdi , COUNT(u.UrunAdi) from Kategoriler k inner join Urunler u on k.KategoriID = u.KategoriID where k.KategoriAdi = 'Beverages' group by k.KategoriAdi 

--seafood kategorisindeki �r�nlerin listesini 
select u.UrunAdi from Kategoriler k inner join Urunler u on k.KategoriID = u.KategoriID where k.KategoriAdi = 'Seafood'

--hangi �r�n� hangi �al��an yapm�� sat�slar personel
select s.SatisID , p.Adi from Personeller p inner join Satislar s on p.PersonelID = s.PersonelID

--hangi �al��an ka� tane �r�n satm�� 
select p.Adi , COUNT(s.SatisID) from Personeller p inner join Satislar s on p.PersonelID = s.PersonelID group by p.Adi

--faks numaras� null olmayan tedarik�ilerden al�nm�� �r�nler nelerdir? (tedarik�i - urunler)
select u.UrunAdi , t.SirketAdi from Tedarikciler t inner join Urunler u on u.TedarikciID = t.TedarikciID where t.Faks is not null
--veya
select u.UrunAdi , t.SirketAdi from Tedarikciler t inner join Urunler u on u.TedarikciID = t.TedarikciID where t.Faks <> ' '



--Ikiden fazla tabloyu ili�kisel �ekilde birle�tirme

--1997 y�l�ndan sonra nancy nin sat�� yapt��� firmalar�n isimleri (1997 dahil) 
select m.SirketAdi from Personeller p inner join Satislar s on p.PersonelID = s.PersonelID inner join Musteriler m on s.MusteriID = m.MusteriID where YEAR( s.SatisTarihi) > '1997' and p.Adi = 'Nancy'

--Limited olan tedarik�ilerden al�nm�� seafood kategorisindeki �r�nlerimin toplam sat�� tutar�
select SUM(u.HedefStokDuzeyi * u.BirimFiyati)  from Tedarikciler t inner join Urunler u on t.TedarikciID = u.TedarikciID inner join Kategoriler k on k.KategoriID = u.KategoriID where t.SirketAdi like '%Ltd.%' and k.KategoriAdi = 'Seafood'



--Ayn� tabloyu ili�kisel birle�tirme 

--personellerin ba�l� �al�t��� ki�iler nelerdir?
select p.Adi , pe.Adi from Personeller p inner join Personeller pe on p.BagliCalistigiKisi = pe.PersonelID

