

--Union
--Birden fazla select sorgusunu tek seferde alt alta göstermemizi saðlar

Select Adi,SoyAdi from Personeller
Union
Select MusteriAdi,MusteriUnvani from Musteriler

--2den fazla birleþtirme
Select Adi,SoyAdi from Personeller
Union
Select MusteriAdi,MusteriUnvani from Musteriler
Union 
Select SirketAdi,Adres from Tedarikciler 

--Joinler yan yana birleþtirilirken unionlarda altalta tablolar birleþtirilir joinlerde iliþkisel bir kolon üzerinden birleþtirme 
--yapýlýrken unionda böyle bir durum yoktur.

--Dikkat etmemiz gerekenler
-- Union sorgusunun sonucunda oluþan tablonun kolon isimleri,üstteki sorgunun kolon isimlerinden oluþru
-- Üstteki sorgudan kaç kolon çekilmiþse alttaki sorgudan da o kadar çekilmesi zorundadýr
--Üstteki sorgudan çekilen kolon veri tipi neyse alttakilerde ayný tipte olmasý gerekiyor nvarchar ise nvarchar olmasý gerekir
-- Union tekrarlý verileri getirmez veri tekrar yapmaz

--Unionda kullanýlan tablolara kolon eklenebilir. Dikkat etmemiz gereken nokta yukarýdaki kurallar çerçevesinde aþðýya 
--yukarýdan ayný sayýda kolonarýn eklenmesi gerekmektedir.

select Adi,SoyAdi,'Personeller' 'Personeller'  from Personeller
Union 
select MusteriAdi, MusteriUnvani ,'Musteri' from Musteriler

--Union All Komuut
--Union tekrarlý komutlarý getirmez. Tekrarlý kayýlarý getirmek için Union All komutu kullanmalýyýz.
Select Adi,Soyadi from Personeller
Union All
Select MusteriAdi, MusteriUnvani from Musteriler