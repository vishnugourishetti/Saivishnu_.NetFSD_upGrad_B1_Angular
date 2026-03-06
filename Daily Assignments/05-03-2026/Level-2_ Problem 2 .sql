CREATE TABLE products1
(
product_id INT PRIMARY KEY IDENTITY(1,1),
product_name VARCHAR(100)
);

INSERT INTO products1(product_name) VALUES
('Laptop'),
('Mouse'),
('Running Shoes'),
('Smartphone'),
('Earbuds'),
('Smart Watch');

CREATE TABLE stores1
(
StoreId INT PRIMARY KEY IDENTITY(1,1),
StoreName VARCHAR(50)
);

INSERT INTO stores1(StoreName) VALUES
('Central Store'),
('City Mall Store'),
('Downtown Store');


CREATE TABLE stocks
(
stock_id INT PRIMARY KEY IDENTITY(1,1),
store_id INT,
product_id INT,
quantity INT,
FOREIGN KEY (store_id) REFERENCES stores1(StoreId),
FOREIGN KEY (product_id) REFERENCES products1(product_id)
);
INSERT INTO stocks(store_id,product_id,quantity) VALUES
(1,1,20),
(1,2,100),
(2,3,50),
(1,4,15),
(1,5,40),
(3,6,30);



CREATE TABLE order_items2
(
item_id INT PRIMARY KEY,
product_name VARCHAR(100),
quantity INT
);

INSERT INTO order_items2 VALUES
(1,'Laptop',1),
(2,'Mouse',2),
(3,'Running Shoes',1),
(4,'Smartphone',1),
(5,'Earbuds',1),
(6,'Smart Watch',1);

SELECT 
p.product_name,
s.StoreName,
st.quantity AS available_stock,
SUM(ISNULL(oi.quantity,0)) AS total_quantity_sold
FROM stocks st
INNER JOIN products1 p
ON st.product_id = p.product_id
INNER JOIN stores1 s
ON st.store_id = s.StoreId
LEFT JOIN order_items2 oi
ON p.product_name = oi.product_name
GROUP BY p.product_name, s.StoreName, st.quantity
ORDER BY p.product_name;