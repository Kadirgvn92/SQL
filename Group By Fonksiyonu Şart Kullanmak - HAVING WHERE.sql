
--Group By where �art� Kullanma
--HAVING komutu ile �art Kullanma
select * from Urunler

--KategoriID'si 5 ten b�y�k olanlar� kategori �d'sine g�re s�ralamay� yapal�m
--having aggregate ifadelerinde �art kullanmak i�in yaz�l�r. grup bydan sonra yaz�l�r.
select KategoriID , COUNT(*) from Urunler where KategoriID > 5 group by KategoriID having COUNT(*) < 6

--personel�d si 4 ten k���k olanlar personelid sini g�re s�ralamay� yapal�m
select PersonelID , COUNT(*) from Satislar where PersonelID < 4 group by PersonelID

--