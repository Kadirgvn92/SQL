

--Subquery (Ýç Ýçe Sorgular)

Select s.SatisID,s.SatisTarihi from Personeller p inner join Satislar s on p.PersonelID = s.PersonelID where Adi = 'Nancy'

--aþaðýdaki þekilde personel ýd istediðimiz yerde personel select yapýp ordan veriyi alýyourz bundan dolayý iç içe sorgu oluyor
select SatisID, SatisTarihi from Satislar where PersonelID = (select PersonelID from Personeller where Adi = 'Nancy')

--Dikkat etmemiz gereken durum subqueryler tek veri üzerinden çalýþýr 1den fazla verilerde hata verecektir.
select * from Personeller where Adi = ( select Adi from Personeller where UnvanEki = 'Dr.')