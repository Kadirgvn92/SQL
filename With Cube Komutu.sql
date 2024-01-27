

--With Cube
--Group By ile gruplanmýþ veri kümseinde teker teker toplam alýnmasýný saðlar

Select SatisID,UrunID,SUM(BirimFiyati*Miktar) from [Satis Detaylari]
group by UrunID, SatisID with rollup
--yukarýdaski örnek rollup ile yapýldý ancak grup by da 1.kolon urun ýd olduðundan urun ýd ye göre sýraladý
--aþaðýdada satisýd olarak sýraladý ancak with cube olduðudan teker teker mantýðýyla gittiðinden ayný sonucu vermiþ oldu
Select SatisID,UrunID, SUM(BirimFiyati*Miktar) from [Satis Detaylari]
Group By SatisID,UrunID with cube


Select SatisID,UrunID, SUM(BirimFiyati*Miktar) from [Satis Detaylari]
Group By SatisID,UrunID with rollup

Select SatisID,UrunID, SUM(BirimFiyati*Miktar) from [Satis Detaylari]
Group By SatisID,UrunID with cube

