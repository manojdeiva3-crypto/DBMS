USE GROOMKART;

CREATE TABLE Payment
(
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentMode VARCHAR(20),
    PaymentDate DATE,
    PaymentAmount DECIMAL(10,2),
    PaymentStatus VARCHAR(20),
    FOREIGN KEY (OrderID)
    REFERENCES Orders(OrderID)
);

INSERT INTO Payment VALUES
(601, 401, 'UPI', '2026-09-01', 1000, 'SUCCESSFUL'),
(602, 402, 'CARD', '2026-09-02', 550, 'SUCCESSFUL'),
(603, 403, 'CASH', '2026-09-03', 1050, 'FAILED'),
(604, 404, 'UPI', '2026-09-04', 1400, 'SUCCESSFUL'),
(605, 405, 'CARD', '2026-09-05', 500, 'SUCCESSFUL');

SELECT * FROM Payment;

UPDATE Payment
SET PaymentStatus = 'SUCCESSFUL'
WHERE PaymentID = 603;

SELECT * FROM Payment
WHERE PaymentStatus = 'SUCCESSFUL';

SELECT * FROM Payment
WHERE PaymentStatus = 'FAILED';

SELECT * FROM Payment
WHERE PaymentMode = 'UPI';

SELECT * FROM Payment
WHERE PaymentMode = 'CARD';

SELECT * FROM Payment
WHERE PaymentMode = 'CASH';

SELECT PaymentMode, COUNT(*) AS NoOfTransactions
FROM Payment
GROUP BY PaymentMode;

SELECT PaymentMode, SUM(PaymentAmount) AS TotalAmountReceived
FROM Payment
WHERE PaymentStatus = 'SUCCESSFUL'
GROUP BY PaymentMode;