

--Escape Karakterleri
-- Like sorgularýnda kullandýðýmýz % _ [] gibi özel ifadeler eðer ki verilerimiz içerisinde geçiyorsa
--sorgulama esansýnda hata ile karþýlaþabiliriz. Böyle durumlarda bu ifadelerin özel ifade olmasýðýný escape karakterleri ile belirleyebiliriz..

--[] Operatörleri ile
--Escape komutu ile


--baþýnda _ olan personel varsa bu komutla gelecektir [] içinde olduðundan dolayý
select * from Personeller where Adi like '[_]%'


-- bu methodda escape kullandýk bu þekilde ü 'yü biz escape karakteri yaptýk ve sonrasýndkai karakter özel olmadýðýný söyler
select * from Personeller where Adi like 'ü_%' escape 'ü'

