

--UPDATE KOMUTU
--Update [Tablo Ad�] Set [Kolon Ad�] = De�er
Update ExampleTable2 Set Adi = 'Osman'

--Update sorgusuna where �art� yazmak
Update ExampleTable2 Set Adi = 'Osman' where Adi= 'Mehmet' 

--Update sorgusunda Join yap�lar�n� kullanarak birden fazla tabloda g�ncelleme yapmak
Update Urunler set KategoriAdi = k.KategoriAdi from Urunler u Inner join Kategoriler k on u.KategoriID = k.KategoriID

--Update sorgusunda subquery ile g�ncelleme yapmak
Update Top(2) Urunler Set KategoriAdi = (Select Adi from Personeller where PersonelID = 4) where KategoriID = 1

--Update sorgusunda top keywordu ile g�ncelleme yapmak ilk 2 tanesini g�nceller
Update Top(2) Urunler Set KategoriAdi = 'x' where KategoriID = 2