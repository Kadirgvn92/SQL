

-- STR�NG FONKS�YONLAR

--LEFT : Soldan belirtilen say�da karakteri getirir
select LEFT(Adi,2) from Personeller

--RIGHT : Sa�dan belirtilen say�da karakteri getirir
select Right(Adi,2) from Personeller

-- UPPER : B�y�k harfe b�y�k harfe �evirir
select UPPER(Adi) from Personeller

-- LOWER : K���k harflere �evirir
select LOWER(Adi) from Personeller

--SUBSTR�NG : Belirtilen indexten itibaren belirtilen say�da karakter getirir
select SUBSTRING(Soyadi,3,2) from Personeller

-- LTRIM : soldan bo�luklar� keser
select LTRIM( '              G�ven')

--RTRIM : Sagdan bo�luklar� keser
select RTRIM('g�ven                ')

-- REVERSE : tersine �evirir
SELECT REVERSE(Adi) from Personeller

-- Replace : Belitrilen ifadeyi belirtilen ifade ile de�i�tirir
select REPLACE ('My name is Kadir','Kadir','Osman')

--CHARINDEX : Belirtilen karakterin veri i�ersindeki say� numaras�n� verir
select MusteriAdi, CHARINDEX(' ', MusteriAdi) from Musteriler
select Adi, CHARINDEX('r',Adi) from Personeller

--CHARINDEX �RNEK
--M��teriler tablosundaki m�steriad� kolonundan sadece adlar�n� �ekelim kolon ismi isimler verelim
select MusteriAdi from Musteriler
select Substring(MusteriAdi ,0, Charindex(' ' , MusteriAdi)) �simler  from Musteriler


--M�steriler tablosundaki m�steriadi kolonundan sadece soyadlar�n� �ekelim
select SUBSTRING(MusteriAdi,Charindex(' ',MusteriAdi), LEN(MusteriAdi) - (charindex(' ',MusteriAdi) - 1 ))  from Musteriler