

--Bulk Insert Komutu
--Dosya komutundan daha �nce olu�turdu�umuz "veri tipleri e�le�en" kolonlar� olu�turup veriler ii�ine ataya yarar

Bulk Insert Kisiler
From 'C:\Users\MSI\Desktop\Yaz�l�m\SQL\Komutlar\DenemeSQL.txt'
with
(
	Fieldterminator = '\t', --alan bitiricisi biz tab verdi�imizden tab => \t oluyor
	Rowterminator = '\n'	--sat�r bitiricisi enter oldu�undan => \n yap�yoruz
)