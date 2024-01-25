

-- AGGREGATE FONKSÝYONLARI

-- AVG - ORTALAMA ALIR
SELECT AVG(PersonelID) FROM Personeller

-- MAX : EN BÜYÜK DEÐERÝ ALIR
SELECT MAX(PersonelID) FROM Personeller


-- MIN : EN KÜÇÜK DEÐERÝ ALIR
SELECT MIN(PersonelID) FROM Personeller

-- COUNT : TOPLAM SAYISINI VERÝR
SELECT COUNT(*) FROM Personeller

-- SUM : TOPLAMI VERÝR
select SUM (NakliyeUcreti) from Satislar