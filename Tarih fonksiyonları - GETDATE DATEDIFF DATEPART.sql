

--Tarih fonksiyonlar�

--GET DATE : bug�n�n tarihini verir
select GETDATE()

--DATEADD : Verilen tarihe verildi�i kadar g�n ay y�l ekler
select DATEADD(Day,10,GETDATE())
select DATEADD(MONTH,2,GETDATE())
select DATEADD(YEAR,5,GetDate())

--DATEDIFF : �ki tarih aras�nda g�n� , ay� ve y�l� hesaplar
select DATEDIFF(day,'01.01.2024', GETDATE())
select DATEDIFF(Month,'01.01.2021' , GETDATE())
select DATEDIFF(YEar,'01.02.1992', getdate())

--DATEPART : Verilen tarihin haftan�n ay�n yahut y�l�n ka��nc� g�n� oldu�unu hesaplar
select DATEPART(DW,GETDATE())
select DATEPART(DAY,GETDATE())
select DATEPART(month,getdate())