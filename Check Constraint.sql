

--Constraintler (kýsýtlayýcýlar)

-- == CHECK CONTSTRAINT == 
-- Bir kolona girilecek olan verinin belirli bir þarta uymasýný zorunlu tutar

--Genel Yapýsý
--Add Constraint [Constraint Adý] Check (Þart)

Alter Table OrnekTablo
Add Kolon3 int


ALter Table OrnekTablo
Add COnstraint Kolon3Kontrol Check ((Kolon3 * 5) % 2 = 0)

Insert OrnekTablo (Kolon3) values (6)

--DÝKKAT
--Check constraint oluþturmadan önce ilgili tabloda þarta aykýrý deðerler varsa eðer constraint oluþturmayacaktýr !!
-- Ancak önceki kayýtlarý görmezden gelip genede check constraint uygulamak istiyorsak "With Nocheck" komutu kullanýlmalýdýr

--With NoCheck Komutu
--Þuana kadar olan kayýtlarý görmezden gelip check constraintleri uygulatýr
Alter Table OrnekTablo
With noCheck Add Constraint Kolon3Kontrol Check ((Kolon3 * 5) % 2 = 0)