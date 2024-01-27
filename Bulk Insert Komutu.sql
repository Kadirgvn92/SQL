

--Bulk Insert Komutu
--Dosya komutundan daha önce oluþturduðumuz "veri tipleri eþleþen" kolonlarý oluþturup veriler iiçine ataya yarar

Bulk Insert Kisiler
From 'C:\Users\MSI\Desktop\Yazýlým\SQL\Komutlar\DenemeSQL.txt'
with
(
	Fieldterminator = '\t', --alan bitiricisi biz tab verdiðimizden tab => \t oluyor
	Rowterminator = '\n'	--satýr bitiricisi enter olduðundan => \n yapýyoruz
)