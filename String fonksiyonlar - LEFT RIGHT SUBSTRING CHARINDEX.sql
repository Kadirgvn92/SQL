

-- STRÝNG FONKSÝYONLAR

--LEFT : Soldan belirtilen sayýda karakteri getirir
select LEFT(Adi,2) from Personeller

--RIGHT : Saðdan belirtilen sayýda karakteri getirir
select Right(Adi,2) from Personeller

-- UPPER : Büyük harfe büyük harfe çevirir
select UPPER(Adi) from Personeller

-- LOWER : Küçük harflere çevirir
select LOWER(Adi) from Personeller

--SUBSTRÝNG : Belirtilen indexten itibaren belirtilen sayýda karakter getirir
select SUBSTRING(Soyadi,3,2) from Personeller

-- LTRIM : soldan boþluklarý keser
select LTRIM( '              Güven')

--RTRIM : Sagdan boþluklarý keser
select RTRIM('güven                ')

-- REVERSE : tersine çevirir
SELECT REVERSE(Adi) from Personeller

-- Replace : Belitrilen ifadeyi belirtilen ifade ile deðiþtirir
select REPLACE ('My name is Kadir','Kadir','Osman')

--CHARINDEX : Belirtilen karakterin veri içersindeki sayý numarasýný verir
select MusteriAdi, CHARINDEX(' ', MusteriAdi) from Musteriler
select Adi, CHARINDEX('r',Adi) from Personeller

--CHARINDEX öRNEK
--Müþteriler tablosundaki müsteriadý kolonundan sadece adlarýný çekelim kolon ismi isimler verelim
select MusteriAdi from Musteriler
select Substring(MusteriAdi ,0, Charindex(' ' , MusteriAdi)) Ýsimler  from Musteriler


--Müsteriler tablosundaki müsteriadi kolonundan sadece soyadlarýný çekelim
select SUBSTRING(MusteriAdi,Charindex(' ',MusteriAdi), LEN(MusteriAdi) - (charindex(' ',MusteriAdi) - 1 ))  from Musteriler