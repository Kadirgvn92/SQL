

--Escape Karakterleri
-- Like sorgular�nda kulland���m�z % _ [] gibi �zel ifadeler e�er ki verilerimiz i�erisinde ge�iyorsa
--sorgulama esans�nda hata ile kar��la�abiliriz. B�yle durumlarda bu ifadelerin �zel ifade olmas���n� escape karakterleri ile belirleyebiliriz..

--[] Operat�rleri ile
--Escape komutu ile


--ba��nda _ olan personel varsa bu komutla gelecektir [] i�inde oldu�undan dolay�
select * from Personeller where Adi like '[_]%'


-- bu methodda escape kulland�k bu �ekilde � 'y� biz escape karakteri yapt�k ve sonras�ndkai karakter �zel olmad���n� s�yler
select * from Personeller where Adi like '�_%' escape '�'

