
--Group By where þartý Kullanma
--HAVING komutu ile þart Kullanma
select * from Urunler

--KategoriID'si 5 ten büyük olanlarý kategori ýd'sine göre sýralamayý yapalým
--having aggregate ifadelerinde þart kullanmak için yazýlýr. grup bydan sonra yazýlýr.
select KategoriID , COUNT(*) from Urunler where KategoriID > 5 group by KategoriID having COUNT(*) < 6

--personelýd si 4 ten küçük olanlar personelid sini göre sýralamayý yapalým
select PersonelID , COUNT(*) from Satislar where PersonelID < 4 group by PersonelID

--