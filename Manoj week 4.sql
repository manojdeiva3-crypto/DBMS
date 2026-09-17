USE GROOMKART;

CREATE TABLE `Order`
(
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ProductID INT,
    Qty INT,
    TotalAmt DECIMAL(10,2),
    OrderStatus VARCHAR(20),
    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID)
);

CREATE TABLE Order_Details
(
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Qty INT,
    UnitPrice DECIMAL(10,2),
    FOREIGN KEY (OrderID)
    REFERENCES `Order`(OrderID),
    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID)
);

INSERT INTO `Order` VALUES
(401, 'MANOJ', 101, 2, 1000, 'PENDING'),
(402, 'SIVA', 102, 1, 550, 'DELIVERED'),
(403, 'VISHWA', 106, 3, 1050, 'PENDING'),
(404, 'ROHITH', 110, 2, 1400, 'DELIVERED'),
(405, 'GOKUL', 111, 1, 500, 'PENDING');

INSERT INTO Order_Details VALUES
(501, 401, 101, 2, 500),
(502, 402, 102, 1, 550),
(503, 403, 106, 3, 350),
(504, 404, 110, 2, 700),
(505, 405, 111, 1, 500);

SELECT * FROM `Order`;

SELECT * FROM Order_Details;

UPDATE `Order`
SET OrderStatus = 'DELIVERED'
WHERE OrderID = 401;

SELECT * FROM `Order`
WHERE OrderID = 401;

UPDATE `Order`
SET Qty = 4,
    TotalAmt = 2000
WHERE OrderID = 401;

SELECT * FROM `Order`
WHERE OrderID = 401;

SELECT *
FROM `Order`
WHERE OrderStatus = 'PENDING';

SELECT *
FROM `Order`
WHERE OrderStatus = 'DELIVERED';
