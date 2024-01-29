

--Constraintler (k�s�tlay�c�lar)

-- == CHECK CONTSTRAINT == 
-- Bir kolona girilecek olan verinin belirli bir �arta uymas�n� zorunlu tutar

--Genel Yap�s�
--Add Constraint [Constraint Ad�] Check (�art)

Alter Table OrnekTablo
Add Kolon3 int


ALter Table OrnekTablo
Add COnstraint Kolon3Kontrol Check ((Kolon3 * 5) % 2 = 0)

Insert OrnekTablo (Kolon3) values (6)

--D�KKAT
--Check constraint olu�turmadan �nce ilgili tabloda �arta ayk�r� de�erler varsa e�er constraint olu�turmayacakt�r !!
-- Ancak �nceki kay�tlar� g�rmezden gelip genede check constraint uygulamak istiyorsak "With Nocheck" komutu kullan�lmal�d�r

--With NoCheck Komutu
--�uana kadar olan kay�tlar� g�rmezden gelip check constraintleri uygulat�r
Alter Table OrnekTablo
With noCheck Add Constraint Kolon3Kontrol Check ((Kolon3 * 5) % 2 = 0)