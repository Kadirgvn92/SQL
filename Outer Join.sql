
--Outer Join 


--Inner joinde eþleþen kayýtlar getiriliyordu. Outer Join'de ise eþleþmeyen kayýtlarda getirilir

--Left Join
--Join ifadesinin solundaki tablodan tüm kayýtlar getirilir. Saðýndaki tablodan eþleþenleri getirir eþleþmeyenleri null getirir

select * from Oyuncular o left outer join Filmler f on o.FilmID = f.FilmID
select * from Filmler f left outer join Oyuncular o on f.FilmID = o.FilmID

--veya

select * from Oyuncular o left join Filmler f on o.FilmID = f.FilmID
select * from Filmler f left join Oyuncular o on f.FilmID = o.FilmID

--Right Join
--Join saðýndaki tablounn hepsini getirecek solundaki tablonun eþleþenleri getirecek yoksa null getirecek

select * from Oyuncular o right join Filmler f on o.FilmID = f.FilmID

--Full Join 
--Tabloda ne varsa getirir

select * from Oyuncular o Full join Filmler f on o.FilmID = f.FilmID

--Cross Join

select COUNT(*) from Personeller
select COUNT(*) from Bolge

select p.Adi,b.BolgeID from Personeller p cross join Bolge b