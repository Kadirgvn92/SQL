

--DDL (Data Definition Language)
--TSQL'de veritaban� nesneleri yaratmam�z� sa�layan ve bu nesneler �zerinde de�i�iklikler yapmam�z� ve
--silmemizi sa�layan bu ba�l�k alt�nd simgelenmektedir.

--Create, Alter, Drop

--==Create==
--Veritaban� nesnesini yaratmam�z� sa�lar(database,table,view,trigger)

--Prototipi
--Create [Nesne] [Nesnenin Ad�] 

--Create ile Database Olu�turma
Create Database OrnekDB
--Bu �ekilde varsayl�lan ayarlarla veritaban� olu�tur

Create Database OrnekDB
On
(
	Name='GG',
	Filename='C:\GG.mdf',
	size = 5,
	Filegrowth = 3
)

--Log dosyal� databse olu�turma
Create Database OrnekDB
On
(
	Name='GG',
	Filename='C:\GG.mdf',
	size = 5,
	Filegrowth = 3
)
log
On
(
	Name='GG',
	Filename='C:\GG.mdf',
	size = 5,
	Filegrowth = 3
)

--Create �le Table olu�turma

Use Northwind
Create Table OrnekTablo
(
	Kolon1 int,
	Kolon2 nvarchar(max),
	Kolon3 money
)

--E�er kolon adlar�nda bo�luk varsa k��eli parantez ile belirtilmelidir.
Create Table OrnekTablo2
(
	[Kolon 1] int,
	[Kolon 2] nvarchar(max),
	[Kolon 3] money			
)

--Kolona primary key ile �dentity �zelli�i kazand�rma
Create Table OrnekTablo3
(
	Id int Primary Key Identity(1,1),
	[Kolon 2] nvarchar(max),
	[Kolon 3] money
)
