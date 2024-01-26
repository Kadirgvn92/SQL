

--DML (Data Manipulation Language)

--Select,Insert,Update,Delete


--select 

Select * from Personeller

--Insert 
--Insert [Tablo Ad�](Kolonlar) Values(De�erler)
Insert Personeller (Adi,SoyAdi) values('Kadir','G�ven')
Insert Personeller Values ('G�ven','Eray','Game Developer','YM',NULL,NULL,'Bursa','Bursa','Marmara','16303','TR',NULL,NULL,NULL,NULL,NULL,NULL)

--DIKKAT ED�LMES� GEREKENLER
-- Into komutu ile yaz�labilir : eski kullan�md�r gerek yoktur yazmaya
-- Kolonun kabul etti�i veri tipi ve karakter uzunlu�unda kay�t yap�lmal�d�r.
--Not Null olan kolonlar� bo� b�rak�lmayacak de�er verilmesi gerekecektir.
Insert Personeller (Unvan,UnvanEki) values ('a','b') -- hata verecketir.

--Otomatik artan (identity) kolonlar�na de�er atanmamaktad�r.
--Tabloda se�ilen yahut b�t�n kolonlara de�er g�nderilebilee�i belirtilip g�nderilmezse hata verecektir.
Insert Personeller (Adi,SoyAdi) values ('G�ven') -- hata verecektir.

--Pratik Kullan�m
Insert Musteriler (MusteriID, SirketAdi, MusteriAdi, Adres) Values ('NESH�','Nestle A�.','Hilmi','�orum'),
															  	   ('NESNE','Nestle A�.','Necati','�ank�r�'),
															 	   ('NESOS','Nestle A�.','Osman','Batman')

--Insert komutu ile select sorgusu sonucu glene verileri farkl� tabloya kaydetme
Insert ExampleTable Select Adi,Soyadi from Personeller

--Burada dikkat etmemiz gereken nokta select sorgusunda d�nen kolon say�s� ile insert i�lemi yap�lacak tablonun kolon say�s� birbirine e�it olmal�d�r

--Select sorgusu sonucu gelen verileri farkl� bir tablo olu�turarak kaydetme
Select Adi,Soyadi,Ulke into ExampleTable2 from Personeller
--Bu y�ntemle primary key ile foreign key olu�turulmazlar