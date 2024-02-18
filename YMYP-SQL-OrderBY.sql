

--Toplam kaç adet sipariþ sayýsý 
select COUNT(*) as Sipariþler from Orders

--count içine verdiðimiz sütunda null olmayan sayýsýný verir.
select COUNT(ShipRegion) from Orders

--sütundaki ayný deðerleri saymamak için distinct kullanýlýr.
select COUNT(Distinct ShipCountry ) from Orders

--SQL TOPLAM FONKSÝYONLARI(AGGREGATE FUNCTIONS)
--AVG,MIN,MAX,SUM

SELECT ProductID,Sum(Quantity) as Toplam FROM [Order Details] 
group by ProductID 
order by ProductID asc

--ProductID 2 olan ürünlerin toplam satýþ adedi nedir?
select SUM(Quantity) from [Order Details] where ProductID = 2 
group by ProductID

--çalýþanlarýn yapmýþ olduðu sipariþ adetlerini yazýnýr
select EmployeeID,COUNT(OrderID) Siparis_Sayisi  from Orders
group by EmployeeID
order by Siparis_Sayisi desc

--1 nolu üreticiye ait olan stoktaki toplam ürün adedi nedir
select  SupplierID, SUM(UnitsInStock) from Products
where SupplierID = 1
group by SupplierID

--hangi kargo þirketine toplam ne kadar ödeme yapýlmýþtýr
select ShipVia,SUM(Freight) from Orders
group by ShipVia 
order by ShipVia 