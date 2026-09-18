USE GROOMKART;

CREATE TABLE Orders
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

INSERT INTO Orders VALUES
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

SELECT * FROM Orders;
SELECT * FROM Order_Details;

UPDATE Orders
SET OrderStatus = "Shipped"
WHERE OrderID = 402;

UPDATE Orders
SET OrderStatus = "Delivered"
WHERE OrderID = 403;
SELECT * FROM Orders
ORDER BY CustomerName;

SELECT * FROM Orders
WHERE CustomerName = "SIVA"
ORDER BY OrderID;

SELECT * FROM Orders
WHERE OrderStatus = "Pending";

SELECT * FROM Orders
WHERE OrderStatus = "Shipped";

SELECT * FROM Orders
WHERE OrderStatus = "Delivered";

SELECT CustomerName, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerName;

SELECT CustomerName, SUM(TotalAmt) AS TotalAmountSpent
FROM Orders
GROUP BY CustomerName;