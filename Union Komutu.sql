

--Union
--Birden fazla select sorgusunu tek seferde alt alta g�stermemizi sa�lar

Select Adi,SoyAdi from Personeller
Union
Select MusteriAdi,MusteriUnvani from Musteriler

--2den fazla birle�tirme
Select Adi,SoyAdi from Personeller
Union
Select MusteriAdi,MusteriUnvani from Musteriler
Union 
Select SirketAdi,Adres from Tedarikciler 

--Joinler yan yana birle�tirilirken unionlarda altalta tablolar birle�tirilir joinlerde ili�kisel bir kolon �zerinden birle�tirme 
--yap�l�rken unionda b�yle bir durum yoktur.

--Dikkat etmemiz gerekenler
-- Union sorgusunun sonucunda olu�an tablonun kolon isimleri,�stteki sorgunun kolon isimlerinden olu�ru
-- �stteki sorgudan ka� kolon �ekilmi�se alttaki sorgudan da o kadar �ekilmesi zorundad�r
--�stteki sorgudan �ekilen kolon veri tipi neyse alttakilerde ayn� tipte olmas� gerekiyor nvarchar ise nvarchar olmas� gerekir
-- Union tekrarl� verileri getirmez veri tekrar yapmaz

--Unionda kullan�lan tablolara kolon eklenebilir. Dikkat etmemiz gereken nokta yukar�daki kurallar �er�evesinde a���ya 
--yukar�dan ayn� say�da kolonar�n eklenmesi gerekmektedir.

select Adi,SoyAdi,'Personeller' 'Personeller'  from Personeller
Union 
select MusteriAdi, MusteriUnvani ,'Musteri' from Musteriler

--Union All Komuut
--Union tekrarl� komutlar� getirmez. Tekrarl� kay�lar� getirmek i�in Union All komutu kullanmal�y�z.
Select Adi,Soyadi from Personeller
Union All
Select MusteriAdi, MusteriUnvani from Musteriler