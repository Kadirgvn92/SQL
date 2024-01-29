

--DDL ALTER Komutu
--ALter create ile oluþturduðumuz nesnede deðiþiklik yapmamýzý saðlar

--Prototip
--Alter [Nesne] [Nesnenin Adý]

Alter Database OrnekDB
Modify File
(
	Name = 'GG',
	Size = 20
)

--Alter komutu ile tabloya kolon ekleme
Alter Table OrnekTablo
Add Kolon4 nvarchar(max)


--Alter ile tablo kolonu düzenleme
Alter Table OrnekTablo
Alter Column Kolon4 int

--Alter ile tablodaki kolonu silme
Alter table OrnekTablo
Drop Column Kolon4

--Alter ile tabloya constrains ekleme
alter table OrnekTablo
Add Constraint OrnekConstraint Default 'Boþ' for Kolon2

--Alter ile tablodaki constraint silme
ALter Table OrnekTablo
Drop Constraint OrnekConstraint 

--SP_RENAME ile tablo adý güncelleme
SP_RENAME 'OrnekTablo','OrnekTablooo'

--SP_RENAME ile kolon güncelleme
SP_RENAME 'OrnekTablo2.[Kolon 2]','Kolon1453','Column'