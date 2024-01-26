

--UPDATE KOMUTU
--Update [Tablo Adý] Set [Kolon Adý] = Deðer
Update ExampleTable2 Set Adi = 'Osman'

--Update sorgusuna where þartý yazmak
Update ExampleTable2 Set Adi = 'Osman' where Adi= 'Mehmet' 

--Update sorgusunda Join yapýlarýný kullanarak birden fazla tabloda güncelleme yapmak
Update Urunler set KategoriAdi = k.KategoriAdi from Urunler u Inner join Kategoriler k on u.KategoriID = k.KategoriID

--Update sorgusunda subquery ile güncelleme yapmak
Update Top(2) Urunler Set KategoriAdi = (Select Adi from Personeller where PersonelID = 4) where KategoriID = 1

--Update sorgusunda top keywordu ile güncelleme yapmak ilk 2 tanesini günceller
Update Top(2) Urunler Set KategoriAdi = 'x' where KategoriID = 2