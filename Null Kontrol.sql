

--null Coalesce Fonksiyonlar� ile Nulll Kontrol�
--Case else ile null kontrol� yapma
select 
MusteriAdi,
case
	when Bolge Is null then 'B�lge Bilinmiyor'
	else Bolge
end Bolge
from Musteriler

--Coalesce ile Null check yapma
select MusteriAdi, Coalesce(Bolge,'Bolge Bilinmiyor') Bolge from Musteriler

--IsNull ile null check yapma
select MusteriAdi , ISNULL(Bolge,'Bolge Bilinmiyor') Bolge from Musteriler

--Nullif fonksiyonu ile null kontrol�
select 