

--Toplam ka� adet sipari� say�s� 
select COUNT(*) as Sipari�ler from Orders

--count i�ine verdi�imiz s�tunda null olmayan say�s�n� verir.
select COUNT(ShipRegion) from Orders

--s�tundaki ayn� de�erleri saymamak i�in distinct kullan�l�r.
select COUNT(Distinct ShipCountry ) from Orders

--SQL TOPLAM FONKS�YONLARI(AGGREGATE FUNCTIONS)
--AVG,MIN,MAX,SUM

SELECT ProductID,Sum(Quantity) as Toplam FROM [Order Details] 
group by ProductID 
order by ProductID asc

--ProductID 2 olan �r�nlerin toplam sat�� adedi nedir?
select SUM(Quantity) from [Order Details] where ProductID = 2 
group by ProductID

--�al��anlar�n yapm�� oldu�u sipari� adetlerini yaz�n�r
select EmployeeID,COUNT(OrderID) Siparis_Sayisi  from Orders
group by EmployeeID
order by Siparis_Sayisi desc

--1 nolu �reticiye ait olan stoktaki toplam �r�n adedi nedir
select  SupplierID, SUM(UnitsInStock) from Products
where SupplierID = 1
group by SupplierID

--hangi kargo �irketine toplam ne kadar �deme yap�lm��t�r
select ShipVia,SUM(Freight) from Orders
group by ShipVia 
order by ShipVia 