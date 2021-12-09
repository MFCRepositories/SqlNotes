SQL SORGU YAZMAK
VİEW (sanal tablo)
**Peki view sistemi çalışırken database de hangi kaynaklar tüketilir yani nerden beslenirler?(msdb,tempdb)
Bir veya birden fazla tablodan, ihtiyaç duyulan verileri almamızı sağlayan sanal tablolardır. Normal de bir tablo sadece kendi verilerini içerebilir ancak bir view birden çok tablonun birleşiminden oluşabilir ve bir tablo gibi davranabilir.
•	View ler veri saklamazlar yani bağlı olduğu tablo silinirse view hiçbir veri görüntüleyemez.
•	View ile parametre kullanılmaz
•	View için index tanımlamak mümkündür.
View Yazımı: Üürnler tablosundan bir view oluşturmak:
Create view Urunlerim As
Select P.ProductID,P.ProductName from Products P
GO 
SELECT * FROM Urunlerim
//TODO :GEÇİCİ VİEW OLUŞTURMA
ÖZET: Tablonun kendisidir ve select ile çalışır. select ile çalıştığına göre bunun içerisine sadece select ile ilgili işleri yazabilirim.(view birden fazla tablo içerebiliyorsa bu durum geçerlidir.)
PROCEDURE 
Server tarafında tutulur ve bir kez derlenmesi yeterlidir. Bir kez derledikten sonra tekrar derlenmeyen sorgu yapılarıdır.
•	Parametre içerebilirler
•	Sadece ilk çalıştıklarında derlenirler. İlk çalışmalarından sonraki  çalışmalarında derlenmediklerinden çok hızlıdırlar.
•	Pratik ve kullanışlı bir yapıdır.
•	Prosedür oluştuktan sonra, Exec ifadesi ile prosedür çağırılır.

Sorgu: Shippers tablosuna  ekleme işlemini gerçekleştiren prosedür sorgusunu yazalım:

create Proc ShipperAdd
as                                        
Insert Into Shippers (CompanyName,Phone) 
values ('HızlıKargo','2225554466');
Sorgu: Shippers tablosuna  ekleme işlemini dışarıdan parametre vererek gerçekleştiren prosedür sorgusunu yazalım:

create Proc ShipperAdd(@company nvarchar(30),@phone nvarchar(20))
as
Insert Into Shippers (CompanyName,Phone) 
values (@company,@phone);
SQL SERVER AGENT
//TODO
Zamanlanmış görevler oluşturmak için kullanılır.



     

