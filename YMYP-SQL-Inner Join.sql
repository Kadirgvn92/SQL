

--SQL JOIN
--JOIN ile sql üzerinde birden fazla tabloyu birbirine baðlayabiliriz.
--Bunun için Inner join ve on ifadeleri kullanýlýr.
--Inner join <baðlanacak tablo adý> On <iki tablonun hangi alanlar üzerinde baðlanýr>
select * from Products 
Inner join Categories on Categories.CategoryID = Products.CategoryID
where ProductID = 2
order by ProductID asc

select ProductName,c.CategoryName from Products p  Inner join Categories c
on p.CategoryID = c.CategoryID

--TOFU isimli ürün için alýnan tüm sipariþleri listeleyiniz.

select * from Products p  inner join 
[Order Details] o  on p.ProductID = o.ProductID
where ProductName = 'Tofu'

--Tüm ürünleri Ürün Adý, Kategori Adý ve Tedarikçi Adý þeklinde listeleyiniz.
select p.ProductName,c.CategoryName,s.CompanyName from Products p inner join Categories c 
on p.CategoryID = c.CategoryID inner join Suppliers s on p.SupplierID = s.SupplierID


--Federal Shipping ile tanýþmýþ olup, Nancy üzerine kayýtlý olan sipariþleri
--Çalýþan Adý, Þirket Adý, Sipariþ No,Sipariþ Tairhi kargo ücreti þeklinde görüntüleyiniz
select e.FirstName, s.CompanyName , o.OrderID , o.OrderDate,o.Freight KargoUcreti from Orders o  
inner join Shippers s on o.ShipVia = s.ShipperID
 inner join Employees e on e.EmployeeID = o.EmployeeID
where s.CompanyName = 'Federal Shipping' and e.FirstName = 'Nancy'


--Herbir üründen toplam ne kadarlýk satýþ yapýlmýþtýr(ürün adý,kategori Adý,Toplam satýþ
select p.ProductName,c.CategoryName,SUM(o.Quantity * o.UnitPrice*(1 - o.Discount)) ToplamSatis from Products p 
inner join [Order Details] o  on p.ProductID = o.ProductID 
inner join Categories c on c.CategoryID = p.CategoryID
group by p.ProductName,c.CategoryName
order by ProductName


--ürünlere göre satýþým nasýl (ürün adý,toplam satýlan adet,toplam gelir)
select p.ProductName,SUM(o.Quantity) ToplamSatilanAdet,
ROUND(SUM(o.UnitPrice *o.Quantity * (1-o.Discount)),2) ToplamGelir
from Products p 
inner join [Order Details] o  on p.ProductID = o.ProductID 
inner join Categories c on c.CategoryID = p.CategoryID
group by p.ProductName,c.CategoryName


--ürün kategorilerine göre adet bazlý satýþlarým nasýl (kategori adý,adet)
select c.CategoryName,Sum(o.Quantity) from Categories c 
inner join Products p on c.CategoryID = p.CategoryID 
inner join [Order Details] o on p.ProductID = o.ProductID
group by CategoryName


--ürün bazlý 
select e.FirstName + ' ' + e.LastName as Calisan,ProductName,SUM(od.Quantity) Adet,
Round(Sum(od.UnitPrice*od.Quantity*(1-od.Discount)),2) Gelir from [Order Details] od
inner join Orders o on od.OrderID =o.OrderID
inner join Employees e on e.EmployeeID = o.EmployeeID
inner join Products p on p.ProductID = od.ProductID
group by e.FirstName,e.LastName,ProductName
order by 1

--fatura toplamý 1000$ dan büyük olan sipariþler hangileridir

select OrderID , Round(Sum(UnitPrice*Quantity*(1-Discount)),2) Fatura
from [Order Details] 
group by OrderID
having Round(Sum(UnitPrice*Quantity*(1-Discount)),2) > 1000