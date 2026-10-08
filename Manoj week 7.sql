USE GROOMKART;

SELECT * FROM Category;
SELECT DISTINCT CategoryName FROM Category;
SELECT * FROM Category WHERE Category < 4;
SELECT * FROM Category ORDER BY CategoryName DESC;

SELECT * FROM Product;
SELECT DISTINCT Category FROM Product;
SELECT * FROM Product WHERE Price < 1000;
SELECT * FROM Product ORDER BY ProductName ASC;

SELECT * FROM Seller;
SELECT DISTINCT Address FROM Seller;
SELECT * FROM Seller WHERE SellerID < 215;
SELECT * FROM Seller ORDER BY SellerName DESC;

SELECT * FROM Inventory;
SELECT DISTINCT AvailabilityStatus FROM Inventory;
SELECT * FROM Inventory WHERE Stock >= 25;
SELECT * FROM Inventory ORDER BY Stock DESC;

SELECT * FROM Orders;
SELECT DISTINCT OrderStatus FROM Orders;
SELECT * FROM Orders WHERE TotalAmt >= 1000;
SELECT * FROM Orders ORDER BY CustomerName ASC;

SELECT * FROM Order_Details;
SELECT DISTINCT UnitPrice FROM Order_Details;
SELECT * FROM Order_Details WHERE Qty >= 2;
SELECT * FROM Order_Details ORDER BY UnitPrice DESC;

SELECT * FROM Payment;
SELECT DISTINCT PaymentMode FROM Payment;
SELECT * FROM Payment WHERE PaymentAmount > 600;
SELECT * FROM Payment ORDER BY PaymentAmount DESC;

SELECT * FROM Review;
SELECT DISTINCT CustomerName FROM Review;
SELECT * FROM Review WHERE ReviewText LIKE '%product%';
SELECT * FROM Review ORDER BY ReviewDate DESC;

SELECT * FROM Rating;
SELECT DISTINCT Rating FROM Rating;
SELECT * FROM Rating WHERE Rating < 5;
SELECT * FROM Rating ORDER BY Rating DESC;
