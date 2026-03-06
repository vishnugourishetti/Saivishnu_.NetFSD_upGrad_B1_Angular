Use StoreData;

Create table Categories (
CategoryId int primary key identity(1,1),
Category varchar(20));


Create table Brands(
CategoryId int,
BrandId int primary key identity(100,1),
BrandName varchar(20)
Foreign key (CategoryId) references Categories(CategoryId)
);

Create table Products(
CategoryId int,
BrandId int,
ProductId int primary key identity(1000,1),
ProductName varchar(20),
ModelYear Date,
Price Decimal(10,2)
Foreign key (CategoryId) references Categories(CategoryId),
Foreign key (BrandId) references Brands(BrandId));



Insert into Categories values
('Mobiles'),
('Telivision'),
('Washing Machines'),
('Clothing'),
('Sports'),
('Bikes');

select* from Categories;

Insert into Brands values
(1,'Samsung'),
(1,'Apple'),
(5,'Nike'),
(2,'LG'),
(5,'Adidas'),
(3,'Whirpool'),
(3,'IFB'),
(1,'Iqoo'),
(2,'TCL'),
(6,'Honda'),
(2,'Samsung'),
(6,'Bajaj'),
(4,'Redtape'),
(4,'Levis');


Select*from Brands;

Insert into Products values
(1,100,'Samsung S24','2024',121000.00),
(1,101,'Iphone 17 Pro','2025',145000.00),
(2,110,'Samsung TV 32 inches','2026',35000.10),
(2,103,'LG TV','2025',69000.00),
(1,101,'Iphone 14 Pro','2023',90100.00),
(5,104,'Adidas Football','2020',5000.00),
(5,102,'Nike Sports shoe','2021',10000.00),
(3,105,'Whirpool Washing ','2024',25000.00),
(3,106,'IFB Washing ','2026',12000.50),
(1,107,'Iqoo Neo 10','2025',32000.00),
(2,108,'TCL TV','2024',50000.00),
(6,109,'Honda Bike','2026',139000.00),
(6,111,'Bajaj Bike','2023',1450000.00),
(5,112,'Redtape Shirt','2026',999.00),
(5,113,'Levis T-Shirt','2026',199.00);


Select*from Products;


SELECT 
    p.ProductName,
    b.BrandName,
    c.Category,
    p.ModelYear,
    p.Price
FROM Products p
INNER JOIN Categories c 
    ON p.CategoryId = c.CategoryId
INNER JOIN Brands b 
    ON p.BrandId = b.BrandId
WHERE p.Price > 500
ORDER BY p.Price ASC;