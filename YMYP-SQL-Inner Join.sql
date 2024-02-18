

--SQL JOIN
--JOIN ile sql �zerinde birden fazla tabloyu birbirine ba�layabiliriz.
--Bunun i�in Inner join ve on ifadeleri kullan�l�r.
--Inner join <ba�lanacak tablo ad�> On <iki tablonun hangi alanlar �zerinde ba�lan�r>
select * from Products 
Inner join Categories on Categories.CategoryID = Products.CategoryID
where ProductID = 2
order by ProductID asc

select ProductName,c.CategoryName from Products p  Inner join Categories c
on p.CategoryID = c.CategoryID

--TOFU isimli �r�n i�in al�nan t�m sipari�leri listeleyiniz.

select * from Products p  inner join 
[Order Details] o  on p.ProductID = o.ProductID
where ProductName = 'Tofu'

--T�m �r�nleri �r�n Ad�, Kategori Ad� ve Tedarik�i Ad� �eklinde listeleyiniz.
select p.ProductName,c.CategoryName,s.CompanyName from Products p inner join Categories c 
on p.CategoryID = c.CategoryID inner join Suppliers s on p.SupplierID = s.SupplierID


--Federal Shipping ile tan��m�� olup, Nancy �zerine kay�tl� olan sipari�leri
--�al��an Ad�, �irket Ad�, Sipari� No,Sipari� Tairhi kargo �creti �eklinde g�r�nt�leyiniz
select e.FirstName, s.CompanyName , o.OrderID , o.OrderDate,o.Freight KargoUcreti from Orders o  
inner join Shippers s on o.ShipVia = s.ShipperID
 inner join Employees e on e.EmployeeID = o.EmployeeID
where s.CompanyName = 'Federal Shipping' and e.FirstName = 'Nancy'


--Herbir �r�nden toplam ne kadarl�k sat�� yap�lm��t�r(�r�n ad�,kategori Ad�,Toplam sat��
select p.ProductName,c.CategoryName,SUM(o.Quantity * o.UnitPrice*(1 - o.Discount)) ToplamSatis from Products p 
inner join [Order Details] o  on p.ProductID = o.ProductID 
inner join Categories c on c.CategoryID = p.CategoryID
group by p.ProductName,c.CategoryName
order by ProductName


--�r�nlere g�re sat���m nas�l (�r�n ad�,toplam sat�lan adet,toplam gelir)
select p.ProductName,SUM(o.Quantity) ToplamSatilanAdet,
ROUND(SUM(o.UnitPrice *o.Quantity * (1-o.Discount)),2) ToplamGelir
from Products p 
inner join [Order Details] o  on p.ProductID = o.ProductID 
inner join Categories c on c.CategoryID = p.CategoryID
group by p.ProductName,c.CategoryName


--�r�n kategorilerine g�re adet bazl� sat��lar�m nas�l (kategori ad�,adet)
select c.CategoryName,Sum(o.Quantity) from Categories c 
inner join Products p on c.CategoryID = p.CategoryID 
inner join [Order Details] o on p.ProductID = o.ProductID
group by CategoryName


--�r�n bazl� 
select e.FirstName + ' ' + e.LastName as Calisan,ProductName,SUM(od.Quantity) Adet,
Round(Sum(od.UnitPrice*od.Quantity*(1-od.Discount)),2) Gelir from [Order Details] od
inner join Orders o on od.OrderID =o.OrderID
inner join Employees e on e.EmployeeID = o.EmployeeID
inner join Products p on p.ProductID = od.ProductID
group by e.FirstName,e.LastName,ProductName
order by 1

--fatura toplam� 1000$ dan b�y�k olan sipari�ler hangileridir

select OrderID , Round(Sum(UnitPrice*Quantity*(1-Discount)),2) Fatura
from [Order Details] 
group by OrderID
having Round(Sum(UnitPrice*Quantity*(1-Discount)),2) > 1000