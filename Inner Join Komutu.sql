

--Tablolarý yan yana birleþtirme Basit hali
select * from  Personeller , Satislar

--INNER JOIN
--Genel Mantýk
--Select * from tablo1 inner join tablo2 on Tablo1.iliþkiliKolon = tablo2.iliþkiliKolon

--Ýki tabloyu iliþkisel birleþtirme
--Hangi personel hangi satýþlarý yapmýþtýr
select * from Personeller inner join Satislar on Personeller.PersonelID = Satislar.PersonelID

--hangi ürünler hangi kategoride urunler ve kategoriler
select u.UrunAdi , k.KategoriAdi from Urunler as u inner join Kategoriler as k on u.KategoriID = k.KategoriID



--WHere komutu kullanýmý

--Beverages kategorisindeki ürünleim (urunler kategoriler)
select u.UrunAdi , k.KategoriAdi  from Kategoriler k inner join Urunler u on k.KategoriID = u.KategoriID  Where k.KategoriAdi = 'Beverages'

--Produce kategorisindeki ürünlerim
select u.UrunAdi , k.KategoriAdi from Kategoriler k inner join Urunler u on u.KategoriID = k.KategoriID where k.KategoriAdi = 'Produce'

--beverages kategorisindeki ürünlerimin sayýsý kaçtýr
select k.KategoriAdi , COUNT(u.UrunAdi) from Kategoriler k inner join Urunler u on k.KategoriID = u.KategoriID where k.KategoriAdi = 'Beverages' group by k.KategoriAdi 

--seafood kategorisindeki ürünlerin listesini 
select u.UrunAdi from Kategoriler k inner join Urunler u on k.KategoriID = u.KategoriID where k.KategoriAdi = 'Seafood'

--hangi ürünü hangi çalýþan yapmýþ satýslar personel
select s.SatisID , p.Adi from Personeller p inner join Satislar s on p.PersonelID = s.PersonelID

--hangi çalýþan kaç tane ürün satmýþ 
select p.Adi , COUNT(s.SatisID) from Personeller p inner join Satislar s on p.PersonelID = s.PersonelID group by p.Adi

--faks numarasý null olmayan tedarikçilerden alýnmýþ ürünler nelerdir? (tedarikçi - urunler)
select u.UrunAdi , t.SirketAdi from Tedarikciler t inner join Urunler u on u.TedarikciID = t.TedarikciID where t.Faks is not null
--veya
select u.UrunAdi , t.SirketAdi from Tedarikciler t inner join Urunler u on u.TedarikciID = t.TedarikciID where t.Faks <> ' '



--Ikiden fazla tabloyu iliþkisel þekilde birleþtirme

--1997 yýlýndan sonra nancy nin satýþ yaptýðý firmalarýn isimleri (1997 dahil) 
select m.SirketAdi from Personeller p inner join Satislar s on p.PersonelID = s.PersonelID inner join Musteriler m on s.MusteriID = m.MusteriID where YEAR( s.SatisTarihi) > '1997' and p.Adi = 'Nancy'

--Limited olan tedarikçilerden alýnmýþ seafood kategorisindeki ürünlerimin toplam satýþ tutarý
select SUM(u.HedefStokDuzeyi * u.BirimFiyati)  from Tedarikciler t inner join Urunler u on t.TedarikciID = u.TedarikciID inner join Kategoriler k on k.KategoriID = u.KategoriID where t.SirketAdi like '%Ltd.%' and k.KategoriAdi = 'Seafood'



--Ayný tabloyu iliþkisel birleþtirme 

--personellerin baðlý çalþtýðý kiþiler nelerdir?
select p.Adi , pe.Adi from Personeller p inner join Personeller pe on p.BagliCalistigiKisi = pe.PersonelID

