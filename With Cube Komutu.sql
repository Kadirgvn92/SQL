

--With Cube
--Group By ile gruplanm�� veri k�mseinde teker teker toplam al�nmas�n� sa�lar

Select SatisID,UrunID,SUM(BirimFiyati*Miktar) from [Satis Detaylari]
group by UrunID, SatisID with rollup
--yukar�daski �rnek rollup ile yap�ld� ancak grup by da 1.kolon urun �d oldu�undan urun �d ye g�re s�ralad�
--a�a��dada satis�d olarak s�ralad� ancak with cube oldu�udan teker teker mant���yla gitti�inden ayn� sonucu vermi� oldu
Select SatisID,UrunID, SUM(BirimFiyati*Miktar) from [Satis Detaylari]
Group By SatisID,UrunID with cube


Select SatisID,UrunID, SUM(BirimFiyati*Miktar) from [Satis Detaylari]
Group By SatisID,UrunID with rollup

Select SatisID,UrunID, SUM(BirimFiyati*Miktar) from [Satis Detaylari]
Group By SatisID,UrunID with cube

