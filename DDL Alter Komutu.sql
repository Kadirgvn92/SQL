

--DDL ALTER Komutu
--ALter create ile olu�turdu�umuz nesnede de�i�iklik yapmam�z� sa�lar

--Prototip
--Alter [Nesne] [Nesnenin Ad�]

Alter Database OrnekDB
Modify File
(
	Name = 'GG',
	Size = 20
)

--Alter komutu ile tabloya kolon ekleme
Alter Table OrnekTablo
Add Kolon4 nvarchar(max)


--Alter ile tablo kolonu d�zenleme
Alter Table OrnekTablo
Alter Column Kolon4 int

--Alter ile tablodaki kolonu silme
Alter table OrnekTablo
Drop Column Kolon4

--Alter ile tabloya constrains ekleme
alter table OrnekTablo
Add Constraint OrnekConstraint Default 'Bo�' for Kolon2

--Alter ile tablodaki constraint silme
ALter Table OrnekTablo
Drop Constraint OrnekConstraint 

--SP_RENAME ile tablo ad� g�ncelleme
SP_RENAME 'OrnekTablo','OrnekTablooo'

--SP_RENAME ile kolon g�ncelleme
SP_RENAME 'OrnekTablo2.[Kolon 2]','Kolon1453','Column'