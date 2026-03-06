Create Database StoreData
Use StoreData

Create Table Customer
(CustId int PRimary key identity(1,1),
FIRSTNAME Varchar(20),
LASTNAME Varchar(20),
EMAIL VARCHAR(50),
PHONE VARCHAR(20));


create table Orders
(
OrderId int primary key identity(100,1),
CustId int,
ORDERDATE date,
ORDERSTATUS varchar(10),
Foreign key(CustId) references Customer(CustId));



Insert into Customer values
('John','Smith','john@gmail.com','1234567890'),
 ('Sara','Lee','sara@gmail.com','1234567890'),
 ('David','Miller','david@gmail.com','1234567890'),
 ('Priya','Sharma','priya@gmail.com','1234567890'),
 ('Rahul','Verma','rahul@gmail.com','1234567890'),
 ('Ananya','Reddy','ananya@gmail.com','1234567890'),
 ('Vikram','Patel','vikram@gmail.com','1234567890');

INSERT INTO Orders (CustId, OrderDate, OrderStatus) VALUES
(1,'2026-03-01','Pending'),
(2,'2026-03-02','Completed'),
(3,'2026-03-03','Cancelled'),
(4,'2026-03-04','Pending'),
(5,'2026-03-05','Completed'),
(6,'2026-03-06','Processing'),
(7,'2026-03-07','Pending');

select*from Orders;
select*from Customer;


SELECT 
    c.FIRSTNAME,
    c.LASTNAME,
    o.OrderId,
    o.ORDERDATE,
    o.ORDERSTATUS
FROM Customer c
INNER JOIN Orders o
    ON c.CustId = o.CustId
WHERE o.ORDERSTATUS = 'Pending' 
   OR o.ORDERSTATUS = 'Completed'
ORDER BY o.ORDERDATE DESC;