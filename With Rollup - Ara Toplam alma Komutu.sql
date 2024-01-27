

--With Rollup
--Group By ile gruplanm�� veri k�mesinde ara toplam al�nmas�n� sa�lar.
-- Sum miktar k�sm�n� grup byla gruplad�ktan sonra ayn� kolonu rollup ile ara
-- toplama dahil eder SatisID si ayn� olan verilerin miktar�n� ara toplam vererek verielri sunar

Select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
Group By SatisID,UrunID with rollup

--Having �art� ile beraber with rollup
Select SatisID, UrunID,SUM(Miktar) from [Satis Detaylari]
group by SatisID,UrunID with rollup having SUM(Miktar) > 100
