

--Tarih fonksiyonlarý

--GET DATE : bugünün tarihini verir
select GETDATE()

--DATEADD : Verilen tarihe verildiði kadar gün ay yýl ekler
select DATEADD(Day,10,GETDATE())
select DATEADD(MONTH,2,GETDATE())
select DATEADD(YEAR,5,GetDate())

--DATEDIFF : Ýki tarih arasýnda günü , ayý ve yýlý hesaplar
select DATEDIFF(day,'01.01.2024', GETDATE())
select DATEDIFF(Month,'01.01.2021' , GETDATE())
select DATEDIFF(YEar,'01.02.1992', getdate())

--DATEPART : Verilen tarihin haftanýn ayýn yahut yýlýn kaçýncý günü olduðunu hesaplar
select DATEPART(DW,GETDATE())
select DATEPART(DAY,GETDATE())
select DATEPART(month,getdate())