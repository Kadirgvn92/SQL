

--@@Identity Komutu
--Yap�lan son i�leminin identity verisini getirir

Insert Kategoriler (KategoriAdi, Tanimi ) Values ('X','X Kategorisi')

select @@Identity

--@@Rowcount Komutu
--Yap�lan i�lem neticesinde etkilenen eleman say�s�n� bize d�ner

select * from Personeller
select @@ROWCOUNT