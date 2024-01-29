

--Constraintler (Kýsýtlayýcýlar)
--Constraintlet sayesinde tablolar üzerinde istedðimiz þartlar ve durumlara göre kýsýtlamalar yapabiliyoruz.

--1. Default Constraint
--2. Check Constraint
--3. Primary Key Constraint
--4. Unique Constraint
--5. Foreign Key Constraint

-- == DEFAULT CONSTRAINT ==
--Default Constraint sayesinde bir kolona deðer girilmediði taktirde varsayýlan olarak ne girilmesi gerektiðini belirtebliyoruz

--Genel Yapýsý;
--Add CONSTRAINT [Constraint Adý] Default 'Varsayýlan Deðer' For [Kolon Adý]

Create Table OrnekTablo
(
	Id int primary key identity(1,1),
	Kolon1 nvarchar(max),
	Kolon2 int 
)

Alter table OrnekTablo
Add Constraint Kolon1Constraint Default 'Boþ' For Kolon1

Alter Table OrnekTablo
Add Constraint Kolon2Constraint Default -1 For Kolon2

Insert OrnekTablo (Kolon2) values (0)
Insert OrnekTablo (Kolon1) values ('Ornek bir deðer')


