

--DDL (Data Definition Language)
--TSQL'de veritabaný nesneleri yaratmamýzý saðlayan ve bu nesneler üzerinde deðiþiklikler yapmamýzý ve
--silmemizi saðlayan bu baþlýk altýnd simgelenmektedir.

--Create, Alter, Drop

--==Create==
--Veritabaný nesnesini yaratmamýzý saðlar(database,table,view,trigger)

--Prototipi
--Create [Nesne] [Nesnenin Adý] 

--Create ile Database Oluþturma
Create Database OrnekDB
--Bu þekilde varsaylýlan ayarlarla veritabaný oluþtur

Create Database OrnekDB
On
(
	Name='GG',
	Filename='C:\GG.mdf',
	size = 5,
	Filegrowth = 3
)

--Log dosyalý databse oluþturma
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

--Create Ýle Table oluþturma

Use Northwind
Create Table OrnekTablo
(
	Kolon1 int,
	Kolon2 nvarchar(max),
	Kolon3 money
)

--Eðer kolon adlarýnda boþluk varsa köþeli parantez ile belirtilmelidir.
Create Table OrnekTablo2
(
	[Kolon 1] int,
	[Kolon 2] nvarchar(max),
	[Kolon 3] money			
)

--Kolona primary key ile ýdentity özelliði kazandýrma
Create Table OrnekTablo3
(
	Id int Primary Key Identity(1,1),
	[Kolon 2] nvarchar(max),
	[Kolon 3] money
)
