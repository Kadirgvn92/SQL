

--Constraintler (K�s�tlay�c�lar)
--Constraintlet sayesinde tablolar �zerinde isted�imiz �artlar ve durumlara g�re k�s�tlamalar yapabiliyoruz.

--1. Default Constraint
--2. Check Constraint
--3. Primary Key Constraint
--4. Unique Constraint
--5. Foreign Key Constraint

-- == DEFAULT CONSTRAINT ==
--Default Constraint sayesinde bir kolona de�er girilmedi�i taktirde varsay�lan olarak ne girilmesi gerekti�ini belirtebliyoruz

--Genel Yap�s�;
--Add CONSTRAINT [Constraint Ad�] Default 'Varsay�lan De�er' For [Kolon Ad�]

Create Table OrnekTablo
(
	Id int primary key identity(1,1),
	Kolon1 nvarchar(max),
	Kolon2 int 
)

Alter table OrnekTablo
Add Constraint Kolon1Constraint Default 'Bo�' For Kolon1

Alter Table OrnekTablo
Add Constraint Kolon2Constraint Default -1 For Kolon2

Insert OrnekTablo (Kolon2) values (0)
Insert OrnekTablo (Kolon1) values ('Ornek bir de�er')


