

--Subquery (�� ��e Sorgular)

Select s.SatisID,s.SatisTarihi from Personeller p inner join Satislar s on p.PersonelID = s.PersonelID where Adi = 'Nancy'

--a�a��daki �ekilde personel �d istedi�imiz yerde personel select yap�p ordan veriyi al�yourz bundan dolay� i� i�e sorgu oluyor
select SatisID, SatisTarihi from Satislar where PersonelID = (select PersonelID from Personeller where Adi = 'Nancy')

--Dikkat etmemiz gereken durum subqueryler tek veri �zerinden �al���r 1den fazla verilerde hata verecektir.
select * from Personeller where Adi = ( select Adi from Personeller where UnvanEki = 'Dr.')