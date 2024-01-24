
-- WHERE KOMUTU
-- AND OPERAT�R�
-- OR OPERAT�R�
-- year and day operat�r�

--Select sorgular�nda where �art� yazmak

SELECT * FROM Personeller

--personeller tablosunda �ehri london olan verileri listeyelim
SELECT * FROM Personeller Where Sehir = 'London'

--Personeller tablosunda ba�l� �al��t��� ki�i say�s� 5'ten k���k olanlar� listeleyeim
SELECT * FROM Personeller WHERE BagliCalistigiKisi < 5

--AND OPERAT�R�
--Personeller tablosunda �ehri London ve �lkesi UK olanlar� listeleyelim
select * from Personeller where Sehir = 'Seatle' and Ulke = 'USA'

--Personeller tablosunda Unvaneki 'Mr.' veya �ehri seattle olan t�m personeli listeleyelim
select * from Personeller where UnvanEki = 'Ms.' or Sehir = 'Seattle'

--Kar���k �rnekler
--Ad� Robert soyad� King olan personellin t�m bilgilerini
select * from Personeller where Adi = 'Robert' and SoyAdi = 'King'

--personel�d si 5 olan personeli getir
select * from Personeller where PersonelID = 5

--personelid si 5 ten b�y�k olan personeli getir
select * from Personeller where PersonelID > 5

--Fonksiyon sonu�lar�n� �art olarak kullanmak
--1993 y�l�nda i�e ba�layanlar� listele
select * from Personeller Where YEAR(IseBaslamaTarihi) = 1993

--1993 y�l�ndan sonra i�e ba�layanlar� listele
select * from Personeller where YEAR(IseBaslamaTarihi) > 1993

--Do�um g�n� ay�n 19 olmayan personelleir listeyelim <> olmayan anlam�na gelir
select * from Personeller where DAY(DogumTarihi) <> 19

--do�um y�l� 1950 ile 1965 y�llar� aras�nda olan personelleri getir
select * from Personeller where YEAR(DogumTarihi) > 1950 and YEAR(DogumTarihi) < 1965

--ya�ad��� �ehir london,tacoma ve kirklan olan personelleri ad�n� listeleyelim
select Adi from Personeller where Sehir = 'London' or Sehir ='Tacoma' or Sehir='Kirkland'