

--With Rollup
--Group By ile gruplanmýþ veri kümesinde ara toplam alýnmasýný saðlar.
-- Sum miktar kýsmýný grup byla grupladýktan sonra ayný kolonu rollup ile ara
-- toplama dahil eder SatisID si ayný olan verilerin miktarýný ara toplam vererek verielri sunar

Select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
Group By SatisID,UrunID with rollup

--Having þartý ile beraber with rollup
Select SatisID, UrunID,SUM(Miktar) from [Satis Detaylari]
group by SatisID,UrunID with rollup having SUM(Miktar) > 100
