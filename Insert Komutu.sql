

--DML (Data Manipulation Language)

--Select,Insert,Update,Delete


--select 

Select * from Personeller

--Insert 
--Insert [Tablo Adý](Kolonlar) Values(Deðerler)
Insert Personeller (Adi,SoyAdi) values('Kadir','Güven')
Insert Personeller Values ('Güven','Eray','Game Developer','YM',NULL,NULL,'Bursa','Bursa','Marmara','16303','TR',NULL,NULL,NULL,NULL,NULL,NULL)

--DIKKAT EDÝLMESÝ GEREKENLER
-- Into komutu ile yazýlabilir : eski kullanýmdýr gerek yoktur yazmaya
-- Kolonun kabul ettiði veri tipi ve karakter uzunluðunda kayýt yapýlmalýdýr.
--Not Null olan kolonlarý boþ býrakýlmayacak deðer verilmesi gerekecektir.
Insert Personeller (Unvan,UnvanEki) values ('a','b') -- hata verecketir.

--Otomatik artan (identity) kolonlarýna deðer atanmamaktadýr.
--Tabloda seçilen yahut bütün kolonlara deðer gönderilebileeði belirtilip gönderilmezse hata verecektir.
Insert Personeller (Adi,SoyAdi) values ('Güven') -- hata verecektir.

--Pratik Kullaným
Insert Musteriler (MusteriID, SirketAdi, MusteriAdi, Adres) Values ('NESHÝ','Nestle Aþ.','Hilmi','Çorum'),
															  	   ('NESNE','Nestle Aþ.','Necati','Çankýrý'),
															 	   ('NESOS','Nestle Aþ.','Osman','Batman')

--Insert komutu ile select sorgusu sonucu glene verileri farklý tabloya kaydetme
Insert ExampleTable Select Adi,Soyadi from Personeller

--Burada dikkat etmemiz gereken nokta select sorgusunda dönen kolon sayýsý ile insert iþlemi yapýlacak tablonun kolon sayýsý birbirine eþit olmalýdýr

--Select sorgusu sonucu gelen verileri farklý bir tablo oluþturarak kaydetme
Select Adi,Soyadi,Ulke into ExampleTable2 from Personeller
--Bu yöntemle primary key ile foreign key oluþturulmazlar