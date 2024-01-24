
-- WHERE KOMUTU
-- AND OPERATÖRÜ
-- OR OPERATÖRÜ
-- year and day operatörü

--Select sorgularýnda where þartý yazmak

SELECT * FROM Personeller

--personeller tablosunda þehri london olan verileri listeyelim
SELECT * FROM Personeller Where Sehir = 'London'

--Personeller tablosunda baðlý çalýþtýðý kiþi sayýsý 5'ten küçük olanlarý listeleyeim
SELECT * FROM Personeller WHERE BagliCalistigiKisi < 5

--AND OPERATÖRÜ
--Personeller tablosunda þehri London ve ülkesi UK olanlarý listeleyelim
select * from Personeller where Sehir = 'Seatle' and Ulke = 'USA'

--Personeller tablosunda Unvaneki 'Mr.' veya þehri seattle olan tüm personeli listeleyelim
select * from Personeller where UnvanEki = 'Ms.' or Sehir = 'Seattle'

--Karýþýk Örnekler
--Adý Robert soyadý King olan personellin tüm bilgilerini
select * from Personeller where Adi = 'Robert' and SoyAdi = 'King'

--personelýd si 5 olan personeli getir
select * from Personeller where PersonelID = 5

--personelid si 5 ten büyük olan personeli getir
select * from Personeller where PersonelID > 5

--Fonksiyon sonuçlarýný þart olarak kullanmak
--1993 yýlýnda iþe baþlayanlarý listele
select * from Personeller Where YEAR(IseBaslamaTarihi) = 1993

--1993 yýlýndan sonra iþe baþlayanlarý listele
select * from Personeller where YEAR(IseBaslamaTarihi) > 1993

--Doðum günü ayýn 19 olmayan personelleir listeyelim <> olmayan anlamýna gelir
select * from Personeller where DAY(DogumTarihi) <> 19

--doðum yýlý 1950 ile 1965 yýllarý arasýnda olan personelleri getir
select * from Personeller where YEAR(DogumTarihi) > 1950 and YEAR(DogumTarihi) < 1965

--yaþadýðý þehir london,tacoma ve kirklan olan personelleri adýný listeleyelim
select Adi from Personeller where Sehir = 'London' or Sehir ='Tacoma' or Sehir='Kirkland'