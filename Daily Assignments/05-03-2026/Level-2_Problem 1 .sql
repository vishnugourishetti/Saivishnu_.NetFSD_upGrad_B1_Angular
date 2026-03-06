Use StoreData;

create table Stores(
StoreId int primary key identity(1,1),
StoreName varchar(50));

CREATE TABLE Orders1
(
OrderId INT PRIMARY KEY,
CustomerName VARCHAR(50),
OrderDate DATE,
StoreId INT,
OrderStatus int,
FOREIGN KEY (StoreId) REFERENCES stores(StoreId)
);

CREATE TABLE order_items1
(
    item_id INT PRIMARY KEY,
    order_id INT,
    product_name VARCHAR(100),
    quantity INT,
    list_price DECIMAL(10,2),
    discount DECIMAL(4,2),
    FOREIGN KEY (order_id) REFERENCES Orders1(OrderId)
);

INSERT INTO Stores (StoreName) VALUES
('Central Store'),
('City Mall Store'),
('Downtown Store');


INSERT INTO Orders1 VALUES
(101,'Rahul','2024-01-10',1,4),
(102,'Sneha','2024-01-12',2,4),
(103,'Arjun','2024-01-15',1,3),
(104,'Priya','2024-01-18',3,4);


INSERT INTO order_items1 VALUES
(1,101,'Laptop',1,65000.00,99.00),
(2,101,'Mouse',2,800.00,88.00),
(3,102,'Running Shoes',1,5000.00,50.00),
(4,103,'Smartphone',1,30000.00,40.00),
(5,103,'Earbuds',1,2500.00,20.00),
(6,104,'Smart Watch',1,7000.00,58.00);

select * from Stores;
select * from Orders1;
select * from order_items1;



SELECT 
    s.StoreName,
    SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS TotalSales
FROM Stores s
JOIN Orders1 o 
    ON s.StoreId = o.StoreId
JOIN order_items1 oi 
    ON o.OrderId = oi.order_id
WHERE o.OrderStatus = 4
GROUP BY s.StoreName
ORDER BY TotalSales DESC;