

--null Coalesce Fonksiyonlarý ile Nulll Kontrolü
--Case else ile null kontrolü yapma
select 
MusteriAdi,
case
	when Bolge Is null then 'Bölge Bilinmiyor'
	else Bolge
end Bolge
from Musteriler

--Coalesce ile Null check yapma
select MusteriAdi, Coalesce(Bolge,'Bolge Bilinmiyor') Bolge from Musteriler

--IsNull ile null check yapma
select MusteriAdi , ISNULL(Bolge,'Bolge Bilinmiyor') Bolge from Musteriler

--Nullif fonksiyonu ile null kontrolü
select 