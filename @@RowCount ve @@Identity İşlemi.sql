

--@@Identity Komutu
--Yapýlan son iþleminin identity verisini getirir

Insert Kategoriler (KategoriAdi, Tanimi ) Values ('X','X Kategorisi')

select @@Identity

--@@Rowcount Komutu
--Yapýlan iþlem neticesinde etkilenen eleman sayýsýný bize döner

select * from Personeller
select @@ROWCOUNT